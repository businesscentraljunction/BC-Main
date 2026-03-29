pageextension 50110 CustomerCardExte extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group("Customer Categories")
            {
                Caption = 'Customer Categories';

                InstructionalText = 'Provide the customer category information required for proper classification.';

                field("Customer Category"; Rec."Customer Category")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    BlankZero = true;
                }

                field("Customer Fix Category"; Rec."Customer Fix Category")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                    InstructionalText = 'Enter the fixed category assigned to this customer.';
                    Style = Standard;
                }

                field("Customer Option Category"; Rec."Customer Option Category")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    BlankZero = true;
                }

                field("Customer Category Integer"; Rec."Customer Category Integer")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    BlankZero = true;
                }
            }
        }
    }
}