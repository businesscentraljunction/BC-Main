pageextension 50108 ItemExtension extends "Item Card"

{

    layout

    {

        addafter(Blocked)

        {

            field("Block Reason"; Rec."Block Reason")

            {

                ApplicationArea = All;

                Caption = 'Block Reason';

                ToolTip = 'Reason for blocking the item';

            }

        }

    }

}