page 50103 "KR Contact Demo List"
{
    PageType = List;
    SourceTable = "KR Contact Demo";
    ApplicationArea = All;
    Caption = 'KR Contact Demo List';
    UsageCategory = Lists;
    CardPageId = "KR Contact Demo Card";
    SourceTableView = sorting("Entry No.") order(Ascending);

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Website"; Rec."Website")
                {
                    ApplicationArea = All;
                }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

