xmlport 50100 "KR Demo Import AutoReplace"
{
    Direction = Import;
    Format = VariableText;

    FieldSeparator = ',';
    FieldDelimiter = '"';
    RecordSeparator = '<NewLine>';

    schema
    {
        textelement(Root)
        {
            tableelement(Demo; "KR Import Demo")
            {
                AutoUpdate = false;
                AutoReplace = true;   // resets fields not present in file

                fieldelement(No; Demo."No.") { }
                fieldelement(UnitCost; Demo."Unit Cost") { }
            }
        }
    }
}