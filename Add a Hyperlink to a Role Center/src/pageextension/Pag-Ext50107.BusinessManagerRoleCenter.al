pageextension 50107 BusinessManagerRoleCenter extends "Business Manager Role Center"
{
    actions
    {
        addbefore("Sales Quote")
        {
            action(AddHyperlink)
            {
                Caption = 'URL Display';
                ApplicationArea = All;
                Image = link;
                RunObject = codeunit URLDisplay;
            }
        }
    }
}