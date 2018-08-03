page 50000 "Logos autorizados"
{
    PageType = Card;
    SourceTable = "Logos autorizados";
    UsageCategory = Documents;
    ApplicationArea = All;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Visible = true;

                field(Código;Código)
                {
                    ApplicationArea = All;
                    Enabled = TRUE;
                }
                field(Descripción;Descripción)
                {
                    ApplicationArea = All;
                    Enabled = TRUE;
                }
                field(Picture;Picture)
                {
                    ApplicationArea = All;
                    Enabled = TRUE;
                }
            }
        }
    }

    actions
    {
    }
}

