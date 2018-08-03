table 50001 "Cloud Reseller Pricelist"
{

    fields
    {
        field(1;"Offer ID";Text[36])
        {
        }
        field(2;"Fecha registro";Date)
        {
        }
        field(3;"Vendor Code";Code[20])
        {
        }
        field(4;"Offer Display Name";Text[250])
        {
        }
        field(5;"License Agreement Type";Text[30])
        {
        }
        field(6;"Purchase Unit";Text[30])
        {
        }
        field(7;"Secondary License Type";Code[20])
        {
        }
        field(8;"End Customer Type";Code[25])
        {
        }
        field(9;PVD;Decimal)
        {
        }
        field(10;"ERP Price";Decimal)
        {
        }
        field(11;"Link Image";Text[250])
        {
        }
        field(50000;"Item No.";Code[20])
        {
        }
    }

    keys
    {
        key(Key1;"Offer ID","Fecha registro","Vendor Code","Offer Display Name")
        {
        }
    }

    fieldgroups
    {
    }
}

