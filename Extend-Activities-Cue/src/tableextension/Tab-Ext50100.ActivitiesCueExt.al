tableextension 50100 "Activities Cue Ext" extends "Activities Cue"

{

    fields

    {

        field(50200; "Open Vendor Invoices Sum"; Decimal)

        {

            Caption = 'Open Vendor Invoices Sum';

            DataClassification = ToBeClassified;

            AutoFormatExpression = GetAmountFormat();

            AutoFormatType = 11;

            DecimalPlaces = 0 : 0;

        }

    }

    procedure OpenVendorInvoicesSum() Amount: Decimal

    var

        VendorLedgerEntry: Record "Vendor Ledger Entry";

        Openvendoramount: Query "Open vendor amount";

    begin

        Openvendoramount.SetRange(DocumentTypeFilter, VendorLedgerEntry."Document Type"::Invoice);

        Openvendoramount.SetFilter(Remaining_Amt___LCY_LCY, '<>0');

        Openvendoramount.SetFilter(open, 'Yes');

        //Openvendoramount.SetFilter(Currency_Code, 'USD');

        Openvendoramount.SetFilter(Applies_to_ID, ' ');

        Openvendoramount.Open();

        if Openvendoramount.Read() then
            Amount := Amount + Openvendoramount.Remaining_Amt___LCY_LCY;

        exit(-Amount);

        Openvendoramount.Close();

    end;



    procedure DrillDownOverduePurchaseInvoiceAmount()

    var

        [SecurityFiltering(SecurityFilter::Filtered)]

        VendorLedgerEntry: Record "Vendor Ledger Entry";

    begin

        VendorLedgerEntry.SetFilter("Document Type", 'Invoice');

        VendorLedgerEntry.SetFilter("Remaining Amt. (LCY)", '<>0');

        VendorLedgerEntry.SetFilter(open, 'Yes');

        VendorLedgerEntry.SetFilter("Currency Code", 'USD');

        VendorLedgerEntry.SetFilter("Applies-to ID", '');

        VendorLedgerEntry.Ascending := true;

        PAGE.Run(PAGE::"Vendor Ledger Entries", VendorLedgerEntry);

    end;

}