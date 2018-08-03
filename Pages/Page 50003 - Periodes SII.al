page 50003 "Periodes SII"
{
    PageType = List;
    SourceTable = "Periodes SII";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Year;Year)
                {
                }
                field(Periode;Periode)
                {
                }
                field("Date Initial";"Date Initial")
                {
                }
                field("Date End";"Date End")
                {
                }
                field(Status;Status)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Functions")
            {
                CaptionML = ENU='F&unctions',
                            ESP='Acci&ones';
                Image = "Action";
                action("Crear Periodos")
                {

                    trigger OnAction();
                    var
                        Year : Integer;
                        Per : Code[2];
                        i : Integer;
                        PeriodoSII : Record "Periodes SII";
                        PeriodoSIINew : Record "Periodes SII";
                    begin
                        PeriodoSII.RESET;
                        Per := '01';
                        IF NOT PeriodoSII.FINDLAST THEN
                          PeriodoSIINew.Year := '2017'
                        ELSE
                          PeriodoSIINew.Year := INCSTR(PeriodoSII.Year);

                        EVALUATE(Year,PeriodoSIINew.Year);

                        PeriodoSIINew.Periode := Per;
                        PeriodoSIINew."Date Initial":=  DMY2DATE(1,1,Year );
                        PeriodoSIINew."Date End" := DMY2DATE(1,1,Year );
                        PeriodoSIINew.INSERT;

                        FOR i:=1 TO 56 DO BEGIN
                          Per := INCSTR(Per);
                          PeriodoSIINew.Periode := Per;
                          PeriodoSIINew."Date Initial" := CALCDATE('+1D',PeriodoSIINew."Date End");
                          PeriodoSIINew."Date End" := CALCDATE('+6D',PeriodoSIINew."Date Initial");
                          PeriodoSIINew.INSERT;
                        END;
                    end;
                }
                //separator()
                //{
                //}
                action("Operaciones periodo")
                {
                    Image = Documents;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction();
                    begin
                        TESTFIELD(Status,Status::Open);
                        InsertarLineasDeclaracion;
                        COMMIT;
                        CLEAR(PageSIIDeclarationLine);
                        PageSIIDeclarationLine.SETRECORD(SIIDeclarationLine);
                        PageSIIDeclarationLine.SETTABLEVIEW(SIIDeclarationLine);
                        PageSIIDeclarationLine.RUNMODAL;
                    end;
                }
            }
            group("F&unctions")
            {
                CaptionML = ENU='F&unctions',
                            ESP='Importar';
                Image = "Action";
                action("Importar fichero")
                {

                    trigger OnAction();
                    begin
                        //CVP 
                        //CLEAR(SII_Import);
                        //SII_Import.RUN;
                        //SIIManagementI.RUN;
                    end;
                }
            }
        }
    }

    var
        HCFV : Record "Sales Invoice Header";
        CustLedgerEntry : Record "Cust. Ledger Entry";
        VendorLedgerEntry : Record "Vendor Ledger Entry";
        SIIDeclarationLine : Record "SII Declaration Line";
        Customer : Record "Customer";
        Vendor : Record "Vendor";
        PageSIIDeclarationLine : Page "SII Declaration Line";
        //SII_Import : XMLport "SII_Import";
        //SIIManagementI : Codeunit "SII Management Integration";

    local procedure InsertarLineasDeclaracion();
    var
        SalesInvoiceHeader : Record "Sales Invoice Header";
        SalesCrMemoHeader : Record "Sales Cr.Memo Header";
        PurchInvHeader : Record "Purch. Inv. Header";
        PurchCrMemoHdr : Record "Purch. Cr. Memo Hdr.";
    begin
        SIIDeclarationLine.DELETEALL;
        CustLedgerEntry.SETRANGE("Posting Date","Date Initial","Date End");
        CustLedgerEntry.SETFILTER("Document Type",'%1|%2',CustLedgerEntry."Document Type"::Invoice,CustLedgerEntry."Document Type"::"Credit Memo");
        IF CustLedgerEntry.FINDFIRST THEN REPEAT
          SIIDeclarationLine.INIT;
          SIIDeclarationLine.Type := SIIDeclarationLine.Type::Sale;
          SIIDeclarationLine."No. mov." := CustLedgerEntry."Entry No.";
          SIIDeclarationLine."Document Date" := CustLedgerEntry."Document Date";
          SIIDeclarationLine."Posting Date" := CustLedgerEntry."Posting Date";
          SIIDeclarationLine."Document No." := CustLedgerEntry."Document No.";
          SIIDeclarationLine."VAT Document No." := CustLedgerEntry."Document No.";

          IF Customer.GET(CustLedgerEntry."Customer No.") THEN BEGIN
            SIIDeclarationLine."Country Code" := Customer."Country/Region Code";
            SIIDeclarationLine."Customer/Vendor No." := Customer."No.";
            SIIDeclarationLine."Customer/Vendor Name" := Customer.Name;
          END ELSE
            Customer.INIT;
          IF CustLedgerEntry."Document Type"=CustLedgerEntry."Document Type"::Invoice THEN BEGIN
            SIIDeclarationLine."Document Type":= SIIDeclarationLine."Document Type"::Invoice;
            IF SalesInvoiceHeader.GET(CustLedgerEntry."Document No.") THEN BEGIN
              SIIDeclarationLine."VAT Registration No." := SalesInvoiceHeader."VAT Registration No."
            END ELSE BEGIN
              SIIDeclarationLine."VAT Registration No." := Customer."VAT Registration No.";
            END
          END ELSE BEGIN
            SIIDeclarationLine."Document Type":= SIIDeclarationLine."Document Type"::"Credit Memo";
            IF SalesCrMemoHeader.GET(CustLedgerEntry."Document No.") THEN BEGIN
              SIIDeclarationLine."VAT Registration No." := SalesCrMemoHeader."VAT Registration No."
            END ELSE BEGIN
              SIIDeclarationLine."VAT Registration No." := Customer."VAT Registration No.";
            END
          END;
          SIIDeclarationLine.INSERT;
          UNTIL CustLedgerEntry.NEXT=0;

        VendorLedgerEntry.SETRANGE("Posting Date","Date Initial","Date End");
        VendorLedgerEntry.SETFILTER("Document Type",'%1|%2',VendorLedgerEntry."Document Type"::Invoice,VendorLedgerEntry."Document Type"::"Credit Memo");
        IF VendorLedgerEntry.FINDFIRST THEN REPEAT
          SIIDeclarationLine.INIT;
          SIIDeclarationLine.Type := SIIDeclarationLine.Type::Purchase;
          SIIDeclarationLine."No. mov." := VendorLedgerEntry."Entry No.";
          SIIDeclarationLine."Document Date" := VendorLedgerEntry."Document Date";
          SIIDeclarationLine."Posting Date" := VendorLedgerEntry."Posting Date";
          SIIDeclarationLine."Document No." := VendorLedgerEntry."Document No.";
          SIIDeclarationLine."VAT Document No." := VendorLedgerEntry."Document No.";

          IF Vendor.GET(VendorLedgerEntry."Vendor No.") THEN BEGIN
            SIIDeclarationLine."Country Code" := Vendor."Country/Region Code";
            SIIDeclarationLine."Customer/Vendor No." := Vendor."No.";
            SIIDeclarationLine."Customer/Vendor Name" := Vendor.Name;
          END ELSE
            Vendor.INIT;

          SIIDeclarationLine."Document No." := VendorLedgerEntry."Document No.";
          SIIDeclarationLine."VAT Document No." := VendorLedgerEntry."Document No.";

          IF VendorLedgerEntry."Document Type"=VendorLedgerEntry."Document Type"::Invoice THEN BEGIN
            SIIDeclarationLine."Document Type":= SIIDeclarationLine."Document Type"::Invoice;
            IF PurchInvHeader.GET(VendorLedgerEntry."Document No.") THEN BEGIN
              SIIDeclarationLine."VAT Registration No." := PurchInvHeader."VAT Registration No."
            END ELSE BEGIN
              SIIDeclarationLine."VAT Registration No." := Vendor."VAT Registration No.";
            END
          END ELSE BEGIN
            SIIDeclarationLine."Document Type":= SIIDeclarationLine."Document Type"::"Credit Memo";
            IF PurchCrMemoHdr.GET(VendorLedgerEntry."Document No.") THEN BEGIN
              SIIDeclarationLine."VAT Registration No." := PurchCrMemoHdr."VAT Registration No."
            END ELSE BEGIN
              SIIDeclarationLine."VAT Registration No." := Vendor."VAT Registration No.";
            END

          END;
          SIIDeclarationLine.INSERT;
          UNTIL CustLedgerEntry.NEXT=0;
    end;
}

