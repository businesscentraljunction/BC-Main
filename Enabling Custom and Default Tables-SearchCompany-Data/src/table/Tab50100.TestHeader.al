table 50100 "Test Header"
{
    Caption = 'Test Header';
    DataClassification = CustomerContent;
    LookupPageId = "Test headers";

    fields
    {
        field(1; No; Integer)
        {
            Caption = 'No';
        }
        field(2; Name; Code[20])
        {
            Caption = 'Name';
        }
        field(3; "Type"; Code[10])
        {
            Caption = 'Type';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}