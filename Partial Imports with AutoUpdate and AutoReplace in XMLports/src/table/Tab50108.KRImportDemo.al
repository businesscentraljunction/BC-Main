table 50108 "KR Import Demo"
{
    DataClassification = CustomerContent;
    LookupPageId = "KR Import Demo List";

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Unit Cost"; Decimal)
        {
            DataClassification = CustomerContent;
        }

        field(4; Blocked; Boolean)
        {
            DataClassification = CustomerContent;
            InitValue = false; // default = No
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}