page 50100 "Test headers"
{
    ApplicationArea = All;
    Caption = 'Test headers';
    PageType = List;
    CardPageId = "Test header";
    SourceTable = "Test Header";
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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