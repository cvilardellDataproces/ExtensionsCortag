table 70000 "SII Bases Documentos"
{
    // version SII


    fields
    {
        field(1;"Type Document";Option)
        {
            OptionMembers = " ","Sales Invoice","Sales Credit Memo","Purchase Invoice","Purchase Credit Memo","Service Invoice","Service Credit Memo";
        }
        field(2;"No. Document";Code[10])
        {
        }
        field(3;"Entry No. VAT Entry";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ESP='Nº mov. movs. IVA';
            Editable = false;
        }
        field(10;"VAT Id.";Integer)
        {
        }
        field(11;"Base Amount";Decimal)
        {
        }
        field(12;Amount;Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"Type Document","No. Document","Entry No. VAT Entry")
        {
        }
    }

    fieldgroups
    {
    }

    var
        VATPostingSetup : Record "VAT Posting Setup";
}

