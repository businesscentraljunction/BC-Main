report 50110 "Vendor Time Format Demo Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    Caption = 'Vendor Time Format Demo Report';

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(VendorNo; "No.") { }
            column(VendorLastModifiedDateTime; "Last Modified Date Time") { }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'VendorTimeFormatDemo.rdl';
        }
    }
}