pageextension 50113 "Customer Card CharAllowed Ext" extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group("CharAllowed Demos")
            {
                Caption = 'CharAllowed Demos';

                field("CA Uppercase Only"; Rec."CA Uppercase Only")
                {
                    ApplicationArea = All;
                    ToolTip = 'Allows only uppercase letters A-Z via UI.';
                }

                field("CA Any Letters (Blank)"; Rec."CA Any Letters (Blank)")
                {
                    ApplicationArea = All;
                    ToolTip = 'CharAllowed not set (blank), so UI does not restrict characters.';
                }

                field("CA Multi Range (a-d,m-p,z)"; Rec."CA Multi Range (a-d,m-p,z)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Allows only a-d, m-p, and z via UI.';
                }

                field("CA Single Char Only (X)"; Rec."CA Single Char Only (X)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Allows only the character X via UI.';
                }
            }
        }
    }
}