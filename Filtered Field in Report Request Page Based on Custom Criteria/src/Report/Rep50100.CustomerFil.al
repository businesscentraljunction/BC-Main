report 50100 CustomerFil

{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer Report';
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(ColumnName; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Address; Address)
            {

            }
            column(Location_Code; "Location Code")
            {
            }
            trigger OnPreDataItem()
            begin
                if LocationFilter <> '' then
                    SETRANGE("Location Code", LocationFilter)
                else
                    CLEAR("Location Code");
            end;
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Filter; LocationFilter)
                    {
                        ApplicationArea = All;

                        TableRelation = Location.Code WHERE(Code = FILTER('ABC*'));
                    }
                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mySpreadsheet.rdl';
        }
    }

    var
        LocationFilter: text;
}
