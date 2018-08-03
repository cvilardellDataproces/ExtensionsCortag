table 70004 "Post Document SII"
{
    // version NAVES10.00

    CaptionML = ENU='SII Declaration Line',
                ESP='Post Document SII';

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
        field(4;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ESP='Tipo documento';
            OptionCaption = ', Factura,Abono';
            OptionMembers = ,Invoice,"Credit Memo";
        }
        field(5;"Document No.";Text[40])
        {
            CaptionML = ENU='Document No.',
                        ESP='Nº documento';
        }
        field(38;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ESP='Fecha registro';
        }
    }

    keys
    {
        key(Key1;Type,"Document Type","Document No.")
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

