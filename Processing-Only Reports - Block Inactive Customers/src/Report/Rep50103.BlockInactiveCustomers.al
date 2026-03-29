report 50103 BlockInactiveCustomers

{

    Caption = 'Block Inactive Customers';

    UsageCategory = ReportsAndAnalysis;

    ApplicationArea = All;

    ProcessingOnly = true;



    dataset

    {

        dataitem(Customer; Customer)

        {

            trigger OnAfterGetRecord()

            var

                SalesInvHeader: Record "Sales Invoice Header";

                OneYearAgo: Date;

            begin

                OneYearAgo := CalcDate('-1Y', Today);



                SalesInvHeader.Reset();

                SalesInvHeader.SetRange("Bill-to Customer No.", Customer."No.");

                SalesInvHeader.SetFilter("Posting Date", '>%1', OneYearAgo);



                if not SalesInvHeader.FindFirst() then begin

                    Customer.Blocked := Customer.Blocked::"All";

                    Customer.Modify();

                    BlockedCount += 1;

                end;

            end;

        }

    }



    trigger OnInitReport()

    begin

        BlockedCount := 0;

    end;



    trigger OnPostReport()

    begin

        Message('%1 customers were blocked due to inactivity.', BlockedCount);

    end;



    var

        BlockedCount: Integer;

}