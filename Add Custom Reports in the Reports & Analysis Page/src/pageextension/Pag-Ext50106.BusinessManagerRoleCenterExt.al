pageextension 50106 "BusinessManagerRoleCenterExt" extends "Business Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
    }
    actions
    {
        addlast(sections)
        {
            group("Customer Report")
            {
                Caption = 'Customer Report';
                Image = Report;
                action("Customer - List")
                {
                    ApplicationArea = All;
                    Caption = 'Customer - List';
                    Image = New;
                    RunObject = Report "Customer - List";
                }
                action("Customer - Top 10 List")
                {
                    ApplicationArea = All;
                    Caption = 'Customer - Top 10 List';
                    Image = New;
                    RunObject = Report "Customer - Top 10 List";
                }
            }
        }
    }
}