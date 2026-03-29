tableextension 50106 "Customer CharAllowed Ext" extends Customer
{
    fields
    {
        // Scenario 1: Only uppercase A-Z
        field(50110; "CA Uppercase Only"; Text[20])
        {
            Caption = 'CharAllowed: Uppercase Only (A-Z)';
            CharAllowed = 'AZ';
            DataClassification = CustomerContent;
        }

        // Scenario 2: Allow uppercase + lowercase (leave blank)
        field(50111; "CA Any Letters (Blank)"; Text[50])
        {
            Caption = 'CharAllowed: Blank (No Restriction)';
            // CharAllowed intentionally not set (blank) => no UI restriction
            DataClassification = CustomerContent;
        }

        // Scenario 3: Multiple ranges a-d, m-p, z only
        field(50112; "CA Multi Range (a-d,m-p,z)"; Text[50])
        {
            Caption = 'CharAllowed: a-d, m-p, z';
            CharAllowed = 'admpzz';
            DataClassification = CustomerContent;
        }

        // Scenario 4: Single character only (X)
        field(50113; "CA Single Char Only (X)"; Text[10])
        {
            Caption = 'CharAllowed: Only X';
            CharAllowed = 'XX';
            DataClassification = CustomerContent;
        }
    }
}