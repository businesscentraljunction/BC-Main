table 50101 "KR Contact Demo"
{
    Caption = 'KR Contact Demo';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            // Typically PK is populated by No. Series or manual input
        }
        field(2; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
            ExtendedDatatype = PhoneNo;
        }
        field(3; "Website"; Text[250])
        {
            Caption = 'Website';
            DataClassification = CustomerContent;
            ExtendedDatatype = URL;
        }
        field(4; "Email"; Text[100])
        {
            Caption = 'Email';
            DataClassification = CustomerContent;
            ExtendedDatatype = EMail;
        }
        // 🔒 Masked → Hide sensitive data (UI only)
        field(5; "API Key"; Text[100])
        {
            Caption = 'API Key';
            ExtendedDatatype = Masked;
        }

        // 👤 Person → Display image as circular avatar
        field(6; "Profile Image"; Media)
        {
            Caption = 'Profile Image';
            ExtendedDatatype = Person;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}