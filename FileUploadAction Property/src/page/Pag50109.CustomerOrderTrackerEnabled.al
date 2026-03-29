page 50109 "Customer Order Tracker Enabled"
{
    PageType = List;
    SourceTable = "Sales Header";
    ApplicationArea = All;
    UsageCategory = Lists;

    AnalysisModeEnabled = True;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
            }
        }
    }
    actions
    {
        area(Processing)
        {
            fileUploadAction(UploadDocument)
            {
                Caption = 'Upload Document';

                trigger OnAction(Files: List of [FileUpload])
                var
                    File: FileUpload;
                    InS: InStream;
                begin
                    foreach File in Files do begin
                        File.CreateInStream(InS);
                        Message('Uploaded file: %1', File.FileName);
                        // Process file stream here
                    end;
                end;
            }
        }
    }
    var
        UploadFile: File;
}