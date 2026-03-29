page 50105 "KR Import Demo List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "KR Import Demo";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.") { }
                field(Description; Rec.Description) { }
                field("Unit Cost"; Rec."Unit Cost") { }
                field(Blocked; Rec.Blocked) { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ImportWithAutoUpdate)
            {
                Caption = 'Import Prices (AutoUpdate)';
                Image = Import;
                ApplicationArea = All;

                ToolTip =
                  'Imports partial data and updates only fields present in the file.';

                trigger OnAction()
                begin
                    XmlPort.Run(
                        XmlPort::"KR Demo Import AutoUpdate",
                        false,
                        true);
                end;
            }

            action(ImportWithAutoReplace)
            {
                Caption = 'Import Prices (AutoReplace)';
                Image = Import;
                ApplicationArea = All;

                ToolTip =
                  'Replaces entire record. Missing fields are reset.';

                trigger OnAction()
                begin
                    XmlPort.Run(
                        XmlPort::"KR Demo Import AutoReplace",
                        false,
                        true);
                end;
            }
        }
    }
}