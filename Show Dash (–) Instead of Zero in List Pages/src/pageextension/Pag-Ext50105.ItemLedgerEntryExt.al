pageextension 50105 "ItemLedgerEntryExt" extends "Item Ledger Entries"
{
    layout
    {
        addbefore("Lot No.")
        {
            field(RKTest; RKTest)
            {
                ApplicationArea = All;
                Editable = false;
                AutoFormatType = 1;
                BlankZero = true;
                Style = Standard;

                trigger OnDrillDown()
                begin
                    Message('No lookup on formula');
                end;
            }
        }
    }

    var
        RKTest: Decimal;

    trigger OnAfterGetRecord()
    begin
        RKTest := Rec."Cost Amount (Actual)" - 0;
    end;
}
