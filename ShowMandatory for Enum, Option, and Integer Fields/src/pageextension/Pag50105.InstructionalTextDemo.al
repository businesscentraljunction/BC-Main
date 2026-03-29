pageextension 50112 CustomerCardExt2 extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("BCJ Customer Category"; Rec."BCJ Customer Category")
            {
                ApplicationArea = All;
                ShowMandatory = true;
                Editable = true;
                BlankZero = true;
            }
            field("BCJ Customer Fix Category"; Rec."BCJ Customer Fix Category")
            {
                ApplicationArea = All;
                ShowMandatory = true;
            }
            field("BCJ Customer Option Category"; Rec."BCJ Customer Option Category")
            {
                ApplicationArea = All;
                ShowMandatory = (Rec."BCJ Customer Category" = Rec."BCJ Customer Category"::" ");
                BlankZero = true;
            }
            field("BCJ Customer Category Integer"; Rec."BCJ Customer Category Integer")
            {
                ApplicationArea = All;
                ShowMandatory = true;
                BlankZero = true;
            }
        }
    }
}