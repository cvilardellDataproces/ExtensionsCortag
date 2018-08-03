page 50001 "Cloud Reseller Pricelist"
{
    PageType = List;
    SourceTable = "Cloud Reseller Pricelist";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Offer ID";"Offer ID")
                {
                }
                field("Fecha registro";"Fecha registro")
                {
                }
                field("Vendor Code";"Vendor Code")
                {
                }
                field("Offer Display Name";"Offer Display Name")
                {
                }
                field("License Agreement Type";"License Agreement Type")
                {
                }
                field("Purchase Unit";"Purchase Unit")
                {
                }
                field("Secondary License Type";"Secondary License Type")
                {
                }
                field("End Customer Type";"End Customer Type")
                {
                }
                field(PVD;PVD)
                {
                }
                field("ERP Price";"ERP Price")
                {
                }
                field("Item No.";"Item No.")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Importar)
            {
                Image = Import;
                //CVP
                //RunObject = XMLport ;
            }
        }
    }
}

