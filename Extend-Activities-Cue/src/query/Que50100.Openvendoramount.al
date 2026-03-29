query 50100 "Open vendor amount"

{

    QueryType = Normal;



    elements

    {

        dataitem(VendorLedgerEntry; "Vendor Ledger Entry")

        {

            column(Remaining_Amt___LCY_LCY; "Remaining Amt. (LCY)")

            {

                Method = Sum;

            }

            filter(DocumentTypeFilter; "Document Type")

            {

            }

            filter(Applies_to_ID; "Applies-to ID")

            {

            }

            filter(Open; "Open")

            {

            }

        }

    }

}