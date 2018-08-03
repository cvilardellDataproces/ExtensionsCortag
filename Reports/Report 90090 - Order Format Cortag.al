report 90090 "Order Format Cortag"
{
    // version NAVW110.00.00.18197,NAVES10.00.00.18197

    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Order Format Cortag.rdlc';
    CaptionML = ENU='Order',
                ESP='Pedido';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Purchase Header";"Purchase Header")
        {
            DataItemTableView = SORTING("Document Type","No.") 
                                WHERE("Document Type"=CONST(Order));
            RequestFilterFields = "No.","Buy-from Vendor No.","No. Printed";
            RequestFilterHeadingML = ENU='Purchase Order',
                                     ESP='Pedido compra';
            column(DocType_PurchHeader;"Document Type")
            {
            }
            column(No_PurchHeader;"No.")
            {
            }
            column(HomepageCaption;HomepageCaptionLbl)
            {
            }
            column(EmailCaption;EmailCaptionLbl)
            {
            }
            column(AmtCaption;AmtCaptionLbl)
            {
            }
            column(PaymentTermsCaption;PaymentTermsCaptionLbl)
            {
            }
            column(ShpMethodCaption;ShpMethodCaptionLbl)
            {
            }
            column(PrePmtTermsDescCaption;PrePmtTermsDescCaptionLbl)
            {
            }
            column(DocDateCaption;DocDateCaptionLbl)
            {
            }
            column(AllowInvDiscCaption;AllowInvDiscCaptionLbl)
            {
            }
            column(portesCaption;portesCaptionLbl)
            {
            }
            column(FechaentregaCaption;FechaentregaCaptionlbl)
            {
            }
            column(PaymentTermsDescription;PaymentTerms.Description)
            {
            }
            column(ShipmentMethodDescription;ShipmentMethod.Description)
            {
            }
            column(PaymentMethodDescription;PaymentMethod.Description)
            {
            }
            column(ShipToAddr1;ShipToAddr[1])
            {
            }
            column(ShipToAddr2;ShipToAddr[2])
            {
            }
            column(ShipToAddr3;ShipToAddr[3])
            {
            }
            column(ShipToAddr4;ShipToAddr[4])
            {
            }
            column(ShipToAddr5;ShipToAddr[5])
            {
            }
            column(ShipToAddr6;ShipToAddr[6])
            {
            }
            column(ShipToAddr7;ShipToAddr[7])
            {
            }
            column(ShipToAddr8;ShipToAddr[8])
            {
            }
            column(ShiptoAddCaption;ShiptoAddCaptionLbl)
            {
            }
            dataitem(CopyLoop;"Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;"Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                    column(OrderCopyText;STRSUBSTNO(Text004,CopyText))
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(CompanyInfoHomepage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoVATRegNo;CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo;CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName;CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccNo;CompanyInfo."Bank Account No.")
                    {
                    }
                    column(DocDate_PurchHeader;"Purchase Header"."Document Date")
                    {
                    }
                    column(VATNoText;VATRegNoCaptionLbl)
                    {
                    }
                    column(VATRegNo_PurchHeader;"Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(PurchaserText;PurchaserText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourReference_PurchHeader;"Purchase Header"."Your Reference")
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(BuyfromVenNo_PurchHeader;"Purchase Header"."Buy-from Vendor No.")
                    {
                    }
                    column(BuyFromAddr1;BuyFromAddr[1])
                    {
                    }
                    column(BuyFromAddr2;BuyFromAddr[2])
                    {
                    }
                    column(BuyFromAddr3;BuyFromAddr[3])
                    {
                    }
                    column(BuyFromAddr4;BuyFromAddr[4])
                    {
                    }
                    column(BuyFromAddr5;BuyFromAddr[5])
                    {
                    }
                    column(BuyFromAddr6;BuyFromAddr[6])
                    {
                    }
                    column(BuyFromAddr7;BuyFromAddr[7])
                    {
                    }
                    column(BuyFromAddr8;BuyFromAddr[8])
                    {
                    }
                    column(PricesIncludingVAT_PurchHeader;"Purchase Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(VATBaseDisc_PurchHeader;"Purchase Header"."VAT Base Discount %")
                    {
                    }
                    column(PricesInclVATtxt;PricesInclVATtxt)
                    {
                    }
                    column(ShowInternalInfo;ShowInternalInfo)
                    {
                    }
                    column(DimText;DimText)
                    {
                    }
                    column(PrepmtPayTermsDesc;PrepmtPaymentTerms.Description)
                    {
                    }
                    column(PayTermsDesc;PaymentTerms.Description)
                    {
                    }
                    column(ShipMethodDesc;ShipmentMethod.Description)
                    {
                    }
                    column(PhoneNoCaption;PhoneNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption;VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption;GiroNoCaptionLbl)
                    {
                    }
                    column(BankCaption;BankCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption;BankAccNoCaptionLbl)
                    {
                    }
                    column(OrderNoCaption;OrderNoCaptionLbl)
                    {
                    }
                    column(PageCaption;PageCaptionLbl)
                    {
                    }
                    column(BuyfromVenNo_PurchHeaderCaption;text013)
                    {
                    }
                    column(PricesIncludingVAT_PurchHeaderCaption;"Purchase Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(CACCaption;CACCaptionLbl)
                    {
                    }
                    column(CampoPortes;CampoPortes)
                    {
                    }
                    column(Fechaentrega;"Purchase Header"."Expected Receipt Date")
                    {
                    }
                    column(CodDivisa;divi2)
                    {
                    }
                    column(TotalText;TotalText)
                    {
                    }
                    column(TotalAmtInclVAT;TotalAmountInclVAT)
                    {
                        AutoFormatExpression = "Purchase Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATAmt;VATAmount)
                    {
                        AutoFormatExpression = "Purchase Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(TotalAmt;TotalAmount)
                    {
                        AutoFormatExpression = "Purchase Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(text001;text001)
                    {
                    }
                    column(text011;text011)
                    {
                    }
                    column(text012;text012)
                    {
                    }
                    column(ValorDesc;valorDesc)
                    {
                    }
                    column(Observaciones;Observaciones)
                    {
                    }
                    column(text014;text014)
                    {
                    }
                    dataitem(DimensionLoop1;"Integer")
                    {
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..));
                        column(HdrDimsCaption;HdrDimsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                              IF NOT DimSetEntry1.FINDSET THEN
                                CurrReport.BREAK;
                            END ELSE
                              IF NOT Continue THEN
                                CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                              OldDimText := DimText;
                              IF DimText = '' THEN
                                DimText := STRSUBSTNO('%1 %2',DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code")
                              ELSE
                                DimText :=
                                  STRSUBSTNO(
                                    '%1, %2 %3',DimText,
                                    DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code");
                              IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                DimText := OldDimText;
                                Continue := TRUE;
                                EXIT;
                              END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowInternalInfo THEN
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem("Purchase Line";"Purchase Line")
                    {
                        DataItemLink = "Document Type"=FIELD("Document Type"), "Document No."=FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type","Document No.","Line No.");

                        trigger OnPreDataItem();
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(PurchLineLineAmt;PurchLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Desc_PurchLine;"Purchase Line".Description)
                        {
                        }
                        column(LineNo_PurchLine;"Purchase Line"."Line No.")
                        {
                        }
                        column(AllowInvDisctxt;AllowInvDisctxt)
                        {
                        }
                        column(Type_PurchLine;FORMAT("Purchase Line".Type,0,2))
                        {
                        }
                        column(No_PurchLine;"Purchase Line"."No.")
                        {
                        }
                        column(Quantity_PurchLine;"Purchase Line".Quantity)
                        {
                        }
                        column(UnitofMeasure_PurchLine;"Purchase Line"."Unit of Measure")
                        {
                        }
                        column(DirectUnitCost_PurchLine;"Purchase Line"."Direct Unit Cost")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDisc_PurchLine;"Purchase Line"."Line Discount %")
                        {
                        }
                        column(LineAmt_PurchLine;"Purchase Line"."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AllowInvDisc_PurchLine;"Purchase Line"."Allow Invoice Disc.")
                        {
                        }
                        column(VATIdentifier_PurchLine;"Purchase Line"."VAT Identifier")
                        {
                        }
                        column(InvDiscAmt_PurchLine;-PurchLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Purchase Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmtInvDiscAmt_PurchLine;-PurchLine."Pmt. Disc. Rcd. Amount")
                        {
                            AutoFormatExpression = "Purchase Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATText;TotalInclVATText)
                        {
                        }
                        column(VATAmtLineText;VATAmountLine.VATAmountText)
                        {
                        }
                        column(VATAmt1;VATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalExclVATText;TotalExclVATText)
                        {
                        }
                        column(VATDiscAmt;-VATDiscountAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseAmt;VATBaseAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmtInclVAT1;TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal;TotalSubTotal)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvDiscAmt;TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmt1;TotalAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(DirectUnitCostCaption;DirectUnitCostCaptionLbl)
                        {
                        }
                        column(DiscountPercentCaption;DiscountPercentCaptionLbl)
                        {
                        }
                        column(InvDiscAmtCaption;InvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubtotalCaption;SubtotalCaptionLbl)
                        {
                        }
                        column(TotalText1;TotalTextLbl)
                        {
                        }
                        column(VATDiscountAmtCaption;VATDiscountAmtCaptionLbl)
                        {
                        }
                        column(Desc_PurchLineCaption;"Purchase Line".FIELDCAPTION(Description))
                        {
                        }
                        column(No_PurchLineCaption;CodigocaptionLbl)
                        {
                        }
                        column(Quantity_PurchLineCaption;Cantidadcaption)
                        {
                        }
                        column(UnitofMeasure_PurchLineCaption;UnidadCaption)
                        {
                        }
                        column(VATIdentifier_PurchLineCaption;"Purchase Line".FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(Codigocaption;CodigocaptionLbl)
                        {
                        }
                        dataitem(DimensionLoop2;"Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..));
                            column(LineDimsCaption;LineDimsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                  IF NOT DimSetEntry2.FINDSET THEN
                                    CurrReport.BREAK;
                                END ELSE
                                  IF NOT Continue THEN
                                    CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                  OldDimText := DimText;
                                  IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2',DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code")
                                  ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3',DimText,
                                        DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code");
                                  IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                  END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT ShowInternalInfo THEN
                                  CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID","Purchase Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                              PurchLine.FIND('-')
                            ELSE
                              PurchLine.NEXT;
                            "Purchase Line" := PurchLine;

                            IF NOT "Purchase Header"."Prices Including VAT" AND
                               (PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT")
                            THEN
                              PurchLine."Line Amount" := 0;

                            IF (PurchLine.Type = PurchLine.Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                              "Purchase Line"."No." := '';
                            AllowInvDisctxt := FORMAT("Purchase Line"."Allow Invoice Disc.");
                            TotalSubTotal += "Purchase Line"."Line Amount";
                            TotalInvoiceDiscountAmount -= "Purchase Line"."Inv. Discount Amount";
                            TotalAmount += "Purchase Line".Amount;

                            LineasConsumidas += 1;
                        end;

                        trigger OnPostDataItem();
                        begin
                            PurchLine.DELETEALL;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := PurchLine.FIND('+');
                            WHILE MoreLines AND (PurchLine.Description = '') AND (PurchLine."Description 2" = '') AND
                                  (PurchLine."No." = '') AND (PurchLine.Quantity = 0) AND
                                  (PurchLine.Amount = 0)
                            DO
                              MoreLines := PurchLine.NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                              CurrReport.BREAK;
                            PurchLine.SETRANGE("Line No.",0,PurchLine."Line No.");
                            SETRANGE(Number,1,PurchLine.COUNT);
                            CurrReport.CREATETOTALS(PurchLine."Line Amount",PurchLine."Inv. Discount Amount",PurchLine."Pmt. Disc. Rcd. Amount");

                            LineasConsumidas := 0;
                        end;
                    }
                    dataitem(Lineas;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(Lineas_Number;Number)
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            AuxLinies := LineasConsumidas;
                            IF AuxLinies > 30 THEN
                              TotalLineas := 30
                            ELSE
                              TotalLineas := 15;
                            IF AuxLinies > TotalLineas THEN BEGIN
                                REPEAT
                                AuxLinies := AuxLinies - TotalLineas;
                              UNTIL TotalLineas > AuxLinies;
                            END;

                            //MaxLinies := MaxLinies + linies;
                            SETRANGE(Number,1,TotalLineas - AuxLinies);
                        end;
                    }
                    dataitem(VATCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATECBase;VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt;VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt;VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt;VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmtPmtDiscGivenAmt;VATAmountLine."Invoice Discount Amount" + VATAmountLine."Pmt. Disc. Given Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineECAmt;VATAmountLine."EC Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT1;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:6;
                        }
                        column(VATAmtLineVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmtLineInvDiscAmt1;VATAmountLine."Invoice Discount Amount" + VATAmountLine."Pmt. Disc. Given Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineEC;VATAmountLine."EC %")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATPercentCaption;VATPercentCaptionLbl)
                        {
                        }
                        column(VATBaseCaption;VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmtCaption;VATAmtCaptionLbl)
                        {
                        }
                        column(VATAmtSpecCaption;VATAmtSpecCaptionLbl)
                        {
                        }
                        column(VATIdentCaption;VATIdentCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption;InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption;LineAmtCaptionLbl)
                        {
                        }
                        column(InvDiscAmt1Caption;InvDiscAmt1CaptionLbl)
                        {
                        }
                        column(ECAmtCaption;ECAmtCaptionLbl)
                        {
                        }
                        column(ECCaption;ECCaptionLbl)
                        {
                        }
                        column(TotalCaption;TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (VATAmount = 0) AND (VATAmountLine."VAT %" + VATAmountLine."EC %" = 0) THEN
                              CurrReport.BREAK;
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount",VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount",VATAmountLine."VAT Base",VATAmountLine."VAT Amount",
                              VATAmountLine."EC Amount",VATAmountLine."Pmt. Disc. Given Amount");
                        end;
                    }
                    dataitem(VATCounterLCY;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALExchRate;VALExchRate)
                        {
                        }
                        column(VALSpecLCYHdr;VALSpecLCYHeader)
                        {
                        }
                        column(VALVATAmtLCY;VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATBaseLCY;VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT2;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:5;
                        }
                        column(VATAmtLineVATIdentifier3;VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Purchase Header"."Posting Date","Purchase Header"."Currency Code","Purchase Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Purchase Header"."Posting Date","Purchase Header"."Currency Code","Purchase Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Purchase Header"."Currency Code" = '') OR
                               (VATAmountLine.GetTotalVATAmount = 0)
                            THEN
                              CurrReport.BREAK;

                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                              VALSpecLCYHeader := Text007 + Text008
                            ELSE
                              VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Purchase Header"."Posting Date","Purchase Header"."Currency Code",1);
                            VALExchRate := STRSUBSTNO(Text009,CurrExchRate."Relational Exch. Rate Amount",CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                    }
                    dataitem(Total2;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                        column(PaytoVendNo_PurchHeader;"Purchase Header"."Pay-to Vendor No.")
                        {
                        }
                        column(VendAddr8;VendAddr[8])
                        {
                        }
                        column(VendAddr7;VendAddr[7])
                        {
                        }
                        column(VendAddr6;VendAddr[6])
                        {
                        }
                        column(VendAddr5;VendAddr[5])
                        {
                        }
                        column(VendAddr4;VendAddr[4])
                        {
                        }
                        column(VendAddr3;VendAddr[3])
                        {
                        }
                        column(VendAddr2;VendAddr[2])
                        {
                        }
                        column(VendAddr1;VendAddr[1])
                        {
                        }
                        column(PaymentDetailsCaption;PaymentDetailsCaptionLbl)
                        {
                        }
                        column(VendNoCaption;VendNoCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF "Purchase Header"."Buy-from Vendor No." = "Purchase Header"."Pay-to Vendor No." THEN
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem(Total3;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                        column(SelltoCustNo_PurchHeader;"Purchase Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr11;ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr21;ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr31;ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr41;ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr51;ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr61;ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr71;ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr81;ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddCaption1;ShiptoAddCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_PurchHeaderCaption;"Purchase Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF ("Purchase Header"."Sell-to Customer No." = '') AND (ShipToAddr[1] = '') THEN
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem(PrepmtLoop;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..));
                        column(PrepmtLineAmt;PrepmtLineAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvBufGLAccNo;PrepmtInvBuf."G/L Account No.")
                        {
                        }
                        column(PrepmtInvBufDesc;PrepmtInvBuf.Description)
                        {
                        }
                        column(TotalExclVATText1;TotalExclVATText)
                        {
                        }
                        column(PrepmtVATAmtLineTxt;PrepmtVATAmountLine.VATAmountText)
                        {
                        }
                        column(PrepmtVATAmt;PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATTxt1;TotalInclVATText)
                        {
                        }
                        column(PrepmtInvBufAmtPrepmtVATAmt;PrepmtInvBuf.Amount + PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtTotalAmtInclVAT;PrepmtTotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Number_IntegerLine;Number)
                        {
                        }
                        column(DescCaption;DescCaptionLbl)
                        {
                        }
                        column(GLAccNoCaption;GLAccNoCaptionLbl)
                        {
                        }
                        column(PrepmtSpecCaption;PrepmtSpecCaptionLbl)
                        {
                        }
                        column(PrepmtLoopLineNo;PrepmtLoopLineNo)
                        {
                        }
                        dataitem(PrepmtDimLoop;"Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..));
                            column(DummyColumn;0)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                  IF NOT PrepmtDimSetEntry.FINDSET THEN
                                    CurrReport.BREAK;
                                END ELSE
                                  IF NOT Continue THEN
                                    CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                  OldDimText := DimText;
                                  IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2',PrepmtDimSetEntry."Dimension Code",PrepmtDimSetEntry."Dimension Value Code")
                                  ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3',DimText,
                                        PrepmtDimSetEntry."Dimension Code",PrepmtDimSetEntry."Dimension Value Code");
                                  IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                  END;
                                UNTIL PrepmtDimSetEntry.NEXT = 0;

                                IF Number > 1 THEN
                                  PrepmtLineAmount := 0;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT ShowInternalInfo THEN
                                  CurrReport.BREAK;

                                PrepmtDimSetEntry.SETRANGE("Dimension Set ID",PrepmtInvBuf."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                              IF NOT PrepmtInvBuf.FIND('-') THEN
                                CurrReport.BREAK;
                            END ELSE
                              IF PrepmtInvBuf.NEXT = 0 THEN
                                CurrReport.BREAK;

                            IF "Purchase Header"."Prices Including VAT" THEN
                              PrepmtLineAmount := PrepmtInvBuf."Amount Incl. VAT"
                            ELSE
                              PrepmtLineAmount := PrepmtInvBuf.Amount;

                            PrepmtLoopLineNo += 1;
                        end;

                        trigger OnPreDataItem();
                        begin
                            CurrReport.CREATETOTALS(
                              PrepmtInvBuf.Amount,PrepmtInvBuf."Amount Incl. VAT",
                              PrepmtVATAmountLine."Line Amount",PrepmtVATAmountLine."VAT Base",
                              PrepmtVATAmountLine."VAT Amount",
                              PrepmtLineAmount);
                            PrepmtLoopLineNo := 0;
                        end;
                    }
                    dataitem(PrepmtVATCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(PrepmtVATAmtLineVATAmt;PrepmtVATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVATBase;PrepmtVATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineLineAmt;PrepmtVATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVAT;PrepmtVATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:5;
                        }
                        column(PrepmtVATAmtLineVATIdentifier;PrepmtVATAmountLine."VAT Identifier")
                        {
                        }
                        column(PrepmtVATAmtSpecCaption;PrepmtVATAmtSpecCaptionLbl)
                        {
                        }
                        column(PrepmtVATPercentCaption;VATPercentCaptionLbl)
                        {
                        }
                        column(PrepmtVATBaseCaption;VATBaseCaptionLbl)
                        {
                        }
                        column(PrepmtVATAmtCaption;VATAmtCaptionLbl)
                        {
                        }
                        column(PrepmtVATIdentCaption;VATIdentCaptionLbl)
                        {
                        }
                        column(PrepmtLineAmtCaption;LineAmtCaptionLbl)
                        {
                        }
                        column(PrepmtTotalCaption;TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            PrepmtVATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number,1,PrepmtVATAmountLine.COUNT);
                        end;
                    }
                    dataitem(PrepmtTotal;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));

                        trigger OnPreDataItem();
                        begin
                            IF NOT PrepmtInvBuf.FIND('-') THEN
                              CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                var
                    PrepmtPurchLine : Record "Purchase Line" temporary;
                    TempPurchLine : Record "Purchase Line" temporary;
                begin
                    CLEAR(PurchLine);
                    CLEAR(PurchPost);
                    PurchLine.DELETEALL;
                    VATAmountLine.DELETEALL;
                    PurchPost.GetPurchLines("Purchase Header",PurchLine,0);
                    PurchLine.CalcVATAmountLines(0,"Purchase Header",PurchLine,VATAmountLine);
                    //CVP EXT
                    //PurchLine.UpdateVATOnLines(0,"Purchase Header",PurchLine,VATAmountLine);
                    //CVP FI
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Purchase Header"."Currency Code","Purchase Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;
                    IF (VATAmountLine."VAT Calculation Type" = VATAmountLine."VAT Calculation Type"::"Reverse Charge VAT") AND
                       "Purchase Header"."Prices Including VAT"
                    THEN BEGIN
                      VATBaseAmount := VATAmountLine.GetTotalLineAmount(FALSE,"Purchase Header"."Currency Code");
                      TotalAmountInclVAT := VATAmountLine.GetTotalLineAmount(FALSE,"Purchase Header"."Currency Code");
                    END;

                    PrepmtInvBuf.DELETEALL;
                    PurchPostPrepmt.GetPurchLines("Purchase Header",0,PrepmtPurchLine);
                    IF NOT PrepmtPurchLine.ISEMPTY THEN BEGIN
                      PurchPostPrepmt.GetPurchLinesToDeduct("Purchase Header",TempPurchLine);
                      IF NOT TempPurchLine.ISEMPTY THEN
                        PurchPostPrepmt.CalcVATAmountLines("Purchase Header",TempPurchLine,PrePmtVATAmountLineDeduct,1);
                    END;
                    PurchPostPrepmt.CalcVATAmountLines("Purchase Header",PrepmtPurchLine,PrepmtVATAmountLine,0);
                    PrepmtVATAmountLine.DeductVATAmountLine(PrePmtVATAmountLineDeduct);
                    PurchPostPrepmt.UpdateVATOnLines("Purchase Header",PrepmtPurchLine,PrepmtVATAmountLine,0);
                    PurchPostPrepmt.BuildInvLineBuffer2("Purchase Header",PrepmtPurchLine,0,PrepmtInvBuf);
                    PrepmtVATAmount := PrepmtVATAmountLine.GetTotalVATAmount;
                    PrepmtVATBaseAmount := PrepmtVATAmountLine.GetTotalVATBase;
                    PrepmtTotalAmountInclVAT := PrepmtVATAmountLine.GetTotalAmountInclVAT;

                    IF Number > 1 THEN
                      CopyText := FormatDocument.GetCOPYText;
                    CurrReport.PAGENO := 1;
                    OutputNo := OutputNo + 1;

                    TotalSubTotal := 0;
                    TotalAmount := 0;
                    TotalInvoiceDiscountAmount := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT CurrReport.PREVIEW THEN
                      CODEUNIT.RUN(CODEUNIT::"Purch.Header-Printed","Purchase Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 0;
                end;
            }

            trigger OnAfterGetRecord();
            begin

                LineasConsumidas := 0;

                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields("Purchase Header");
                FormatDocumentFields("Purchase Header");
                PricesInclVATtxt := FORMAT("Prices Including VAT");

                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");

                CLEAR(CompanyAddr);
                CompanyAddr[1] := CompanyInfo.Name;
                CompanyAddr[2] := CompanyInfo.Address;
                IF CompanyInfo."Address 2" <> '' THEN
                  CompanyAddr[2] := CompanyInfo.Address + ' - ' + CompanyInfo."Address 2";
                IF CompanyInfo."Country/Region Code" <> '' THEN
                  Country.GET(CompanyInfo."Country/Region Code")
                ELSE
                  Country.INIT;
                CompanyAddr[3] := CompanyInfo."Post Code" + '-' + CompanyInfo.City + ' (' + CompanyInfo.County + ') ' + Country.Name;
                CompanyAddr[4] := CompanyInfo."Phone No.";
                CompanyAddr[5] := 'ES' + CompanyInfo."VAT Registration No." ;

                CompanyAddr[6] := CompanyInfo."Home Page";
                CompanyAddr[7] := CompanyInfo."E-Mail";

                Cust.GET("Buy-from Vendor No.");
                CLEAR(BuyFromAddr);
                CLEAR(AuxText);
                //Vend.GET("Salesperson Code");
                IF "Buy-from County" <> '' THEN
                  AuxText := ', ' + "Buy-from County";
                BuyFromAddr[1] := "Buy-from Vendor Name" + ' ' + "Buy-from Vendor Name 2";
                BuyFromAddr[2] := "Buy-from Address";
                IF "Buy-from Address 2" <> '' THEN BEGIN
                  BuyFromAddr[3] := "Buy-from Address 2";
                  BuyFromAddr[4] := "Buy-from Post Code" + '-' + "Buy-from City" + AuxText + '(' + GetCountryName("Buy-from Country/Region Code") + ')';
                  BuyFromAddr[5] := 'Attn:' + "Buy-from Contact";
                  //CustAddr[5] := Cust.FIELDCAPTION("VAT Registration No.") + ': ' + Cust."VAT Registration No."; //CLIP4.0
                  BuyFromAddr[6] := PhoneNoCaptionLbl + ' ' + Cust."Phone No.";
                END
                ELSE BEGIN
                  BuyFromAddr[3] := "Buy-from Post Code" + '-' + "Buy-from City" + AuxText + '(' + GetCountryName("Buy-from Country/Region Code") + ')';
                  BuyFromAddr[4] := 'Attn: ' + "Buy-from Contact";
                  //CustAddr[4] := Cust.FIELDCAPTION("VAT Registration No.") + ': ' + Cust."VAT Registration No."; //CLIP4.0
                  BuyFromAddr[5] := PhoneNoCaptionLbl + ' ' + Cust."Phone No.";
                END;

                //Cliente.GET("Purchase Header"."Ship-to Code");
                CLEAR(ShipToAddr);
                CLEAR(AuxText);
                IF "Purchase Header"."Ship-to County" <> '' THEN
                  AuxText := ', ' + "Ship-to County";
                ShipToAddr[1] := "Purchase Header"."Ship-to Name" + ' ' + "Purchase Header"."Ship-to Name 2";
                ShipToAddr[2] := "Purchase Header"."Ship-to Address";
                IF "Purchase Header"."Ship-to Address 2" <> '' THEN BEGIN
                  ShipToAddr[3] := "Purchase Header"."Ship-to Address 2";
                  ShipToAddr[4] := "Purchase Header"."Ship-to Post Code" + '-' + "Purchase Header"."Ship-to City" + AuxText + '(' + GetCountryName("Purchase Header"."Ship-to Country/Region Code") + ')';
                  ShipToAddr[5] := 'Attn:' + "Purchase Header"."Ship-to Contact";
                  //CustAddr[5] := Cust.FIELDCAPTION("VAT Registration No.") + ': ' + Cust."VAT Registration No."; //CLIP4.0
                  ShipToAddr[6] := PhoneNoCaptionLbl + ' ' + CompanyInfo."Phone No.";;
                END
                ELSE BEGIN
                  ShipToAddr[3] := "Purchase Header"."Ship-to Post Code" + '-' + "Purchase Header"."Ship-to City" + AuxText + '(' + GetCountryName("Purchase Header"."Ship-to Country/Region Code") + ')';
                  ShipToAddr[4] := 'Attn: ' + "Purchase Header"."Ship-to Contact";
                  //CustAddr[4] := Cust.FIELDCAPTION("VAT Registration No.") + ': ' + Cust."VAT Registration No."; //CLIP4.0
                  ShipToAddr[5] := PhoneNoCaptionLbl + ' '  + CompanyInfo."Phone No.";;
                END;

                IF NOT CondEnv.GET("Purchase Header"."Shipment Method Code") THEN BEGIN
                  CondEnv.INIT;
                  CondEnv.Code := '';
                  CampoPortes := '';
                END ELSE BEGIN
                  CampoPortes := CondEnv.Description;
                END;

                ObservacionesAux.SETFILTER(ObservacionesAux."No.","Purchase Header"."No.");
                IF ObservacionesAux.FIND('-') THEN BEGIN
                  //Observaciones := ObservacionesAux.Comment;
                  REPEAT
                    Observaciones := Observaciones + ' ' + ObservacionesAux.Comment;
                  UNTIL ObservacionesAux.NEXT = 0;
                END;

                //Buscar descuento y totales del pedido
                valorDesc := 0;
                text011 := text0111 + ' 0,000%:';

                LinPedido.SETRANGE("Document Type",LinPedido."Document Type"::Order);
                LinPedido.SETRANGE("Document No.","No.");
                IF LinPedido.FIND('-') THEN BEGIN
                  REPEAT
                    IF LinPedido."Line Discount %" <> 0 THEN BEGIN
                      //valorDesc += LinPedido."Line Discount Amount" +LinPedido."Pmt. Disc. Given Amount";
                      valorDesc += LinPedido."Line Discount Amount";
                      text011 := text0111 + ' ' + FORMAT(LinPedido."Line Discount %") + '%:';
                    END;
                  UNTIL LinPedido.NEXT = 0;
                END;

                ShowCashAccountingCriteria("Purchase Header");

                IF NOT CurrReport.PREVIEW THEN BEGIN
                  IF ArchiveDocument THEN
                    ArchiveManagement.StorePurchDocument("Purchase Header",LogInteraction);

                  IF LogInteraction THEN BEGIN
                    CALCFIELDS("No. of Archived Versions");
                    SegManagement.LogDocument(
                      13,"No.","Doc. No. Occurrence","No. of Archived Versions",DATABASE::Vendor,"Buy-from Vendor No.",
                      "Purchaser Code",'',"Posting Description",'');
                  END;
                END;

                //Divisa
                IF "Currency Code"<>'' THEN BEGIN
                  divi2:="Currency Code";
                  Simbolo := '';
                  IF divisa.GET("Currency Code") THEN Simbolo := divisa.Symbol;
                END
                ELSE BEGIN
                  divi2:='EUR';
                  Simbolo := '€';
                END;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Opciones)
                {
                    CaptionML = ENU='Options',
                                ESP='Opciones';
                    field(NoofCopies;NoOfCopies)
                    {
                        CaptionML = ENU='No. of Copies',
                                    ESP='Nº copias';
                    }
                    field(ShowInternalInformation;ShowInternalInfo)
                    {
                        CaptionML = ENU='Show Internal Information',
                                    ESP='Mostrar información interna';
                    }
                    field(ArchiveDocument;ArchiveDocument)
                    {
                        CaptionML = ENU='Archive Document',
                                    ESP='Archivar documento';

                        trigger OnValidate();
                        begin
                            IF NOT ArchiveDocument THEN
                              LogInteraction := FALSE;
                        end;
                    }
                    field(LogInteraction;LogInteraction)
                    {
                        CaptionML = ENU='Log Interaction',
                                    ESP='Log interacción';
                        Enabled = LogInteractionEnable;

                        trigger OnValidate();
                        begin
                            IF LogInteraction THEN
                              ArchiveDocument := ArchiveDocumentEnable;
                        end;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage();
        begin
            ArchiveDocument := PurchSetup."Archive Quotes and Orders";
            LogInteraction := SegManagement.FindInteractTmplCode(13) <> '';

            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        PurchSetup.GET;
    end;

    var
        Text004 : TextConst Comment='%1 = Document No.',ENU='ORDER %1',ESP='PEDIDO %1',FRA='DEMANDE %1';
        GLSetup : Record "General Ledger Setup";
        CompanyInfo : Record "Company Information";
        ShipmentMethod : Record "Shipment Method";
        PaymentTerms : Record "Payment Terms";
        PrepmtPaymentTerms : Record "Payment Terms";
        SalesPurchPerson : Record "Salesperson/Purchaser";
        VATAmountLine : Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine : Record "VAT Amount Line" temporary;
        PrePmtVATAmountLineDeduct : Record "VAT Amount Line" temporary;
        PurchLine : Record "Purchase Line" temporary;
        DimSetEntry1 : Record "Dimension Set Entry";
        DimSetEntry2 : Record "Dimension Set Entry";
        PrepmtDimSetEntry : Record "Dimension Set Entry";
        PrepmtInvBuf : Record "Prepayment Inv. Line Buffer" temporary;
        RespCenter : Record "Responsibility Center";
        Language : Record Language;
        CurrExchRate : Record "Currency Exchange Rate";
        PurchSetup : Record "Purchases & Payables Setup";
        FormatAddr : Codeunit "Format Address";
        FormatDocument : Codeunit "Format Document";
        PurchPost : Codeunit "Purch.-Post";
        ArchiveManagement : Codeunit ArchiveManagement;
        SegManagement : Codeunit SegManagement;
        PurchPostPrepmt : Codeunit "Purchase-Post Prepayments";
        VendAddr : array [8] of Text[50];
        ShipToAddr : array [8] of Text[50];
        CompanyAddr : array [8] of Text[50];
        BuyFromAddr : array [8] of Text[50];
        PurchaserText : Text[30];
        VATNoText : Text[80];
        ReferenceText : Text[80];
        TotalText : Text[50];
        TotalInclVATText : Text[50];
        TotalExclVATText : Text[50];
        MoreLines : Boolean;
        NoOfCopies : Integer;
        NoOfLoops : Integer;
        CopyText : Text[30];
        OutputNo : Integer;
        DimText : Text[120];
        OldDimText : Text[75];
        ShowInternalInfo : Boolean;
        Continue : Boolean;
        ArchiveDocument : Boolean;
        LogInteraction : Boolean;
        VATAmount : Decimal;
        VATBaseAmount : Decimal;
        VATDiscountAmount : Decimal;
        TotalAmountInclVAT : Decimal;
        VALVATBaseLCY : Decimal;
        VALVATAmountLCY : Decimal;
        VALSpecLCYHeader : Text[80];
        VALExchRate : Text[50];
        Text007 : TextConst ENU='VAT Amount Specification in ',ESP='Especificar importe IVA en ';
        Text008 : TextConst ENU='Local Currency',ESP='Divisa local';
        Text009 : TextConst ENU='Exchange rate: %1/%2',ESP='Tipo cambio: %1/%2';
        PrepmtVATAmount : Decimal;
        PrepmtVATBaseAmount : Decimal;
        PrepmtTotalAmountInclVAT : Decimal;
        PrepmtLineAmount : Decimal;
        PricesInclVATtxt : Text[30];
        AllowInvDisctxt : Text[30];
        [InDataSet]
        ArchiveDocumentEnable : Boolean;
        [InDataSet]
        LogInteractionEnable : Boolean;
        TotalSubTotal : Decimal;
        TotalAmount : Decimal;
        TotalInvoiceDiscountAmount : Decimal;
        PhoneNoCaptionLbl : TextConst ENU='ph.:',ESP='Tel.:';
        VATRegNoCaptionLbl : TextConst ENU='VAT No.:',ESP='CIF/NIF:';
        GiroNoCaptionLbl : TextConst ENU='Giro No.',ESP='Nº giro postal';
        BankCaptionLbl : TextConst ENU='Bank',ESP='Banco';
        BankAccNoCaptionLbl : TextConst ENU='Account No.',ESP='Nº cuenta';
        OrderNoCaptionLbl : TextConst ENU='Order No.',ESP='Nº pedido',FRA='Nº Demande';
        PageCaptionLbl : TextConst ENU='Page',ESP='Pág.';
        HdrDimsCaptionLbl : TextConst ENU='Header Dimensions',ESP='Dimensiones cabecera';
        DirectUnitCostCaptionLbl : TextConst ENU='P.Unit.',ESP='P.Unit.';
        DiscountPercentCaptionLbl : TextConst ENU='Discount %',ESP='% Descuento';
        InvDiscAmtCaptionLbl : TextConst ENU='Invoice Discount Amount',ESP='Importe descuento factura';
        SubtotalCaptionLbl : TextConst ENU='Subtotal',ESP='Subtotal';
        TotalTextLbl : TextConst ENU='Payment Discount Received Amount',ESP='Importe recibido descuento pago';
        VATDiscountAmtCaptionLbl : TextConst ENU='Payment Discount on VAT',ESP='Descuento P.P. sobre IVA';
        LineDimsCaptionLbl : TextConst ENU='Line Dimensions',ESP='Dimensiones línea';
        VATPercentCaptionLbl : TextConst ENU='VAT %',ESP='% IVA';
        VATBaseCaptionLbl : TextConst ENU='VAT Base',ESP='Base IVA';
        VATAmtCaptionLbl : TextConst ENU='VAT Amount',ESP='Importe IVA';
        VATAmtSpecCaptionLbl : TextConst ENU='VAT Amount Specification',ESP='Especificación importe IVA';
        VATIdentCaptionLbl : TextConst ENU='VAT Identifier',ESP='Identific. IVA';
        InvDiscBaseAmtCaptionLbl : TextConst ENU='Invoice Discount Base Amount',ESP='Importe base descuento factura';
        LineAmtCaptionLbl : TextConst ENU='Line Amount',ESP='Importe línea';
        InvDiscAmt1CaptionLbl : TextConst ENU='Invoice and Payment Discounts',ESP='Descuentos facturas y pagos';
        ECAmtCaptionLbl : TextConst ENU='EC Amount',ESP='Importe RE';
        ECCaptionLbl : TextConst ENU='EC %',ESP='% RE';
        TotalCaptionLbl : TextConst ENU='Total:',ESP='TOTAL:';
        PaymentDetailsCaptionLbl : TextConst ENU='Payment Details',ESP='Detalles del pago';
        VendNoCaptionLbl : TextConst ENU='Vendor No.',ESP='Nº proveedor';
        ShiptoAddCaptionLbl : TextConst ENU='SHIP TO:',ESP='DIRECCIÛN ENVõO:',FRA='ADRESSE DE LIVRAISON';
        DescCaptionLbl : TextConst ENU='Description',ESP='Descripción',FRA='Description';
        GLAccNoCaptionLbl : TextConst ENU='G/L Account No.',ESP='Nº cuenta';
        PrepmtSpecCaptionLbl : TextConst ENU='Prepayment Specification',ESP='Especificación prepago';
        PrepmtVATAmtSpecCaptionLbl : TextConst ENU='Prepayment VAT Amount Specification',ESP='Especificación importe IVA prepago';
        HomepageCaptionLbl : TextConst ENU='Web:',ESP='Web:';
        EmailCaptionLbl : TextConst ENU='E-mail:',ESP='E-Mail:';
        AmtCaptionLbl : TextConst ENU='Amount ',ESP='Importe ',FRA='Montant ';
        PaymentTermsCaptionLbl : TextConst ENU='Payment:',ESP='Forma de pago:',FRA='Mode de paiement:';
        ShpMethodCaptionLbl : TextConst ENU='Shipment Method',ESP='Condiciones envío';
        PrePmtTermsDescCaptionLbl : TextConst ENU='Terms:',ESP='Vía de pago:',FRA='Méthode de paiement:';
        DocDateCaptionLbl : TextConst ENU='Date:',ESP='Fecha pedido:',FRA='Date de commande:';
        AllowInvDiscCaptionLbl : TextConst ENU='Allow Invoice Discount',ESP='Permitir descuento factura';
        PrepmtLoopLineNo : Integer;
        CACCaptionLbl : Text;
        CACTxt : TextConst ENU='Régimen especial del criterio de caja',ESP='Régimen especial del criterio de caja';
        Country : Record "Country/Region";
        Cust : Record Vendor;
        AuxText : Text;
        portesCaptionLbl : TextConst ENU='Shipping:',ESP='Portes:';
        FechaentregaCaptionlbl : TextConst ENU='Delivery date:',ESP='Fecha entrega:',FRA='Date de livraison:';
        CodigocaptionLbl : TextConst ENU='Reference',ESP='Código',FRA='Code';
        CondEnv : Record "Shipment Method";
        CampoPortes : Text[30];
        PaymentMethod : Record "Payment Method";
        divi2 : Code[10];
        divisa : Record Currency;
        Simbolo : Text[10];
        text001 : TextConst ENU='Tax base:',ESP='Base imponible:',FRA='Base d''imposition';
        text0111 : TextConst ENU='Discount 0.000%',ESP='Descuento',FRA='Remise 0.000%';
        text012 : TextConst ENU='VAT 0%:',ESP='I.V.A:';
        LinPedido : Record "Purchase Line";
        valorDesc : Decimal;
        TotalLineas : Integer;
        LineasConsumidas : Integer;
        AuxLinies : Integer;
        Cantidadcaption : TextConst ENU='Quantity',ESP='Cantidad',FRA='Quantité';
        UnidadCaption : TextConst ENU='Unit of measurement',ESP='Unidad medidad',FRA='Unité de mesure';
        text013 : TextConst ENU='Suplier''s PO No.',ESP='Pedido Proveedor Nº';
        Observaciones : Text[1024];
        ObservacionesAux : Record "Purch. Comment Line";
        Cliente : Record Customer;
        text014 : TextConst ENU='Comments:',ESP='Observaciones:',FRA='Observations:';
        text011 : Text[30];

    procedure InitializeRequest(NewNoOfCopies : Integer;NewShowInternalInfo : Boolean;NewArchiveDocument : Boolean;NewLogInteraction : Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        ArchiveDocument := NewArchiveDocument;
        LogInteraction := NewLogInteraction;
    end;

    local procedure FormatAddressFields(var PurchaseHeader : Record "Purchase Header");
    begin
        FormatAddr.GetCompanyAddr(PurchaseHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.PurchHeaderBuyFrom(BuyFromAddr,PurchaseHeader);
        IF PurchaseHeader."Buy-from Vendor No." <> PurchaseHeader."Pay-to Vendor No." THEN
          FormatAddr.PurchHeaderPayTo(VendAddr,PurchaseHeader);
        FormatAddr.PurchHeaderShipTo(ShipToAddr,PurchaseHeader);
    end;

    local procedure FormatDocumentFields(PurchaseHeader : Record "Purchase Header");
    begin
        WITH PurchaseHeader DO BEGIN
          FormatDocument.SetTotalLabels("Currency Code",TotalText,TotalInclVATText,TotalExclVATText);
          FormatDocument.SetPurchaser(SalesPurchPerson,"Purchaser Code",PurchaserText);
          FormatDocument.SetPaymentTerms(PaymentTerms,"Payment Terms Code","Language Code");
          FormatDocument.SetPaymentTerms(PrepmtPaymentTerms,"Prepmt. Payment Terms Code","Language Code");
          FormatDocument.SetShipmentMethod(ShipmentMethod,"Shipment Method Code","Language Code");
          FormatDocument.SetPaymentMethod(PaymentMethod,"Payment Method Code");

          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
          VATNoText := FormatDocument.SetText("VAT Registration No." <> '',FIELDCAPTION("VAT Registration No."));
          VATNoText := FIELDCAPTION("VAT Registration No.");
          TotalText := TotalCaptionLbl;
        END;
    end;

    procedure ShowCashAccountingCriteria(PurchaseHeader : Record "Purchase Header") : Text;
    var
        VATPostingSetup : Record "VAT Posting Setup";
        PurchaseLine : Record "Purchase Line";
    begin
        GLSetup.GET;
        IF NOT GLSetup."Unrealized VAT" THEN
          EXIT;
        CACCaptionLbl := '';
        PurchaseLine.SETRANGE("Document No.",PurchaseHeader."No.");
        IF PurchaseLine.FINDSET THEN
          REPEAT
            IF VATPostingSetup.GET(PurchaseHeader."VAT Bus. Posting Group",PurchaseLine."VAT Prod. Posting Group") THEN
              IF VATPostingSetup."VAT Cash Regime" THEN
                CACCaptionLbl := CACTxt;
          UNTIL (PurchaseLine.NEXT = 0) OR (CACCaptionLbl <> '');
        EXIT(CACCaptionLbl);
    end;

    local procedure GetCountryName(CountryCode : Code[10]) : Text;
    var
        Country : Record "Country/Region";
    begin
        //-CLIP4.1
        IF Country.GET(CountryCode) THEN
          EXIT(Country.Name);
        EXIT('');
        //+CLIP4.1
    end;
}

