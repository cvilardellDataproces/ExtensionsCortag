table 50003 "Periodes SII"
{

    fields
    {
        field(1;Year;Code[10])
        {
            Caption = 'Año';
        }
        field(2;Periode;Code[2])
        {
            Caption = 'Periodo';
        }
        field(3;"Date Initial";Date)
        {
            Caption = 'Fecha inicial';
        }
        field(4;"Date End";Date)
        {
            Caption = 'Fecha final';
        }
        field(5;Status;Option)
        {
            OptionCaption = 'Bloqueado,Abierto,Cerrado';
            OptionMembers = Blocked,Open,Close;
        }
    }

    keys
    {
        key(Key1;Year,Periode)
        {
        }
    }

    fieldgroups
    {
    }
}

