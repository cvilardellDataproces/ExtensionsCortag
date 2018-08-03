table 70002 "SII Setup Integration"
{
    // version SII


    fields
    {
        field(1;"Code";Code[10])
        {
        }
        field(2;"Customer Receivables Account";Code[20])
        {
            TableRelation = "G/L Account"."No.";
        }
        field(3;"Vendor Payables Account";Code[20])
        {
            TableRelation = "G/L Account"."No.";
        }
        field(4;"Sales Account";Code[20])
        {
            TableRelation = "G/L Account"."No.";
        }
        field(5;"Purchase Account";Code[20])
        {
            TableRelation = "G/L Account"."No.";
        }
        field(6;"Gen. Prod. Posting Group";Code[20])
        {
            TableRelation = "Gen. Product Posting Group";
        }
    }

    keys
    {
        key(Key1;"Code")
        {
        }
    }

    fieldgroups
    {
    }
}

