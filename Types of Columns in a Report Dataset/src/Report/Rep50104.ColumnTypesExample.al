report 50104 "Column Types Example"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Customer; Customer)
        {
            // 📄 Column from table field
            column(CustomerName; Name) { }

            // 📄 Another table field
            column(City; City) { }

            // 📝 Column using a variable
            column(Greeting; GreetingText) { }

            // 🏷️ Static text / caption
            column(ReportTitle; 'Customer Report') { }
        }

        dataitem(SalesLine; "Sales Line")
        {
            // ➕ Expression (calculated column)
            column(TotalAmount; "Quantity" * "Unit Price") { }
        }
    }

    trigger OnPreReport()
    begin
        // Assign value to variable column
        GreetingText := 'Hello, Customer!';
    end;

    var
        GreetingText: Text[50];
}