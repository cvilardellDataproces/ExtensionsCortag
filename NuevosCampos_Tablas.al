// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!
tableextension 50100 "Campos Nuevos" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50000;Ancho;Decimal)
        {
            CaptionML=ENU='Ancho',ESP='Ancho';
            trigger OnValidate();
            begin
                CalcularCosteProduccion;
            end;

        }
        field(50001;Longitud;Decimal)
        {
            CaptionML=ENU='Longitud',ESP='Longitud';
            trigger OnValidate();
            begin
                CalcularCosteProduccion;
            end;
        }
        field(50002;Espesor;Decimal)
        {
            CaptionML=ENU='Espesor',ESP='Espesor';
            trigger OnValidate();
            begin
                CalcularCosteProduccion;
            end;
        }
        field(50003;Peso;Decimal)
        {
            CaptionML=ENU='Peso',ESP='Peso';
            trigger OnValidate();
            begin
                CalcularCosteProduccion;
            end;
        }
        field(50004;"Coste Fabricación";Decimal)
        {
            CaptionML=ENU='Coste Fabricación',ESP='Coste Fabricación';
        }
    }
    procedure CalcularCosteProduccion();
    begin
        "Coste Fabricación" := (Longitud * 4) + Peso;
    end;

}
tableextension 50101 "Campos Nuevos 1" extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50000;"Cód. logo autorizados";Code[10])
        {
            CaptionML=ENU='Cód. logo autorizados',ESP='Cód. logo autorizados';
        }
        field(50001;"Nº Bultos";decimal)
        {
            CaptionML=ENU='Nº Bultos',ESP='Nº Bultos';
        }
        field(50002;Peso;Decimal)
        {
           CaptionML=ENU='Peso',ESP='Peso'; 
        }
        field(50053;"Posibilidad de éxito";Option)
        {
            OptionMembers = "0- Entre un 10% y en 25 %","1- Entre un 26% y el 50%","2- Entre el 51% y el 75%","3- Entre el 76 y el 95%","4- Más del 95%","5-100%";
        }
        field(50054;"Fecha prevista de cierre";Date)
        { 
        }
    }
}
tableextension 50102 "Nuevos Campos 2" extends "Company Information"
{
    fields
    {
        // Add changes to table fields here
        field(50000;RegistroMercantil;Text[250])
        {  
        }
    }
}
tableextension 50103 "Nuevos campos 3" extends "Sales Shipment Header"
{
    fields
    {
        // Add changes to table fields here
        field(50001;"Nº Bultos";Decimal)
        { 
        }
        field(50002;Peso;Decimal)
        {   
        }
    }
}    
tableextension 50104 "Nuevos Campos 4" extends "Payment Method"
{
    fields
    {
        // Add changes to table fields here
        field(50000;Transferencia;Boolean)
        {  
        }
    }
}
tableextension 50105 "Nuevos campos 5" extends "Activities Cue"
{
    fields
    {
        // Add changes to table fields here
        field(50000;"Ready to Invoice";Integer)
        {
            CaptionML=ENU='Ready to Invoice',ESP='Listos para facturar';
            FieldClass=FlowField;
            CalcFormula=Count("Sales Header" WHERE ("Document Type"=FILTER(Order),"Shipped Not Invoiced"=CONST(True)));
            Editable= false;
            AccessByPermission=table"Sales Shipment Header"=;
        }
    }
}
tableextension 50106 "Campos Nuevos 6"  extends "Service Item Line"
{
    fields
    {
        // Add changes to table fields here
        field(50000;"Lectura anterior";Decimal)
        {            
        }
        field(50001;"Lectura actual";Decimal)
        {            
        }
        field(50002;"Precio por unidad de lectura";Decimal)
        {            
        }
        field(50003;"Periodo de lectura";Text[250])
        {            
        }
        field(50004;"Cantidad ultimo periodo";decimal)
        {            
        }
    } 
}
    tableextension 50107 "Campos Nuevos 7"  extends "VAT Posting Setup"
{
    fields
    {
        // Add changes to table fields here
        field(70000;"VAT Id.";Integer)
        {            
        }
    }  
}
tableextension 50108 "Campos Nuevos 8"  extends "Service Line"
{
    fields
    {
        // Add changes to table fields here
        field(50000;"Lectura anterior";Decimal)
        {            
            trigger OnValidate();
            begin
                CalcularPasos;
            end;
        }
        field(50001;"Lectura actual";Decimal)
        {       
            trigger OnValidate();
            begin
                CalcularPasos;
            end;     
        }
        field(50002;"Precio por unidad de lectura";Decimal)
        {       
            trigger OnValidate();
            begin
                CalcularPasos;
            end;     
        }
        field(50003;"Periodo de lectura";Text[250])
        {            
        }
        field(50004;"Cantidad ultimo periodo";decimal)
        {            
        }
    } 
    procedure CalcularPasos();
    begin
        "Cantidad ultimo periodo" :="Lectura actual" - "Lectura anterior";
        IF "Cantidad ultimo periodo" > 0 THEN 
            VALIDATE(Quantity,"Cantidad ultimo periodo");
    end;
}
tableextension 50109 "Campos Nuevos 9"  extends "Service Contract Line"
{
    fields
    {
        // Add changes to table fields here
        field(50000;"Lectura anterior";Decimal)
        {            
        }
        field(50001;"Lectura actual";Decimal)
        {            
        }
        field(50002;"Precio por unidad";Decimal)
        {            
        }
        field(50003;"Periodo de lectura";Text[250])
        {            
        }
        field(50004;"Cantidad ultimo periodo";decimal)
        {            
        }
        field(50005;"Precio por unidad de lectura";Decimal)
        {            
        }
    } 
}
tableextension 50110 "Nuevos campos 10" extends "Sales Cue"
{
    fields
    {
        // Add changes to table fields here
        field(50000;"Ready to Invoice";Integer)
        {
            CaptionML=ENU='Ready to Invoice',ESP='Listos para facturar';
            FieldClass=FlowField;
            CalcFormula=Count("Sales Header" WHERE ("Document Type"=FILTER(Order),"Status"=FILTER(Released),"Completely Shipped"=CONST(true),"Shipment Date"=FIELD("Date Filter2"),"Responsibility Center"=FIELD("Responsibility Center Filter"),"Shipped Not Invoiced"=CONST(True)));
            Editable= false;
            AccessByPermission=table"Sales Shipment Header"=;
        }
    }
}
