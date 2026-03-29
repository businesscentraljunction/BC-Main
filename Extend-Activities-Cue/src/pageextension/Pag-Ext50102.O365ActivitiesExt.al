pageextension 50102 "O365 Activities Ext" extends "O365 Activities"

{

    layout

    {

        addafter("Overdue Purch. Invoice Amount")

        {

            field("Open Vendor Invoices Sum"; Rec."Open Vendor Invoices Sum")

            {

                ApplicationArea = All;

                ToolTip = 'Summation of AP/outstanding vendor invoices';

                trigger OnDrillDown()

                var

                    myInt: Integer;

                begin

                    rec.DrillDownOverduePurchaseInvoiceAmount();

                end;

            }

        }

    }

    trigger OnAfterGetRecord()



    begin

        Rec."Open Vendor Invoices Sum" := Rec.OpenVendorInvoicesSum();

        rec.Modify();

    end;

}