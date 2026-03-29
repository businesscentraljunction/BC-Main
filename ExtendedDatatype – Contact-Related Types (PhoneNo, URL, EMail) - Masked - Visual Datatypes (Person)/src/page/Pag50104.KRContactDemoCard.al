page 50104 "KR Contact Demo Card"
{
    PageType = Card;
    SourceTable = "KR Contact Demo";
    ApplicationArea = All;
    Caption = 'KR Contact Demo Card';
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    // Editable = false; // keep PK read-only on card
                }
            }
            group(Contact)
            {
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    // Set Editable = false to show as hyperlink in view mode
                    // Editable = false;
                }
                field("Website"; Rec."Website")
                {
                    ApplicationArea = All;
                    // Editable = false; // becomes clickable link
                }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                    // Editable = false; // becomes mailto link
                }
            }
            group("Security")
            {
                field("API Key"; Rec."API Key")
                {
                    ApplicationArea = All;
                }
            }

            group("Profile")
            {
                field("Profile Image"; Rec."Profile Image")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}