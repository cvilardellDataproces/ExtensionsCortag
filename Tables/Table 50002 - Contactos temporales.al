table 50002 "Contactos temporales"
{

    fields
    {
        field(1;No;Code[10])
        {
        }
        field(2;Cliente;Text[60])
        {
        }
        field(3;"Dirección";Text[90])
        {
        }
        field(4;CP;Code[10])
        {
        }
        field(5;Localidad;Text[60])
        {
        }
        field(6;Provincia;Text[60])
        {
        }
        field(7;Telefono;Code[30])
        {
        }
        field(8;Email;Code[90])
        {
        }
        field(9;Contacto;Text[90])
        {
        }
        field(10;Rubi;Text[60])
        {
            ValuesAllowed = 'No;Yes';
        }
        field(11;Ceramica;Text[60])
        {
        }
        field(12;"Area";Text[80])
        {
        }
        field(13;Comentario;Text[240])
        {
        }
        field(5051;"Company No.";Code[20])
        {
            CaptionML = ENU='Company No.',
                        ESP='Nº empresa';
            TableRelation = Contact WHERE (Type=CONST(Company));

            trigger OnValidate();
            var
                Opp : Record "Opportunity";
                OppEntry : Record "Opportunity Entry";
                Todo : Record "To-do";
                InteractLogEntry : Record "Interaction Log Entry";
                SegLine : Record "Segment Line";
                SalesHeader : Record "Sales Header";
            begin
            end;
        }
    }

    keys
    {
        key(Key1;No)
        {
        }
    }

    fieldgroups
    {
    }
}

