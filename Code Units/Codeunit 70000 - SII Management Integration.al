codeunit 70000 "SII Management Integration"
{
    // version SII


    trigger OnRun();
    begin
        PostSalesInvoice;
        PostSalesCrMemo;
        PostPurchaseInvoice;
        PostPurchaseCrMemo;
    end;

    var
        SalesInvoiceHeader : Record "Sales Invoice Header";
        SalesCrMemoHeader : Record "Sales Cr.Memo Header";
        PurchInvHeader : Record "Purch. Inv. Header";
        PurchCrMemoHdr : Record "Purch. Cr. Memo Hdr.";
        Customer : Record Customer;
        Vendor : Record Vendor;
        BasesDocumentos : Record "SII Bases Documentos";
        SetupIntegrationSII : Record "SII Setup Integration";
        GenJnlPostLine : Codeunit "Gen. Jnl.-Post Line";
        CompanyInformation : Page "Company Information";

    local procedure PostSalesInvoice();
    begin
        SalesInvoiceHeader.RESET;
        IF SalesInvoiceHeader.FINDFIRST THEN REPEAT
          IF NOT DocumentRegistered(2,1,SalesInvoiceHeader."No.") THEN BEGIN
            // Crear fitxa de clientes
            TestCustomer2SalesInvoiceHeader(SalesInvoiceHeader);
            // Registrar en contabilidad (table Bases Documentos)
            PostSalesInvoiceCustomer(SalesInvoiceHeader);
            // Registrar Lineas IVA
            PostSalesInvoicePostVATLine(SalesInvoiceHeader);
            RegisterDocument(2,1,SalesInvoiceHeader."No.")
            END;
          UNTIL SalesInvoiceHeader.NEXT=0;
    end;

    local procedure PostSalesCrMemo();
    begin
        SalesCrMemoHeader.RESET;
        IF SalesCrMemoHeader.FINDFIRST THEN REPEAT
          IF NOT DocumentRegistered(2,2,SalesCrMemoHeader."No.") THEN BEGIN
            // Crear fitxa de clientes
            TestCustomer2SalesCrMemoHeader(SalesCrMemoHeader);
            // Registrar en contabilidad (table Bases Documentos)
                PostSalesCrMemoCustomer(SalesCrMemoHeader);
            // Registrar Lineas IVA
                PostSalesCrMemoPostVATLine(SalesCrMemoHeader);
              RegisterDocument(2,2,SalesCrMemoHeader."No.")
            END;
          UNTIL SalesCrMemoHeader.NEXT=0;
    end;

    local procedure PostPurchaseInvoice();
    begin
        PurchInvHeader.RESET;
        IF PurchInvHeader.FINDFIRST THEN REPEAT
          IF NOT DocumentRegistered(1,1,PurchInvHeader."No.") THEN BEGIN
            // Crear fitxa de proveedor
            TestVendor2PurchaseInvoiceHeader(PurchInvHeader);
            // Registrar en contabilidad (table Bases Documentos)
            PostPurchaseInvoiceVendor(PurchInvHeader);
            // Registrar Lineas IVA
            PostPurchaseInvoicePostVATLine(PurchInvHeader);
            RegisterDocument(1,1,PurchInvHeader."No.")
            END;
          UNTIL PurchInvHeader.NEXT=0;
    end;

    local procedure PostPurchaseCrMemo();
    begin
        PurchCrMemoHdr.RESET;
        IF PurchCrMemoHdr.FINDFIRST THEN REPEAT
          IF NOT DocumentRegistered(1,2,PurchCrMemoHdr."No.") THEN BEGIN
            // Crear fitxa de proveedor
            TestVendor2PurchaseCrMemoHeader(PurchCrMemoHdr);
            // Registrar en contabilidad (table Bases Documentos)
            PostPurchaseCrMemoVendor(PurchCrMemoHdr);
            // Registrar Lineas IVA
            PostPurchaseCrMemoPostVATLine(PurchCrMemoHdr);
            RegisterDocument(1,2,PurchCrMemoHdr."No.")
            END;
          UNTIL PurchInvHeader.NEXT=0;
    end;

    local procedure TestCustomer2SalesInvoiceHeader(_SalesHeader : Record "Sales Invoice Header");
    var
        PaymentTerms : Record "Payment Terms";
        CustomerPostingGroup : Record "Customer Posting Group";
        Currency : Record Currency;
    begin
        SetupIntegrationSII.GET;
        IF NOT Customer.GET(_SalesHeader."Sell-to Customer No.") THEN BEGIN
          Customer."No." := _SalesHeader."Bill-to Customer No.";
          Customer.INSERT(TRUE);
          Customer.VALIDATE(Name,_SalesHeader."Bill-to Name");
          Customer.MODIFY;

          Customer."Name 2":= _SalesHeader."Bill-to Name 2";
          Customer.Address := _SalesHeader."Bill-to Address";
          Customer."Address 2" := _SalesHeader."Bill-to Address 2";
          Customer.City := _SalesHeader."Bill-to City";
          Customer.Contact := _SalesHeader."Bill-to Contact";
          Customer."Post Code" := _SalesHeader."Bill-to Post Code";
          Customer.County := _SalesHeader."Bill-to County";
          Customer."Country/Region Code":=_SalesHeader."Bill-to Country/Region Code";

          Customer."Currency Code" := _SalesHeader."Currency Code";
          IF NOT Currency.GET(Customer."Currency Code") THEN BEGIN
            Currency.Code := Customer."Currency Code";
            Currency.Description := STRSUBSTNO('%1','Creado automaticamente');
            Currency.INSERT;
            END;
          SetupIntegrationSII.TESTFIELD("Customer Receivables Account");
          Customer."Customer Posting Group" := _SalesHeader."Customer Posting Group";
          IF NOT CustomerPostingGroup.GET(Customer."Customer Posting Group") THEN BEGIN
            CustomerPostingGroup.Code := Customer."Customer Posting Group";
            CustomerPostingGroup."Receivables Account" := SetupIntegrationSII."Customer Receivables Account";
            CustomerPostingGroup.INSERT;
            END;

          Customer."Customer Price Group" := _SalesHeader."Customer Price Group";
          Customer."Invoice Disc. Code" := _SalesHeader."Invoice Disc. Code";
          Customer."Customer Disc. Group" := _SalesHeader."Customer Disc. Group";
          Customer."Allow Line Disc." := _SalesHeader."Allow Line Disc.";
          Customer."Gen. Bus. Posting Group" := _SalesHeader."Gen. Bus. Posting Group";
          Customer."VAT Bus. Posting Group" := _SalesHeader."VAT Bus. Posting Group";
          Customer."Payment Terms Code" := _SalesHeader."Payment Terms Code";
          IF NOT PaymentTerms.GET(Customer."Payment Terms Code") THEN BEGIN
            PaymentTerms.Code := Customer."Payment Terms Code";
            PaymentTerms.Description := STRSUBSTNO('%1','Creado automaticamente');
            PaymentTerms.INSERT;
            END;
          Customer."Payment Method Code" := _SalesHeader."Payment Method Code";
          Customer."Shipment Method Code" := _SalesHeader."Shipment Method Code";
          Customer."VAT Registration No." := _SalesHeader."VAT Registration No.";
          Customer.MODIFY;
        END;
    end;

    local procedure TestCustomer2SalesCrMemoHeader(_SalesHeader : Record "Sales Cr.Memo Header");
    var
        PaymentTerms : Record "Payment Terms";
        CustomerPostingGroup : Record "Customer Posting Group";
        Currency : Record Currency;
    begin
        SetupIntegrationSII.GET;
        IF NOT Customer.GET(_SalesHeader."Sell-to Customer No.") THEN BEGIN
           Customer."No." := _SalesHeader."Bill-to Customer No.";
          Customer.INSERT(TRUE);
          Customer.VALIDATE(Name,_SalesHeader."Bill-to Name");
          Customer.MODIFY;

          Customer."Name 2":= _SalesHeader."Bill-to Name 2";
          Customer.Address := _SalesHeader."Bill-to Address";
          Customer."Address 2" := _SalesHeader."Bill-to Address 2";
          Customer.City := _SalesHeader."Bill-to City";
          Customer.Contact := _SalesHeader."Bill-to Contact";
          Customer."Post Code" := _SalesHeader."Bill-to Post Code";
          Customer.County := _SalesHeader."Bill-to County";
          Customer."Country/Region Code":=_SalesHeader."Bill-to Country/Region Code";

          Customer."Currency Code" := _SalesHeader."Currency Code";
          IF NOT Currency.GET(Customer."Currency Code") THEN BEGIN
            Currency.Code := Customer."Currency Code";
            Currency.Description := STRSUBSTNO('%1','Creado automaticamente');
            Currency.INSERT;
            END;

          SetupIntegrationSII.TESTFIELD("Customer Receivables Account");
          Customer."Customer Posting Group" := _SalesHeader."Customer Posting Group";
          IF NOT CustomerPostingGroup.GET(Customer."Customer Posting Group") THEN BEGIN
            CustomerPostingGroup.Code := Customer."Customer Posting Group";
            CustomerPostingGroup."Receivables Account" := SetupIntegrationSII."Customer Receivables Account";
            CustomerPostingGroup.INSERT;
            END;

          Customer."Customer Price Group" := _SalesHeader."Customer Price Group";
          Customer."Invoice Disc. Code" := _SalesHeader."Invoice Disc. Code";
          Customer."Customer Disc. Group" := _SalesHeader."Customer Disc. Group";
          Customer."Allow Line Disc." := _SalesHeader."Allow Line Disc.";
          Customer."Gen. Bus. Posting Group" := _SalesHeader."Gen. Bus. Posting Group";
          Customer."VAT Bus. Posting Group" := _SalesHeader."VAT Bus. Posting Group";
          Customer."Payment Terms Code" := _SalesHeader."Payment Terms Code";
          IF NOT PaymentTerms.GET(Customer."Payment Terms Code") THEN BEGIN
            PaymentTerms.Code := Customer."Payment Terms Code";
            PaymentTerms.Description := STRSUBSTNO('%1','Creado automaticamente');
            PaymentTerms.INSERT;
            END;
          Customer."Payment Method Code" := _SalesHeader."Payment Method Code";
          Customer."Shipment Method Code" := _SalesHeader."Shipment Method Code";
          Customer."VAT Registration No." := _SalesHeader."VAT Registration No.";
          Customer.MODIFY;
          END;
    end;

    local procedure TestVendor2PurchaseInvoiceHeader(_PurchaseHeader : Record "Purch. Inv. Header");
    var
        PaymentTerms : Record "Payment Terms";
        VendorPostingGroup : Record "Vendor Posting Group";
        Currency : Record Currency;
    begin
        SetupIntegrationSII.GET;
        IF NOT Vendor.GET( _PurchaseHeader."Pay-to Vendor No.") THEN BEGIN
          Vendor."No." := _PurchaseHeader."Pay-to Vendor No.";
          Vendor.INSERT(TRUE);
          Vendor.VALIDATE(Name,_PurchaseHeader."Pay-to Name");
          Vendor.MODIFY;

          Vendor."Name 2":= _PurchaseHeader."Pay-to Name 2";
          Vendor.Address := _PurchaseHeader."Pay-to Address";
          Vendor."Address 2" := _PurchaseHeader."Pay-to Address 2";
          Vendor.City := _PurchaseHeader."Pay-to City";
          Vendor.Contact := _PurchaseHeader."Pay-to Contact";
          Vendor."Post Code" := _PurchaseHeader."Pay-to Post Code";
          Vendor.County := _PurchaseHeader."Pay-to County";
          Vendor."Country/Region Code":=_PurchaseHeader."Pay-to Country/Region Code";

          Vendor."Currency Code" := _PurchaseHeader."Currency Code";
          IF NOT Currency.GET(Vendor."Currency Code") THEN BEGIN
            Currency.Code := Vendor."Currency Code";
            Currency.Description := STRSUBSTNO('%1','Creado automaticamente');
            Currency.INSERT;
            END;

          SetupIntegrationSII.TESTFIELD("Vendor Payables Account");
          Vendor."Vendor Posting Group" := _PurchaseHeader."Vendor Posting Group";
          IF NOT VendorPostingGroup.GET(Vendor."Vendor Posting Group") THEN BEGIN
            VendorPostingGroup.Code := Vendor."Vendor Posting Group";
            VendorPostingGroup."Payables Account" := SetupIntegrationSII."Vendor Payables Account";
            VendorPostingGroup.INSERT;
            END;

          Vendor."Invoice Disc. Code" := _PurchaseHeader."Invoice Disc. Code";
          Vendor."Gen. Bus. Posting Group" := _PurchaseHeader."Gen. Bus. Posting Group";
          Vendor."VAT Bus. Posting Group" := _PurchaseHeader."VAT Bus. Posting Group";
          Vendor."Payment Terms Code" := _PurchaseHeader."Payment Terms Code";
          IF NOT PaymentTerms.GET(Vendor."Payment Terms Code") THEN BEGIN
            PaymentTerms.Code := Vendor."Payment Terms Code";
            PaymentTerms.Description := STRSUBSTNO('%1','Creado automaticamente');
            PaymentTerms.INSERT;
            END;
          Vendor."Payment Method Code" := _PurchaseHeader."Payment Method Code";
          Vendor."Shipment Method Code" := _PurchaseHeader."Shipment Method Code";
          Vendor."VAT Registration No." := _PurchaseHeader."VAT Registration No.";
          Vendor.MODIFY;

        END;
    end;

    local procedure TestVendor2PurchaseCrMemoHeader(_PurchaseHeader : Record "Purch. Cr. Memo Hdr.");
    var
        PaymentTerms : Record "Payment Terms";
        VendorPostingGroup : Record "Vendor Posting Group";
        Currency : Record Currency;
    begin
        SetupIntegrationSII.GET;
        IF NOT Vendor.GET( _PurchaseHeader."Pay-to Vendor No.") THEN BEGIN
          Vendor."No." := _PurchaseHeader."Pay-to Vendor No.";
          Vendor.INSERT(TRUE);
          Vendor.VALIDATE(Name,_PurchaseHeader."Pay-to Name");
          Vendor.MODIFY;

          Vendor."Name 2":= _PurchaseHeader."Pay-to Name 2";
          Vendor.Address := _PurchaseHeader."Pay-to Address";
          Vendor."Address 2" := _PurchaseHeader."Pay-to Address 2";
          Vendor.City := _PurchaseHeader."Pay-to City";
          Vendor.Contact := _PurchaseHeader."Pay-to Contact";
          Vendor."Post Code" := _PurchaseHeader."Pay-to Post Code";
          Vendor.County := _PurchaseHeader."Pay-to County";
          Vendor."Country/Region Code":=_PurchaseHeader."Pay-to Country/Region Code";

          Vendor."Currency Code" := _PurchaseHeader."Currency Code";
          IF NOT Currency.GET(Vendor."Currency Code") THEN BEGIN
            Currency.Code := Vendor."Currency Code";
            Currency.Description := STRSUBSTNO('%1','Creado automaticamente');
            Currency.INSERT;
            END;

          SetupIntegrationSII.TESTFIELD("Vendor Payables Account");
          Vendor."Vendor Posting Group" := _PurchaseHeader."Vendor Posting Group";
          IF NOT VendorPostingGroup.GET(Vendor."Vendor Posting Group") THEN BEGIN
            VendorPostingGroup.Code := Vendor."Vendor Posting Group";
            VendorPostingGroup."Payables Account" := SetupIntegrationSII."Vendor Payables Account";
            VendorPostingGroup.INSERT;
            END;

          Vendor."Invoice Disc. Code" := _PurchaseHeader."Invoice Disc. Code";
          Vendor."Gen. Bus. Posting Group" := _PurchaseHeader."Gen. Bus. Posting Group";
          Vendor."VAT Bus. Posting Group" := _PurchaseHeader."VAT Bus. Posting Group";
          Vendor."Payment Terms Code" := _PurchaseHeader."Payment Terms Code";
          IF NOT PaymentTerms.GET(Vendor."Payment Terms Code") THEN BEGIN
            PaymentTerms.Code := Vendor."Payment Terms Code";
            PaymentTerms.Description := STRSUBSTNO('%1','Creado automaticamente');
            PaymentTerms.INSERT;
            END;
          Vendor."Payment Method Code" := _PurchaseHeader."Payment Method Code";
          Vendor."Shipment Method Code" := _PurchaseHeader."Shipment Method Code";
          Vendor."VAT Registration No." := _PurchaseHeader."VAT Registration No.";
          Vendor.MODIFY;

        END;
    end;

    local procedure DocumentRegistered(Type : Integer;TypeDocument : Integer;NoDocument : Code[20]) : Boolean;
    var
        PostDocumentSII : Record "Post Document SII";
    begin
        EXIT(PostDocumentSII.GET(Type,TypeDocument,NoDocument));
    end;

    local procedure RegisterDocument(Type : Integer;TypeDocument : Integer;NoDocument : Code[20]);
    var
        PostDocumentSII : Record "Post Document SII";
    begin
        PostDocumentSII.Type := Type;
        PostDocumentSII."Document Type" := TypeDocument;
        PostDocumentSII."Document No." := NoDocument;
        IF PostDocumentSII.INSERT THEN;
    end;

    local procedure PostSalesInvoiceCustomer(SalesInvoiceHeader : Record "Sales Invoice Header");
    var
        CustLedgEntry : Record "Cust. Ledger Entry";
        GenJnlLine : Record "Gen. Journal Line";
    begin
        Customer.GET(SalesInvoiceHeader."Bill-to Customer No.");
        BasesDocumentos.RESET;
        BasesDocumentos.SETRANGE("Type Document",BasesDocumentos."Type Document"::"Sales Invoice");
        BasesDocumentos.SETRANGE("No. Document",SalesInvoiceHeader."No.");
        IF NOT BasesDocumentos.FINDFIRST THEN
          EXIT;

        BasesDocumentos.CALCSUMS("Base Amount",Amount);
        IF BasesDocumentos."Base Amount" = 0 THEN
          EXIT;

        WITH GenJnlLine DO BEGIN
          INIT;
          "Posting Date" := SalesInvoiceHeader."Posting Date";
          "Document Date" := SalesInvoiceHeader."Document Date";
          Description := SalesInvoiceHeader."Posting Description";
          "Shortcut Dimension 1 Code" := SalesInvoiceHeader."Shortcut Dimension 1 Code";
          "Shortcut Dimension 2 Code" := SalesInvoiceHeader."Shortcut Dimension 2 Code";
          "Reason Code" := SalesInvoiceHeader."Reason Code";
          "Source Currency Code" := SalesInvoiceHeader."Currency Code";
          "Currency Factor" := SalesInvoiceHeader."Currency Factor";
          "VAT Base Discount %" := SalesInvoiceHeader."VAT Base Discount %";
          Correction := SalesInvoiceHeader.Correction;
          "EU 3-Party Trade" := SalesInvoiceHeader."EU 3-Party Trade";
          "Sell-to/Buy-from No." := SalesInvoiceHeader."Sell-to Customer No.";
          "Bill-to/Pay-to No." := SalesInvoiceHeader."Bill-to Customer No.";
          "Country/Region Code" := SalesInvoiceHeader."VAT Country/Region Code";
          "VAT Registration No." := SalesInvoiceHeader."VAT Registration No.";
          "Source Type" := "Source Type"::Customer;
          "Source No." := SalesInvoiceHeader."Bill-to Customer No.";
          "Ship-to/Order Address Code" := SalesInvoiceHeader."Ship-to Code";
          "Salespers./Purch. Code" := SalesInvoiceHeader."Salesperson Code";
          "On Hold" := SalesInvoiceHeader."On Hold";
          "Account Type" := "Account Type"::Customer;
          "Posting Group" := SalesInvoiceHeader."Customer Posting Group";
          "Account No." := SalesInvoiceHeader."Bill-to Customer No.";
          "Document Type":= "Document Type"::Invoice;
          "Document No." :=SalesInvoiceHeader."No.";
          SetCurrencyFactor(SalesInvoiceHeader."Currency Code",SalesInvoiceHeader."Currency Factor");
          "Payment Method Code" := SalesInvoiceHeader."Payment Method Code";
          "Payment Terms Code"   := SalesInvoiceHeader."Payment Terms Code";
          "VAT Registration No." := SalesInvoiceHeader."VAT Registration No.";
          "Gen. Bus. Posting Group" := '';
          "Tax Area Code" := SalesInvoiceHeader."Tax Area Code";
          "Tax Liable" := SalesInvoiceHeader."Tax Liable";

          Amount := - (BasesDocumentos."Base Amount"+BasesDocumentos.Amount);
          "Source Currency Amount" := Amount;

          "Allow Zero-Amount Posting" := TRUE;
          GenJnlPostLine.RunWithCheck(GenJnlLine);
        END;
    end;

    local procedure PostSalesInvoicePostVATLine(SalesInvoiceHeader : Record "Sales Invoice Header");
    var
        CustLedgEntry : Record "Cust. Ledger Entry";
        GenJnlLine : Record "Gen. Journal Line";
        VATPostingSetup : Record "VAT Posting Setup";
    begin
        SetupIntegrationSII.GET;
        BasesDocumentos.RESET;
        BasesDocumentos.SETRANGE("Type Document",BasesDocumentos."Type Document"::"Sales Invoice");
        BasesDocumentos.SETRANGE("No. Document",SalesInvoiceHeader."No.");
        IF NOT BasesDocumentos.FINDFIRST THEN
          EXIT;
        REPEAT
          WITH GenJnlLine DO BEGIN
            INIT;
            "Posting Date" := SalesInvoiceHeader."Posting Date";
            "Document Date" := SalesInvoiceHeader."Document Date";
            Description := SalesInvoiceHeader."Posting Description";
            "Shortcut Dimension 1 Code" := SalesInvoiceHeader."Shortcut Dimension 1 Code";
            "Shortcut Dimension 2 Code" := SalesInvoiceHeader."Shortcut Dimension 2 Code";
            "Reason Code" := SalesInvoiceHeader."Reason Code";
            "Source Currency Code" := SalesInvoiceHeader."Currency Code";
            "Currency Factor" := SalesInvoiceHeader."Currency Factor";
            "VAT Base Discount %" := SalesInvoiceHeader."VAT Base Discount %";
            Correction := SalesInvoiceHeader.Correction;
            "EU 3-Party Trade" := SalesInvoiceHeader."EU 3-Party Trade";
            "Sell-to/Buy-from No." := SalesInvoiceHeader."Sell-to Customer No.";
            "Bill-to/Pay-to No." := SalesInvoiceHeader."Bill-to Customer No.";
            "Country/Region Code" := SalesInvoiceHeader."VAT Country/Region Code";
            "VAT Registration No." := SalesInvoiceHeader."VAT Registration No.";
            "Source Type" := "Source Type"::Customer;
            "Source No." := SalesInvoiceHeader."Bill-to Customer No.";
            "Ship-to/Order Address Code" := SalesInvoiceHeader."Ship-to Code";
            "Salespers./Purch. Code" := SalesInvoiceHeader."Salesperson Code";
            "On Hold" := SalesInvoiceHeader."On Hold";

            "Account Type" := "Account Type"::"G/L Account";
            "Posting Group" := SalesInvoiceHeader."Customer Posting Group";
            SetupIntegrationSII.TESTFIELD("Sales Account");
            "Account No." := SetupIntegrationSII."Sales Account";
            "Document Type":= "Document Type"::Invoice;
            "Document No." :=SalesInvoiceHeader."No.";
            SetCurrencyFactor(SalesInvoiceHeader."Currency Code",SalesInvoiceHeader."Currency Factor");
            "Payment Method Code" := SalesInvoiceHeader."Payment Method Code";
            "Payment Terms Code"   := SalesInvoiceHeader."Payment Terms Code";
            "VAT Registration No." := SalesInvoiceHeader."VAT Registration No.";
            "Gen. Bus. Posting Group" := SalesInvoiceHeader."Gen. Bus. Posting Group";
            "Tax Area Code" := SalesInvoiceHeader."Tax Area Code";
            "Tax Liable" := SalesInvoiceHeader."Tax Liable";
            SetupIntegrationSII.TESTFIELD("Gen. Prod. Posting Group");
            "Gen. Prod. Posting Group" := SetupIntegrationSII."Gen. Prod. Posting Group";
            "Gen. Posting Type" := "Gen. Posting Type"::Sale;

            IF BasesDocumentos."VAT Id."<>0 THEN BEGIN
              VATPostingSetup.RESET;
              VATPostingSetup.SETRANGE("VAT Id.",BasesDocumentos."VAT Id.");
              VATPostingSetup.FINDFIRST;
              "VAT Bus. Posting Group" := VATPostingSetup."VAT Bus. Posting Group";
              "VAT Prod. Posting Group" := VATPostingSetup."VAT Prod. Posting Group";
              "VAT %" := VATPostingSetup."VAT %";
              "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
              "VAT Posting" := "VAT Posting"::"Manual VAT Entry";
            END ELSE
              ERROR('No existe configuración IVA');
            Quantity := 1;

            Amount := BasesDocumentos."Base Amount";
            "Source Currency Amount" := Amount;
            "VAT Base Amount" := BasesDocumentos."Base Amount";
            "Source Curr. VAT Base Amount" := "VAT Base Amount";
            "VAT Amount" := BasesDocumentos.Amount;
            "Source Curr. VAT Amount" := BasesDocumentos.Amount;
            IF Amount<>0 THEN
              GenJnlPostLine.RunWithCheck(GenJnlLine);
          END;
        UNTIL BasesDocumentos.NEXT=0;
    end;

    local procedure PostSalesCrMemoCustomer(SalesCrMemoHeader : Record "Sales Cr.Memo Header");
    var
        CustLedgEntry : Record "Cust. Ledger Entry";
        GenJnlLine : Record "Gen. Journal Line";
    begin
        Customer.GET(SalesInvoiceHeader."Bill-to Customer No.");
        BasesDocumentos.RESET;
        BasesDocumentos.SETRANGE("Type Document",BasesDocumentos."Type Document"::"Sales Invoice");
        BasesDocumentos.SETRANGE("No. Document",SalesInvoiceHeader."No.");
        IF NOT BasesDocumentos.FINDFIRST THEN
          EXIT;

        BasesDocumentos.CALCSUMS("Base Amount",Amount);
        IF BasesDocumentos."Base Amount" = 0 THEN
          EXIT;

        WITH GenJnlLine DO BEGIN
          INIT;
          "Posting Date" := SalesCrMemoHeader."Posting Date";
          "Document Date" := SalesCrMemoHeader."Document Date";
          Description := SalesCrMemoHeader."Posting Description";
          "Shortcut Dimension 1 Code" := SalesCrMemoHeader."Shortcut Dimension 1 Code";
          "Shortcut Dimension 2 Code" := SalesCrMemoHeader."Shortcut Dimension 2 Code";
          "Reason Code" := SalesCrMemoHeader."Reason Code";
          "Source Currency Code" := SalesCrMemoHeader."Currency Code";
          "Currency Factor" := SalesCrMemoHeader."Currency Factor";
          "VAT Base Discount %" := SalesCrMemoHeader."VAT Base Discount %";
          Correction := SalesCrMemoHeader.Correction;
          "EU 3-Party Trade" := SalesCrMemoHeader."EU 3-Party Trade";
          "Sell-to/Buy-from No." := SalesCrMemoHeader."Sell-to Customer No.";
          "Bill-to/Pay-to No." := SalesCrMemoHeader."Bill-to Customer No.";
          "Country/Region Code" := SalesCrMemoHeader."VAT Country/Region Code";
          "VAT Registration No." := SalesCrMemoHeader."VAT Registration No.";
          "Source Type" := "Source Type"::Customer;
          "Source No." := SalesCrMemoHeader."Bill-to Customer No.";
          "Ship-to/Order Address Code" := SalesCrMemoHeader."Ship-to Code";
          "Salespers./Purch. Code" := SalesCrMemoHeader."Salesperson Code";
          "On Hold" := SalesCrMemoHeader."On Hold";
          "Account Type" := "Account Type"::Customer;
          "Posting Group" := SalesCrMemoHeader."Customer Posting Group";
          "Account No." := SalesCrMemoHeader."Bill-to Customer No.";
          "Document Type":= "Document Type"::Invoice;
          "Document No." :=SalesCrMemoHeader."No.";
          SetCurrencyFactor(SalesCrMemoHeader."Currency Code",SalesCrMemoHeader."Currency Factor");
          "Payment Method Code" := SalesCrMemoHeader."Payment Method Code";
          "Payment Terms Code"   := SalesCrMemoHeader."Payment Terms Code";
          "VAT Registration No." := SalesCrMemoHeader."VAT Registration No.";
          "Gen. Bus. Posting Group" := '';
          "Tax Area Code" := SalesCrMemoHeader."Tax Area Code";
          "Tax Liable" := SalesCrMemoHeader."Tax Liable";

          Amount := - (BasesDocumentos."Base Amount"+BasesDocumentos.Amount);
          "Source Currency Amount" := Amount;

          "Allow Zero-Amount Posting" := TRUE;
          GenJnlPostLine.RunWithCheck(GenJnlLine);
        END;
    end;

    local procedure PostSalesCrMemoPostVATLine(SalesCrMemoHeader : Record "Sales Cr.Memo Header");
    var
        CustLedgEntry : Record "Cust. Ledger Entry";
        GenJnlLine : Record "Gen. Journal Line";
        VATPostingSetup : Record "VAT Posting Setup";
    begin
        SetupIntegrationSII.GET;
        BasesDocumentos.RESET;
        BasesDocumentos.SETRANGE("Type Document",BasesDocumentos."Type Document"::"Sales Invoice");
        BasesDocumentos.SETRANGE("No. Document",SalesInvoiceHeader."No.");
        IF NOT BasesDocumentos.FINDFIRST THEN
          EXIT;
        REPEAT
          WITH GenJnlLine DO BEGIN
            INIT;
            "Posting Date" := SalesCrMemoHeader."Posting Date";
            "Document Date" := SalesCrMemoHeader."Document Date";
            Description := SalesCrMemoHeader."Posting Description";
            "Shortcut Dimension 1 Code" := SalesCrMemoHeader."Shortcut Dimension 1 Code";
            "Shortcut Dimension 2 Code" := SalesCrMemoHeader."Shortcut Dimension 2 Code";
            "Reason Code" := SalesCrMemoHeader."Reason Code";
            "Source Currency Code" := SalesCrMemoHeader."Currency Code";
            "Currency Factor" := SalesCrMemoHeader."Currency Factor";
            "VAT Base Discount %" := SalesCrMemoHeader."VAT Base Discount %";
            Correction := SalesCrMemoHeader.Correction;
            "EU 3-Party Trade" := SalesCrMemoHeader."EU 3-Party Trade";
            "Sell-to/Buy-from No." := SalesCrMemoHeader."Sell-to Customer No.";
            "Bill-to/Pay-to No." := SalesCrMemoHeader."Bill-to Customer No.";
            "Country/Region Code" := SalesCrMemoHeader."VAT Country/Region Code";
            "VAT Registration No." := SalesCrMemoHeader."VAT Registration No.";
            "Source Type" := "Source Type"::Customer;
            "Source No." := SalesCrMemoHeader."Bill-to Customer No.";
            "Ship-to/Order Address Code" := SalesCrMemoHeader."Ship-to Code";
            "Salespers./Purch. Code" := SalesCrMemoHeader."Salesperson Code";
            "On Hold" := SalesCrMemoHeader."On Hold";

            "Account Type" := "Account Type"::"G/L Account";
            "Posting Group" := SalesCrMemoHeader."Customer Posting Group";
            SetupIntegrationSII.TESTFIELD("Sales Account");
            "Account No." := SetupIntegrationSII."Sales Account";
            "Document Type":= "Document Type"::Invoice;
            "Document No." :=SalesCrMemoHeader."No.";
            SetCurrencyFactor(SalesCrMemoHeader."Currency Code",SalesCrMemoHeader."Currency Factor");
            "Payment Method Code" := SalesCrMemoHeader."Payment Method Code";
            "Payment Terms Code"   := SalesCrMemoHeader."Payment Terms Code";
            "VAT Registration No." := SalesCrMemoHeader."VAT Registration No.";
            "Gen. Bus. Posting Group" := SalesCrMemoHeader."Gen. Bus. Posting Group";
            "Tax Area Code" := SalesCrMemoHeader."Tax Area Code";
            "Tax Liable" := SalesCrMemoHeader."Tax Liable";

            SetupIntegrationSII.TESTFIELD("Gen. Prod. Posting Group");
            "Gen. Prod. Posting Group" := SetupIntegrationSII."Gen. Prod. Posting Group";
            "Gen. Posting Type" := "Gen. Posting Type"::Sale;

            IF BasesDocumentos."VAT Id."<>0 THEN BEGIN
              VATPostingSetup.RESET;
              VATPostingSetup.SETRANGE("VAT Id.",BasesDocumentos."VAT Id.");
              VATPostingSetup.FINDFIRST;
              "VAT Bus. Posting Group" := VATPostingSetup."VAT Bus. Posting Group";
              "VAT Prod. Posting Group" := VATPostingSetup."VAT Prod. Posting Group";
              "VAT %" := VATPostingSetup."VAT %";
              "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
              "VAT Posting" := "VAT Posting"::"Manual VAT Entry";
            END ELSE
              ERROR('No existe configuración IVA');

            Quantity := 1;

            Amount := BasesDocumentos."Base Amount";
            "Source Currency Amount" := Amount;
            "VAT Base Amount" := BasesDocumentos."Base Amount";
            "Source Curr. VAT Base Amount" := "VAT Base Amount";
            "VAT Amount" := BasesDocumentos.Amount;
            "Source Curr. VAT Amount" := BasesDocumentos.Amount;
            IF Amount<>0 THEN
              GenJnlPostLine.RunWithCheck(GenJnlLine);
          END;
        UNTIL BasesDocumentos.NEXT=0;
    end;

    local procedure PostPurchaseInvoiceVendor(PurchInvHeader : Record "Purch. Inv. Header");
    var
        GenJnlLine : Record "Gen. Journal Line";
    begin
        Vendor.GET(PurchInvHeader."Pay-to Vendor No.");
        BasesDocumentos.RESET;
        BasesDocumentos.SETRANGE("Type Document",BasesDocumentos."Type Document"::"Purchase Invoice");
        BasesDocumentos.SETRANGE("No. Document",PurchInvHeader."No.");
        IF NOT BasesDocumentos.FINDFIRST THEN
          EXIT;

        BasesDocumentos.CALCSUMS("Base Amount",Amount);
        IF BasesDocumentos."Base Amount" = 0 THEN
          EXIT;

        WITH GenJnlLine DO BEGIN
          INIT;
          "Posting Date" := PurchInvHeader."Posting Date";
          "Document Date" := PurchInvHeader."Document Date";
          Description := PurchInvHeader."Posting Description";
          "Shortcut Dimension 1 Code" := PurchInvHeader."Shortcut Dimension 1 Code";
          "Shortcut Dimension 2 Code" := PurchInvHeader."Shortcut Dimension 2 Code";
          "Reason Code" := PurchInvHeader."Reason Code";
          "Source Currency Code" := PurchInvHeader."Currency Code";
          "Currency Factor" := PurchInvHeader."Currency Factor";
          "VAT Base Discount %" := PurchInvHeader."VAT Base Discount %";
          Correction := PurchInvHeader.Correction;
          "Sell-to/Buy-from No." := PurchInvHeader."Buy-from Vendor No.";
          "Bill-to/Pay-to No." := PurchInvHeader."Pay-to Vendor No.";
          "Country/Region Code" := PurchInvHeader."VAT Country/Region Code";
          "VAT Registration No." := PurchInvHeader."VAT Registration No.";
          "Source Type" := "Source Type"::Vendor;
          "Source No." := PurchInvHeader."Pay-to Vendor No.";
          "Ship-to/Order Address Code" := PurchInvHeader."Ship-to Code";
          "Salespers./Purch. Code" := PurchInvHeader."Purchaser Code";
          "On Hold" := PurchInvHeader."On Hold";
          "Account Type" := "Account Type"::Vendor;
          "Posting Group" := PurchInvHeader."Vendor Posting Group";
          "Account No." := PurchInvHeader."Pay-to Vendor No.";
          "Document Type":= "Document Type"::Invoice;
          "Document No." := PurchInvHeader."No.";
          SetCurrencyFactor(PurchInvHeader."Currency Code",PurchInvHeader."Currency Factor");
          "Payment Method Code" := PurchInvHeader."Payment Method Code";
          "Payment Terms Code"   := PurchInvHeader."Payment Terms Code";
          "VAT Registration No." := PurchInvHeader."VAT Registration No.";
          "Gen. Bus. Posting Group" := '';
          "Tax Area Code" := PurchInvHeader."Tax Area Code";
          "Tax Liable" := PurchInvHeader."Tax Liable";
          "External Document No." := PurchInvHeader."Vendor Invoice No.";
          Amount := - (BasesDocumentos."Base Amount"+BasesDocumentos.Amount);
          "Source Currency Amount" := Amount;

          "Allow Zero-Amount Posting" := TRUE;
          GenJnlPostLine.RunWithCheck(GenJnlLine);
        END;
    end;

    local procedure PostPurchaseInvoicePostVATLine(PurchInvHeader : Record "Purch. Inv. Header");
    var
        GenJnlLine : Record "Gen. Journal Line";
        VATPostingSetup : Record "VAT Posting Setup";
    begin
        SetupIntegrationSII.GET;
        BasesDocumentos.RESET;
        BasesDocumentos.SETRANGE("Type Document",BasesDocumentos."Type Document"::"Purchase Invoice");
        BasesDocumentos.SETRANGE("No. Document",PurchInvHeader."No.");
        IF NOT BasesDocumentos.FINDFIRST THEN
          EXIT;
        REPEAT
          WITH GenJnlLine DO BEGIN
            INIT;
            "Posting Date" := PurchInvHeader."Posting Date";
            "Document Date" := PurchInvHeader."Document Date";
            Description := PurchInvHeader."Posting Description";
            "Shortcut Dimension 1 Code" := PurchInvHeader."Shortcut Dimension 1 Code";
            "Shortcut Dimension 2 Code" := PurchInvHeader."Shortcut Dimension 2 Code";
            "Reason Code" := PurchInvHeader."Reason Code";
            "Source Currency Code" := PurchInvHeader."Currency Code";
            "Currency Factor" := PurchInvHeader."Currency Factor";
            "VAT Base Discount %" := PurchInvHeader."VAT Base Discount %";
            Correction := PurchInvHeader.Correction;
            "Sell-to/Buy-from No." := PurchInvHeader."Sell-to Customer No.";
            "Bill-to/Pay-to No." := PurchInvHeader."Pay-to Vendor No.";
            "Country/Region Code" := PurchInvHeader."VAT Country/Region Code";
            "VAT Registration No." := PurchInvHeader."VAT Registration No.";
            "Source Type" := "Source Type"::Vendor;
            "Source No." := PurchInvHeader."Pay-to Vendor No.";
            "Ship-to/Order Address Code" := PurchInvHeader."Ship-to Code";
            "Salespers./Purch. Code" := PurchInvHeader."Purchaser Code";
            "On Hold" := PurchInvHeader."On Hold";

            "Account Type" := "Account Type"::"G/L Account";
            "Posting Group" := PurchInvHeader."Vendor Posting Group";
            SetupIntegrationSII.TESTFIELD("Purchase Account");
            "Account No." := SetupIntegrationSII."Purchase Account";
            "Document Type":= "Document Type"::Invoice;
            "Document No." := PurchInvHeader."No.";
            SetCurrencyFactor(PurchInvHeader."Currency Code",PurchInvHeader."Currency Factor");
            "Payment Method Code" := PurchInvHeader."Payment Method Code";
            "Payment Terms Code" := PurchInvHeader."Payment Terms Code";
            "VAT Registration No." := PurchInvHeader."VAT Registration No.";
            "Gen. Bus. Posting Group" := PurchInvHeader."Gen. Bus. Posting Group";
            "Tax Area Code" := PurchInvHeader."Tax Area Code";
            "Tax Liable" := PurchInvHeader."Tax Liable";
            SetupIntegrationSII.TESTFIELD("Gen. Prod. Posting Group");
            "Gen. Prod. Posting Group" := SetupIntegrationSII."Gen. Prod. Posting Group";
            "Gen. Posting Type" := "Gen. Posting Type"::Purchase;

            IF BasesDocumentos."VAT Id."<>0 THEN BEGIN
              VATPostingSetup.RESET;
              VATPostingSetup.SETRANGE("VAT Id.",BasesDocumentos."VAT Id.");
              VATPostingSetup.FINDFIRST;
              "VAT Bus. Posting Group" := VATPostingSetup."VAT Bus. Posting Group";
              "VAT Prod. Posting Group" := VATPostingSetup."VAT Prod. Posting Group";
              "VAT %" := VATPostingSetup."VAT %";
              "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
              "VAT Posting" := "VAT Posting"::"Manual VAT Entry";
            END ELSE
              ERROR('No existe configuración IVA');

            Quantity := 1;

            "External Document No." := PurchInvHeader."Vendor Invoice No.";
            Amount := BasesDocumentos."Base Amount";
            "Source Currency Amount" := Amount;
            "VAT Base Amount" := BasesDocumentos."Base Amount";
            "Source Curr. VAT Base Amount" := "VAT Base Amount";
            "VAT Amount" := BasesDocumentos.Amount;
            "Source Curr. VAT Amount" := BasesDocumentos.Amount;
            IF Amount<>0 THEN
              GenJnlPostLine.RunWithCheck(GenJnlLine);
          END;
        UNTIL BasesDocumentos.NEXT=0;
    end;

    local procedure PostPurchaseCrMemoVendor(PurchCrMemoHdr : Record "Purch. Cr. Memo Hdr.");
    var
        GenJnlLine : Record "Gen. Journal Line";
    begin
        Vendor.GET(PurchCrMemoHdr."Pay-to Vendor No.");
        BasesDocumentos.RESET;
        BasesDocumentos.SETRANGE("Type Document",BasesDocumentos."Type Document"::"Purchase Credit Memo");
        BasesDocumentos.SETRANGE("No. Document",PurchCrMemoHdr."No.");
        IF NOT BasesDocumentos.FINDFIRST THEN
          EXIT;

        BasesDocumentos.CALCSUMS("Base Amount",Amount);
        IF BasesDocumentos."Base Amount" = 0 THEN
          EXIT;

        WITH GenJnlLine DO BEGIN
          INIT;
          "Posting Date" := PurchCrMemoHdr."Posting Date";
          "Document Date" := PurchCrMemoHdr."Document Date";
          Description := PurchCrMemoHdr."Posting Description";
          "Shortcut Dimension 1 Code" := PurchCrMemoHdr."Shortcut Dimension 1 Code";
          "Shortcut Dimension 2 Code" := PurchCrMemoHdr."Shortcut Dimension 2 Code";
          "Reason Code" := PurchCrMemoHdr."Reason Code";
          "Source Currency Code" := PurchCrMemoHdr."Currency Code";
          "Currency Factor" := PurchCrMemoHdr."Currency Factor";
          "VAT Base Discount %" := PurchCrMemoHdr."VAT Base Discount %";
          Correction := PurchCrMemoHdr.Correction;
          "Sell-to/Buy-from No." := PurchCrMemoHdr."Buy-from Vendor No.";
          "Bill-to/Pay-to No." := PurchCrMemoHdr."Pay-to Vendor No.";
          "Country/Region Code" := PurchCrMemoHdr."VAT Country/Region Code";
          "VAT Registration No." := PurchCrMemoHdr."VAT Registration No.";
          "Source Type" := "Source Type"::Vendor;
          "Source No." := PurchCrMemoHdr."Pay-to Vendor No.";
          "Ship-to/Order Address Code" := PurchCrMemoHdr."Ship-to Code";
          "Salespers./Purch. Code" := PurchCrMemoHdr."Purchaser Code";
          "On Hold" := PurchCrMemoHdr."On Hold";
          "Account Type" := "Account Type"::Vendor;
          "Posting Group" := PurchCrMemoHdr."Vendor Posting Group";
          "Account No." := PurchCrMemoHdr."Pay-to Vendor No.";
          "Document Type":= "Document Type"::"Credit Memo";
          "Document No." := PurchCrMemoHdr."No.";
          SetCurrencyFactor(PurchCrMemoHdr."Currency Code",PurchCrMemoHdr."Currency Factor");
          "Payment Method Code" := PurchCrMemoHdr."Payment Method Code";
          "Payment Terms Code"   := PurchCrMemoHdr."Payment Terms Code";
          "VAT Registration No." := PurchCrMemoHdr."VAT Registration No.";
          "Gen. Bus. Posting Group" := '';
          "Tax Area Code" := PurchCrMemoHdr."Tax Area Code";
          "Tax Liable" := PurchCrMemoHdr."Tax Liable";
          "External Document No." := PurchCrMemoHdr."Corrected Invoice No.";
            "External Document No." := PurchCrMemoHdr."Vendor Cr. Memo No.";

          Amount := - (BasesDocumentos."Base Amount"+BasesDocumentos.Amount);
          "Source Currency Amount" := Amount;

          "Allow Zero-Amount Posting" := TRUE;
          GenJnlPostLine.RunWithCheck(GenJnlLine);
        END;
    end;

    local procedure PostPurchaseCrMemoPostVATLine(PurchCrMemoHdr : Record "Purch. Cr. Memo Hdr.");
    var
        GenJnlLine : Record "Gen. Journal Line";
        VATPostingSetup : Record "VAT Posting Setup";
    begin
        SetupIntegrationSII.GET;
        BasesDocumentos.RESET;
        BasesDocumentos.SETRANGE("Type Document",BasesDocumentos."Type Document"::"Purchase Credit Memo");
        BasesDocumentos.SETRANGE("No. Document",PurchCrMemoHdr."No.");
        IF NOT BasesDocumentos.FINDFIRST THEN
          EXIT;
        REPEAT
          WITH GenJnlLine DO BEGIN
            INIT;
            "Posting Date" := PurchCrMemoHdr."Posting Date";
            "Document Date" := PurchCrMemoHdr."Document Date";
            Description := PurchCrMemoHdr."Posting Description";
            "Shortcut Dimension 1 Code" := PurchCrMemoHdr."Shortcut Dimension 1 Code";
            "Shortcut Dimension 2 Code" := PurchCrMemoHdr."Shortcut Dimension 2 Code";
            "Reason Code" := PurchCrMemoHdr."Reason Code";
            "Source Currency Code" := PurchCrMemoHdr."Currency Code";
            "Currency Factor" := PurchCrMemoHdr."Currency Factor";
            "VAT Base Discount %" := PurchCrMemoHdr."VAT Base Discount %";
            Correction := PurchCrMemoHdr.Correction;
            "Sell-to/Buy-from No." := PurchCrMemoHdr."Sell-to Customer No.";
            "Bill-to/Pay-to No." := PurchCrMemoHdr."Pay-to Vendor No.";
            "Country/Region Code" := PurchCrMemoHdr."VAT Country/Region Code";
            "VAT Registration No." := PurchCrMemoHdr."VAT Registration No.";
            "Source Type" := "Source Type"::Vendor;
            "Source No." := PurchCrMemoHdr."Pay-to Vendor No.";
            "Ship-to/Order Address Code" := PurchCrMemoHdr."Ship-to Code";
            "Salespers./Purch. Code" := PurchCrMemoHdr."Purchaser Code";
            "On Hold" := PurchCrMemoHdr."On Hold";

            "Account Type" := "Account Type"::"G/L Account";
            "Posting Group" := PurchCrMemoHdr."Vendor Posting Group";
            SetupIntegrationSII.TESTFIELD("Purchase Account");
            "Account No." := SetupIntegrationSII."Purchase Account";
            "Document Type":= "Document Type"::"Credit Memo";
            "Document No." := PurchCrMemoHdr."No.";
            SetCurrencyFactor(PurchCrMemoHdr."Currency Code",PurchCrMemoHdr."Currency Factor");
            "Payment Method Code" := PurchCrMemoHdr."Payment Method Code";
            "Payment Terms Code" := PurchCrMemoHdr."Payment Terms Code";
            "VAT Registration No." := PurchCrMemoHdr."VAT Registration No.";
            "Gen. Bus. Posting Group" := PurchCrMemoHdr."Gen. Bus. Posting Group";
            "Tax Area Code" := PurchCrMemoHdr."Tax Area Code";
            "Tax Liable" := PurchCrMemoHdr."Tax Liable";

            SetupIntegrationSII.TESTFIELD("Gen. Prod. Posting Group");
            "Gen. Prod. Posting Group" := SetupIntegrationSII."Gen. Prod. Posting Group";
            "Gen. Posting Type" := "Gen. Posting Type"::Purchase;

            IF BasesDocumentos."VAT Id."<>0 THEN BEGIN
              VATPostingSetup.RESET;
              VATPostingSetup.SETRANGE("VAT Id.",BasesDocumentos."VAT Id.");
              VATPostingSetup.FINDFIRST;
              "VAT Bus. Posting Group" := VATPostingSetup."VAT Bus. Posting Group";
              "VAT Prod. Posting Group" := VATPostingSetup."VAT Prod. Posting Group";
              "VAT %" := VATPostingSetup."VAT %";
              "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
              "VAT Posting" := "VAT Posting"::"Manual VAT Entry";
            END ELSE
              ERROR('No existe configuración IVA');

            Quantity := 1;

            "External Document No." := PurchCrMemoHdr."Vendor Cr. Memo No.";
            Amount := BasesDocumentos."Base Amount";
            "Source Currency Amount" := Amount;
            "VAT Base Amount" := BasesDocumentos."Base Amount";
            "Source Curr. VAT Base Amount" := "VAT Base Amount";
            "VAT Amount" := BasesDocumentos.Amount;
            "Source Curr. VAT Amount" := BasesDocumentos.Amount;
            IF Amount<>0 THEN
              GenJnlPostLine.RunWithCheck(GenJnlLine);
          END;
        UNTIL BasesDocumentos.NEXT=0;
    end;

    procedure ImportPackageXMLFromClient() : Boolean;
    var
        ServerFileName : Text;
        DecompressedFileName : Text;
        ConfigXMLExchange : Codeunit "Config. XML Exchange";
        ConfigPackage : Record "Config. Package";
        ConfigPackageTable : Record "Config. Package Table";
        ConfigPackageMgt : Codeunit "Config. Package Management";
    begin
        ServerFileName := 'C:\Proyectos\SII\PackageSIICONFIG.rapidstart';
        //CVP 
        //DecompressedFileName := ConfigXMLExchange.DecompressPackage(ServerFileName);
        //IF ConfigXMLExchange.ImportPackageXML(DecompressedFileName) THEN BEGIN
        //  ConfigPackage.GET('SIICONFIG');
        //  ConfigPackageTable.SETRANGE("Package Code",'SIICONFIG');
        //  ConfigPackageMgt.ApplyPackage(ConfigPackage,ConfigPackageTable,TRUE);
        //END;
        EXIT(FALSE);
    end;

    [EventSubscriber(ObjectType::Codeunit, 2, 'OnCompanyInitialize', '', false, false)]
    local procedure OnInitializeCompany();
    begin
        ImportPackageXMLFromClient;
        CompanyInformation.RUN;
    end;
}

