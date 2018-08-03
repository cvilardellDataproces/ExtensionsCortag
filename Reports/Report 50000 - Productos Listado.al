report 50000 "Productos Listado"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Productos Listado.rdlc';

    dataset
    {
        dataitem(Item;Item)
        {
            column(Item_No;Item."No.")
            {
            }
            column(Item_Description;Item.Description)
            {
            }
            column(Item_BaseIoM;Item."Base Unit of Measure")
            {
            }
            column(Item_Inventory;Item.Inventory)
            {
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }
}

