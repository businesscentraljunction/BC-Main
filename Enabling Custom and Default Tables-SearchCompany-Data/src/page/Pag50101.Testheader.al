page 50101 "Test header"
{
    ApplicationArea = All;
    Caption = 'Test header';
    PageType = Card;
    SourceTable = "Test Header";
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(No; Rec.No)
                {
                }
                field(Name; Rec.Name)
                {

                }
                field("Type"; Rec."Type")
                {

                }
            }
        }
    }
}