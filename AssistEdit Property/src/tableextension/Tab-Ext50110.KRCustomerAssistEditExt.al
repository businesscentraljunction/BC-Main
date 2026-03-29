tableextension 50110 "KR Customer AssistEdit Ext" extends Customer
{
    fields
    {
        field(50119; "KR Reference No."; Code[20])
        {
            Caption = 'KR Reference No.';
            DataClassification = CustomerContent;
        }
    }
}