tableextension 50105 CustomerExt2 extends "Customer"
{
    fields
    {
        field(50100; "BCJ Customer Category"; Enum "Customer Category")
        {
            Caption = 'Customer Category';
            DataClassification = CustomerContent;
        }
        field(50101; "BCJ Customer Fix Category"; Text[100])
        {
            Caption = 'Customer Fix Category';
            DataClassification = CustomerContent;
        }
        field(50102; "BCJ Customer Option Category"; Option)
        {
            Caption = 'Customer Option Category';
            DataClassification = CustomerContent;
            OptionMembers = " ","Option1","Option2","Option3";
        }
        field(50103; "BCJ Customer Category Integer"; Integer)
        {
            Caption = 'Customer Category Integer';
            DataClassification = CustomerContent;
        }
    }

}