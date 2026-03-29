pageextension 50114 "File Upload Demo Ext" extends "Customer Card"
{
    actions
    {
        addlast(Processing)
        {
            fileuploadaction(UploadMultipleFiles)
            {
                Caption = 'Upload Multiple Files';
                ApplicationArea = All;
                AllowMultipleFiles = true;
                AllowedFileExtensions = '.jpg', '.jpeg', '.png';

                trigger OnAction(Files: List of [FileUpload])
                var
                    F: FileUpload;
                    InS: InStream;
                    RecUpload: Record "KR Import Demo"; // change to your upload table
                begin
                    foreach F in Files do begin
                        F.CreateInStream(InS);

                        RecUpload.Init();
                        RecUpload.Description := F.FileName; // example
                                                             // RecUpload."File Content".ImportStream(InS, F.FileName); // if you have a Blob
                        RecUpload.Insert();
                    end;
                end;
            }
        }
    }
}
