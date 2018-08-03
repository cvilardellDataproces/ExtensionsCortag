pageextension 50100 "Nuevos campos Productos" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(InventoryGrp) 
        {
            field(Ancho;Ancho)
            {
                ApplicationArea = All;
            }
            field(Longitud;Longitud)
            {
                ApplicationArea = All;
            }
            field(Espesor;Espesor)
            {
                ApplicationArea = All;
            }
            field(Peso;Peso)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here 
        addlast(Action190) 
        {
            group(AñadirCampos)
            {
                Caption = 'Añadir valores';
                Action(AñadirValores)
                {
                    ApplicationArea = All;
                    Caption = 'Añadir valores tablas estándares';
                    RunObject = codeunit "Afegeix camps taules estandard";
                }
           }
        }
    }
    
    var
        myInt : Integer;
}
pageextension 50101 "Nuevos campos Empresa" extends "Company Information"
{
    layout
    {
        // Add changes to page layout here
        addlast(General) 
        {
            field(RegistroMercantil;RegistroMercantil)
            {
                ApplicationArea = All;
            }
        }
    }
}
pageextension 50102 "Nuevos campos Sales Quote" extends "Sales Quote"
{
    layout
    {
        // Add changes to page layout here
        addafter(Status) 
        {
            field("Posibilidad de éxito";"Posibilidad de éxito")
            {
                ApplicationArea = All;
            }
        }
    }
}
pageextension 50103 "Nuevos campos Sales Order" extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
        addafter("Package Tracking No.")
        {
            field("Nº Bultos";"Nº Bultos")
            {
                ApplicationArea = All;
            }
            field("Peso";"Peso")
            {
                ApplicationArea = All;
            }
        }
    }
}
pageextension 50104 "Nuevos campos PostSalesShip" extends "Posted Sales Shipment"
{
    layout
    {
        // Add changes to page layout here
        addafter("Package Tracking No.")
        {
            field("Nº Bultos";"Nº Bultos")
            {
                ApplicationArea = All;
            }
            field("Peso";"Peso")
            {
                ApplicationArea = All;
            }
        }
    }
}