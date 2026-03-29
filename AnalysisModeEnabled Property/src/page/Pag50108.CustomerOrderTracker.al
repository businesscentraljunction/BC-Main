page 50108 "Customer Order Tracker"
{
    PageType = List;
    SourceTable = "Sales Header";
    ApplicationArea = All;
    UsageCategory = Lists;

    AnalysisModeEnabled = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.") { }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name") { }
                field("Amount"; Rec.Amount) { }
            }
        }
    }
}