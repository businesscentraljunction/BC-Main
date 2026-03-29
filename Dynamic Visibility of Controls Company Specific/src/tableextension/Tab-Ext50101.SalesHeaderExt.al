tableextension 50101 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(50701; "Lease Status"; Code[20])
        {
            Caption = 'Lease Status';
            DataClassification = CustomerContent;
        }

        field(50702; "Lease Amount"; Decimal)
        {
            Caption = 'Lease Amount';
            DataClassification = CustomerContent;
        }

        field(50703; "RKD Proyecto"; Code[50])
        {
            Caption = 'RKD Proyecto';
            DataClassification = CustomerContent;
        }
    }
}