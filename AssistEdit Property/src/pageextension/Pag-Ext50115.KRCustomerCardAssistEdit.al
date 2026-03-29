pageextension 50115 "KR Customer Card AssistEdit" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("KR Reference No."; Rec."KR Reference No.")
            {
                ApplicationArea = All;
                ToolTip = 'Click AssistEdit (⋯) to generate a reference number.';
                AssistEdit = true;

                trigger OnAssistEdit()
                var
                    NewRef: Code[20];
                begin
                    NewRef := GenerateReferenceNo();

                    // Optional overwrite confirmation
                    if Rec."KR Reference No." <> '' then
                        if not Confirm('Reference No. already exists (%1). Overwrite?', false, Rec."KR Reference No.") then
                            exit;

                    Rec.Validate("KR Reference No.", NewRef);
                    Rec.Modify(true);
                end;
            }
        }
    }

    local procedure GenerateReferenceNo(): Code[20]
    var
        DtTxt: Text;
        RefTxt: Text;
    begin
        // Example: CUST-YYYYMMDD-HHMM  (fits Code[20])
        DtTxt := Format(CurrentDateTime(), 0, '<Year4><Month,2><Day,2>-<Hours24,2><Minutes,2>');
        RefTxt := 'CUST-' + DtTxt;
        exit(CopyStr(RefTxt, 1, 20));
    end;
}