tableextension 50102 SalesHeaderExt extends "Sales Header"

{

    trigger OnInsert()

    var

        TypeHelper: Codeunit "Type Helper";

        Crlf: Text[2];

        InputString: Text[2048];

        FormattedString: Text[2048];

        MaxLineLength: Integer;

        CurrentLine: Text[2048];

        CharIndex: Integer;

        OutS: OutStream;

    begin

        // Constants

        Crlf := TypeHelper.CRLFSeparator();

        MaxLineLength := 45; // Maximum characters per line

        // Input string

        InputString := 'Business Central is a comprehensive, cloud-based enterprise resource planning (ERP) solution that helps small and medium-sized businesses streamline operations, enhance customer experiences, improve financial visibility, and facilitate data-driven decisions for better organizational growth.';

        FormattedString := '';

        // Add line breaks

        CharIndex := 1;

        while CharIndex <= StrLen(InputString) do begin

            CurrentLine := CopyStr(InputString, CharIndex, MaxLineLength);

            FormattedString := FormattedString + CurrentLine + Crlf;

            CharIndex += MaxLineLength;

        end;

        // Clear and write to "Work Description"

        Clear("Work Description");

        "Work Description".CreateOutStream(OutS, TextEncoding::UTF8);

        OutS.WriteText(FormattedString);

    end;

}