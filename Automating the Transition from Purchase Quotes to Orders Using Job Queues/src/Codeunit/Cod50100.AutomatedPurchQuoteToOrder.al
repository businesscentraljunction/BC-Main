codeunit 50100 "AutomatedPurchQuoteToOrder"

{

    Subtype = Normal;

    trigger OnRun()

    var

        PurchQuoteToOrder: Codeunit "Purch.-Quote to Order";

        PurchHeader: Record "Purchase Header";

    begin

        // Get all open Purchase Quotes

        PurchHeader.RESET;

        PurchHeader.SETRANGE("Document Type", PurchHeader."Document Type"::Quote);

        PurchHeader.SETRANGE(Status, PurchHeader.Status::Released); // Only Released quotes



        // Loop through each open Purchase Quote and convert it to Order

        if PurchHeader.FINDSET THEN BEGIN

            REPEAT

                // Call the existing "Purch.-Quote to Order" codeunit to make the order

                PurchQuoteToOrder.RUN(PurchHeader);

            UNTIL PurchHeader.NEXT = 0;

        END

    end;

}