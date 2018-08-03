table 50000 "Logos autorizados"
{
    DrillDownPageID = "Logos autorizados";
    LookupPageID = "Logos autorizados";

    fields
    {
        field(1;"Código";Code[10])
        {
            Enabled = TRUE;
        }
        field(2;"Descripción";Text[30])
        {
            Enabled = TRUE;
        }
        field(3;Picture;BLOB)
        {
            Enabled = TRUE;
            SubType = Bitmap;
        }
    }

    keys
    {
        key(Key1;"Código")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

