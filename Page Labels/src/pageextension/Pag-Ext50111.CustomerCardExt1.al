pageextension 50111 CustomerCardExt1 extends "Customer Card"
{
    layout
    {
        addlast(Payments)
        {
            label("Note:")
            {
                Caption = 'Note: Payment method code must be 30day or 60day to apply respective payment terms.';
                ApplicationArea = All;
                Style = Strong;
            }
        }
    }
}