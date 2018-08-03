table 70003 "SII Declaration Line"
{
    // version NAVES10.00

    CaptionML = ENU='SII Declaration Line',
                ESP='SII Declaration Line';

    fields
    {
        field(1;Type;Option)
        {
            CaptionML = ENU='Type',
                        ESP='Tipo';
            OptionCaptionML = ENU=' ,Purchase,Sale,Settlement',
                              ESP=' ,Compra,Venta,Liquidación';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(2;"No. mov.";Integer)
        {
            CaptionML = ENU='Key',
                        ESP='No. mov.';
        }
        field(3;"Fiscal Year";Text[8])
        {
            CaptionML = ENU='Fiscal Year',
                        ESP='Ejercicio';
        }
        field(4;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ESP='Tipo documento';
            OptionCaption = '" ,Pago,Factura,Abono,Docs. interés,Recordatorio,Reembolso,,,,,,,,,,,,,,,Efecto"';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund,,,,,,,,,,,,,,,Bill;
        }
        field(5;"Document No.";Text[40])
        {
            CaptionML = ENU='Document No.',
                        ESP='Nº documento';
        }
        field(6;"VAT Document No.";Text[18])
        {
            CaptionML = ENU='VAT Document No.',
                        ESP='N.º documento IVA';
        }
        field(7;"VAT Registration No.";Text[20])
        {
            CaptionML = ENU='VAT Registration No.',
                        ESP='CIF/NIF ';
        }
        field(8;"VAT Number";Text[20])
        {
            CaptionML = ENU='VAT Number',
                        ESP='CIF/NIF  ';
        }
        field(9;"Customer/Vendor No.";Text[20])
        {
            CaptionML = ENU='Customer/Vendor No.',
                        ESP='Nº Cliente/Proveedor';
        }
        field(10;"Customer/Vendor Name";Text[50])
        {
            CaptionML = ENU='Customer/Vendor Name',
                        ESP='Nombre Cliente/Proveedor';
        }
        field(11;"Country Code";Text[10])
        {
            CaptionML = ENU='Country Code',
                        ESP='Código país';
        }
        field(14;"Document Date";Date)
        {
            CaptionML = ENU='Document Date',
                        ESP='Fecha emisión documento';
        }
        field(38;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ESP='Fecha registro';
        }
        field(60;Base;Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("VAT Entry".Base WHERE (Type=FIELD(Type),
                                                      "Document Type"=FIELD("Document Type"),
                                                      "Document No."=FIELD("Document No."),
                                                      "Posting Date"=FIELD("Posting Date")));
            CaptionML = ENU='Amount',
                        ESP='Base';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61;Quote;Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("VAT Entry".Amount WHERE (Type=FIELD(Type),
                                                        "Document Type"=FIELD("Document Type"),
                                                        "Document No."=FIELD("Document No."),
                                                        "Posting Date"=FIELD("Posting Date")));
            CaptionML = ENU='Amount',
                        ESP='Quota';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1;Type,"No. mov.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        Text001 : TextConst ENU='You cannot select a blank option for operation code R. Select another option for the field.',ESP='No puede seleccionar una opción en blanco para el código de operación R. Seleccione otra opción para el campo.';
        Text002 : TextConst ENU='You cannot insert property tax account no. for selected property location.',ESP='No puede insertar el n.º de cuenta de impuestos de propiedad para la ubicación de propiedad seleccionada.';
}

