tableextension 50103 CustomerExt extends Customer
{
    fields
    {
        field(50400; "Customer Category"; Integer)
        {
            Caption = 'Customer Category';
            DataClassification = CustomerContent;
        }

        field(50401; "Customer Fix Category"; Code[20])
        {
            Caption = 'Customer Fix Category';
            DataClassification = CustomerContent;
        }

        field(50402; "Customer Option Category"; Option)
        {
            Caption = 'Customer Option Category';
            OptionMembers = " ",Retail,Wholesale,Online,Direct;
            DataClassification = CustomerContent;
        }

        field(50403; "Customer Category Integer"; Integer)
        {
            Caption = 'Customer Category Integer';
            DataClassification = CustomerContent;
        }
    }
}