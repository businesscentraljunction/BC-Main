// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.BusinessCentralJunction;

using Microsoft.Sales.Customer;

pageextension 50100 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addlast(Content)
        {
            group("My Custom FastTab")
            {
                Caption = 'My Custom FastTab';

                field("My Field 1"; Rec."Name")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }

                field("My Field 2"; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }

                field("My Field 3"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                    Importance = Standard;
                }
                field("My Field 4"; Rec."Address")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field("My Field 5"; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
            }
        }
    }
}