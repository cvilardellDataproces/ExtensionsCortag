codeunit 50002 "Afegeix camps taules estandard"
{
    // Afegeix els camps nous de les taules estàndards.
    // --Item
    // --Sales Header
    // --Company Information
    // --Sales Shipment Header
    // --Payment Method
    // --Activities Cue
    // --Service Item Line
    // --VAT Posting Setup
    // --Service Line
    // --Service Contract Line
    // --Sales Cue


    trigger OnRun();
    begin

        InsertItem;
        InsertSalesHeader;
        InsertCompanyInformation;
        InsertSalesShipmentHeader;
        InsertPaymentMethod;
        InsertActivitiesCue;
        InsertSalesCue;
        InsertServiceContractLine;
        InsertServiceItemLine;
        InsertServiceLine;
        InsertVATPostingSetup;
    end;

    local procedure InsertItem();
    var
        ItemNewFields : record ItemNewFields;
        Item : Record Item;
    begin

        IF ItemNewFields.FINDFIRST THEN BEGIN
          REPEAT
            IF Item.GET(ItemNewFields.No) THEN BEGIN
              Item."Ancho" := ItemNewFields.Ancho;
              Item.Longitud := ItemNewFields.Longitud;
              Item.Espesor := ItemNewFields.Espesor;
              Item.Peso := ItemNewFields.Peso;
              Item."Coste Fabricación" := ItemNewFields."Coste Fabricación";
              Item.MODIFY;
            END;
          UNTIL ItemNewFields.NEXT=0;
        END;
    end;

    local procedure InsertSalesHeader();
    var
        SalesHeaderNewFields : Record SalesHeaderNewFields;
        SalesHeader : Record "Sales Header";
    begin

        IF SalesHeaderNewFields.FINDFIRST THEN BEGIN
          REPEAT
            IF SalesHeader.GET(SalesHeaderNewFields."Document Type", SalesHeaderNewFields."No.") THEN BEGIN
              SalesHeader."Cód. logo autorizados" := SalesHeaderNewFields."Cód. logo autorizados";
              SalesHeader."Nº Bultos" := SalesHeaderNewFields."Nº Bultos";
              SalesHeader.Peso := SalesHeaderNewFields.Peso;
              SalesHeader."Posibilidad de éxito" := SalesHeaderNewFields."Posibilidad de éxito";
              SalesHeader."Fecha prevista de cierre" := SalesHeaderNewFields."Fecha prevista de cierre";
              SalesHeader.MODIFY;
            END;
          UNTIL SalesHeaderNewFields.NEXT = 0;
        END;
    end;

    local procedure InsertCompanyInformation();
    var
        CompanyInfNewFields : Record CompanyInfNewFields;
        CompanyInformation : Record "Company Information";
    begin

        IF CompanyInfNewFields.FINDFIRST THEN BEGIN
          REPEAT
            IF CompanyInformation.GET(CompanyInfNewFields."Primary Key") THEN BEGIN
              CompanyInformation.RegistroMercantil := CompanyInfNewFields.RegistroMercantil;
              CompanyInformation.Modify;
            END;
          UNTIL CompanyInfNewFields.NEXT = 0;
        END;
    end;

    local procedure InsertSalesShipmentHeader();
    var
        SalesShpHeaderNewFields : Record SalesShpHeaderNewFields;
        SalesShipmentHeader : Record "Sales Shipment Header";
    begin

        IF SalesShpHeaderNewFields.FINDFIRST THEN BEGIN
          REPEAT
            IF SalesShipmentHeader.GET(SalesShpHeaderNewFields."No.") THEN BEGIN
              SalesShipmentHeader."Nº Bultos" := SalesShpHeaderNewFields."Nº Bultos";
              SalesShipmentHeader.Peso := SalesShpHeaderNewFields.Peso;
              SalesShipmentHeader.Modify;
            END;
          UNTIL SalesShpHeaderNewFields.NEXT = 0;
        END;
    end;

    local procedure InsertPaymentMethod();
    var
        PaymentMethodNewFields : Record PaymentMethodNewFields;
        PaymentMethod : Record "Payment Method";
    begin

        IF PaymentMethodNewFields.FINDFIRST THEN BEGIN
          REPEAT
            IF PaymentMethod.GET(PaymentMethodNewFields."Code") THEN BEGIN
              PaymentMethod.Transferencia := PaymentMethodNewFields.Transferencia;
              PaymentMethod.Modify;
            END;
          UNTIL PaymentMethodNewFields.NEXT = 0;
        END;
    end;

    local procedure InsertVATPostingSetup();
    var
        VATPostingSetup : Record "VAT Posting Setup";
        VATPostingSetupNewFields : Record VATPostingSetupNewFields;
    begin

        IF VATPostingSetupNewFields.FINDFIRST THEN BEGIN
          REPEAT
            VATPostingSetup.SetCurrentKey("VAT Bus. Posting Group","VAT Prod. Posting Group");
            IF VATPostingSetup.GET(VATPostingSetupNewFields."VAT Bus. Posting Group",VATPostingSetupNewFields."VAT Prod. Posting Group") THEN BEGIN
              VATPostingSetup."VAT Id." := VATPostingSetupNewFields."VAT Id.";
              VATPostingSetup.Modify;
            END;
          UNTIL VATPostingSetupNewFields.NEXT = 0;
        END;
    end;

    local procedure InsertActivitiesCue();
    var
        ActivitiesCueNewFields : Record ActivitiesCueNewFields;
        ActivitiesCue : Record "Activities Cue";
    begin

        IF ActivitiesCueNewFields.FINDFIRST THEN BEGIN
          REPEAT
            IF ActivitiesCue.GET(ActivitiesCueNewFields."Primary Key") THEN BEGIN
              ActivitiesCue."Ready to Invoice" := ActivitiesCueNewFields."Ready to Invoice";
              ActivitiesCue.Modify;
            END;
          UNTIL ActivitiesCueNewFields.NEXT = 0;
        END;
    end;

    local procedure InsertServiceItemLine();
    var
        ServiceItemLine : Record "Service Item Line";
        ServiceItemLineNewFields : Record ServiceItemLineNewFields;
    begin

        IF ServiceItemLineNewFields.FINDFIRST THEN BEGIN
          REPEAT
            ServiceItemLine.SetCurrentKey("Document Type","Document No.","Line No.");
            IF ServiceItemLine.GET(ServiceItemLineNewFields."Document Type",ServiceItemLineNewFields."Document No.",ServiceItemLineNewFields."Line No.") THEN BEGIN
              ServiceItemLine."Lectura actual" := ServiceItemLineNewFields."Lectura actual";
              ServiceItemLine."Lectura anterior" := ServiceItemLineNewFields."Lectura anterior";
              ServiceItemLine."Precio por unidad de lectura" := ServiceItemLineNewFields."Precio por unidad de lectura";
              ServiceItemLine."Periodo de lectura" := ServiceItemLineNewFields."Periodo de lectura";
              ServiceItemLine."Cantidad ultimo periodo" := ServiceItemLineNewFields."Cantidad ultimo periodo";
              ServiceItemLine.Modify;
            END;
          UNTIL ServiceItemLineNewFields.NEXT = 0;
        END;
    end;

    local procedure InsertServiceLine();
    var
        ServiceLine : Record "Service Line";
        ServiceLineNewFields : Record ServiceLineNewFields;
    begin

        IF ServiceLineNewFields.FINDFIRST  THEN BEGIN
          REPEAT
            ServiceLine.SetCurrentKey("Document Type","Document No.","Line No.");
            IF ServiceLine.GET(ServiceLineNewFields."Document Type",ServiceLineNewFields."Document No.",ServiceLineNewFields."Line No.")  THEN BEGIN
              ServiceLine."Lectura actual" := ServiceLineNewFields."Lectura actual";
              ServiceLine."Lectura anterior" := ServiceLineNewFields."Lectura anterior";
              ServiceLine."Precio por unidad de lectura" := ServiceLineNewFields."Precio por unidad de lectura";
              ServiceLine."Periodo de lectura" := ServiceLineNewFields."Periodo de lectura";
              ServiceLine."Cantidad ultimo periodo" := ServiceLineNewFields."Cantidad ultimo periodo";
              ServiceLine.Modify;
            END;
          UNTIL ServiceLineNewFields.NEXT = 0;
        END;
    end;

    local procedure InsertServiceContractLine();
    var
        ServiceContractLine : Record "Service Contract Line";
        ServiceContractLineNewfields : Record ServiceContractLineNewfields;
    begin

        IF ServiceContractLineNewfields.FINDFIRST THEN BEGIN
          REPEAT
            ServiceContractLine.SetCurrentKey("Contract Type","Contract No.","Line No.");
            IF ServiceContractLine.GET(ServiceContractLineNewfields."Contract Type",ServiceContractLineNewfields."Contract No.",ServiceContractLineNewfields."Line No.") THEN BEGIN
              ServiceContractLine."Lectura actual" := ServiceContractLineNewfields."Lectura actual";
              ServiceContractLine."Lectura anterior" := ServiceContractLineNewfields."Lectura anterior";
              ServiceContractLine."Precio por unidad de lectura" := ServiceContractLineNewfields."Precio por unidad de lectura";
              ServiceContractLine."Periodo de lectura" := ServiceContractLineNewfields."Periodo de lectura";
              ServiceContractLine."Cantidad ultimo periodo" := ServiceContractLineNewfields."Cantidad ultimo periodo";
              ServiceContractLine.Modify;
            END;
          UNTIL ServiceContractLineNewfields.NEXT = 0;
        END;
    end;

    local procedure InsertSalesCue();
    var
        SalesCue : Record "Sales Cue";
        SalesCueNewFields : Record SalesCueNewFields;
    begin

        IF SalesCueNewFields.FINDFIRST THEN BEGIN
          REPEAT
            IF SalesCue.GET(SalesCueNewFields."Primary Key") THEN BEGIN
              SalesCue."Ready to Invoice" := SalesCueNewFields."Ready to Invoice";
              SalesCue.Modify;
            END;
          UNTIL SalesCueNewFields.NEXT = 0;
        END;
    end;
}

