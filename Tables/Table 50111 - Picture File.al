table 50111 "Picture File"
{

    fields
    {
        field(1;"Item No.";Code[20])
        {
        }
        field(2;"Picture File";Text[30])
        {
        }
        field(3;"Cant Ofertas";Integer)
        {
            CalcFormula = Count("Sales Line" WHERE ("Document Type"=CONST(Quote),
                                                    Type=CONST(Item),
                                                    "No."=FIELD("Item No.")));
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1;"Item No.")
        {
        }
    }

    fieldgroups
    {
    }
}

