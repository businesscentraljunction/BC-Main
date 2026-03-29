xmlport 50101 "KR Demo Import AutoUpdate"
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
                AutoUpdate = true;
                AutoReplace = false;

                fieldelement(No; Demo."No.") { }
                fieldelement(UnitCost; Demo."Unit Cost") { }
            }
        }
    }
}
