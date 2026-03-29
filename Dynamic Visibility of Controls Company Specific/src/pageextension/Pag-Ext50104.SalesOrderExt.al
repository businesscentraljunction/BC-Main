pageextension 50104 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter(General)
        {
            group("Lease")
            {
                ShowCaption = false;
                Visible = isVisible;

                field("Lease Status"; Rec."Lease Status")
                {
                    ApplicationArea = All;
                    Caption = 'Lease Status';
                }

                field("Lease Amount"; Rec."Lease Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Lease Amount';
                }
                field("RKD Proyecto"; Rec."RKD Proyecto")
                {
                    ApplicationArea = All;
                    Caption = 'RKD Proyecto';
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        CompanySpecificVisibility();
    end;

    local procedure CompanySpecificVisibility()
    var
        companyinformation: Record "Company Information";
    begin
        if companyInformation.Get() then
            case companyinformation.Name of
                'CRONUS IN':
                    isVisible := true;
                'My Company':
                    isVisible := false;
                'My Company US':
                    isVisible := false;
            end;
    end;

    var
        isVisible: Boolean;
}