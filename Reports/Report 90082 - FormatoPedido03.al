report 90082 FormatoPedido03
{
    // version NAVW110.00.00.14199,NAVES10.00.00.14199

    DefaultLayout = RDLC;
    RDLCLayout = './Reports/FormatoPedido03.rdlc';
    CaptionML = ENU='Order Confirmation',
                ESP='Confirmación pedido';
    EnableHyperlinks = true;
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Header";"Sales Header")
        {
            DataItemTableView = SORTING("Document Type","No.")
                                WHERE("Document Type"=CONST(Order));
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";
            RequestFilterHeadingML = ENU='Sales Order',
                                     ESP='Pedido venta';
            column(PaymentTermsDescription;PaymentTerms.Description)
            {
            }
            column(ShipmentMethodDescription;ShipmentMethod.Description)
            {
            }
            column(PaymentMethodDescription;PaymentMethod.Description)
            {
            }
            column(DocType_SalesHeader;"Document Type")
            {
            }
            column(No_SalesHeader;"No.")
            {
            }
            column(PaymentTermsCaption;PaymentTermsCaptionLbl)
            {
            }
            column(ShipmentMethodCaption;ShipmentMethodCaptionLbl)
            {
            }
            column(PaymentMethodCaption;PaymentMethodCaptionLbl)
            {
            }
            column(HomePageCaption;HomePageCaptionLbl)
            {
            }
            column(EmailCaption;EmailCaptionLbl)
            {
            }
            column(DocumentDateCaption;DocumentDateCaptionLbl)
            {
            }
            column(AllowInvDiscCaption;AllowInvDiscCaptionLbl)
            {
            }
            column(Valorado;Valorado)
            {
            }
            column(CodigoCaption;CodigoCaptionLbl)
            {
            }
            column(DescripcionCaption;DescripcionCaptionLbl)
            {
            }
            column(CantidadCaption;CantidadCaptionLbl)
            {
            }
            column(TotalCaption1;Total1CaptionLbl)
            {
            }
            column(PrecioVentaCaption;PrecioVentaCaptionLbl)
            {
            }
            column(TransportistaCaption;TransportistaCaptionLbl)
            {
            }
            dataitem(CopyLoop;"Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;"Integer")
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number=CONST(1));
                    column(CompanyInfo2Picture;CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo3Picture;CompanyInfo3.Picture)
                    {
                    }
                    column(CompanyInfo1Picture;CompanyInfo1.Picture)
                    {
                    }
                    column(SalesHeaderCopyText;STRSUBSTNO(Text004,CopyText))
                    {
                    }
                    column(CustAddr1;CustAddr[1])
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(CustAddr2;CustAddr[2])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(CustAddr3;CustAddr[3])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(CustAddr4;CustAddr[4])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(CustAddr5;CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6;CustAddr[6])
                    {
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoVATRegistrationNo;CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo;CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName;CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo;CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesHeader;"Sales Header"."Bill-to Customer No.")
                    {
                    }
                    column(DocDate_SalesHeader;"Sales Header"."Document Date")
                    {
                    }
                    column(VATNoText;VATRegNoCaptionLbl)
                    {
                    }
                    column(VATRegNo_SalesHeader;"Sales Header"."VAT Registration No.")
                    {
                    }
                    column(ShipmentDate_SalesHeader;FORMAT("Sales Header"."Shipment Date",0,4))
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(SalesHeaderNo1;"Sales Header"."No.")
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourRef_SalesHeader;"Sales Header"."Your Reference")
                    {
                    }
                    column(CustAddr7;CustAddr[7])
                    {
                    }
                    column(CustAddr8;CustAddr[8])
                    {
                    }
                    column(CustAddr9;CustAddr[9])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(PricesIncludVAT_SalesHeader;"Sales Header"."Prices Including VAT")
                    {
                    }
                    column(PageCaption;PageCaptionCap)
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo_SalesHeader;FORMAT("Sales Header"."Prices Including VAT"))
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
                    column(BankNameCaption;BankNameCaptionLbl)
                    {
                    }
                    column(BankAccountNoCaption;BankAccountNoCaptionLbl)
                    {
                    }
                    column(ShipmentDateCaption;ShipmentDateCaptionLbl)
                    {
                    }
                    column(OrderNoCaption;OrderNoCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesHeaderCaption;Text013)
                    {
                    }
                    column(PricesIncludVAT_SalesHeaderCaption;"Sales Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(CACCaption;CACCaptionLbl)
                    {
                    }
                    column(ExternalDocument;"Sales Header"."External Document No.")
                    {
                    }
                    column(TranportName;Transportista.Name)
                    {
                    }
                    column(CCC;BancoCliente."CCC Bank No.")
                    {
                    }
                    column(Branch;BancoCliente."CCC Bank Branch No.")
                    {
                    }
                    column(Controldigit;BancoCliente."CCC Control Digits")
                    {
                    }
                    column(Account;BancoCliente."CCC Bank Account No.")
                    {
                    }
                    column(Observaciones;Observaciones)
                    {
                    }
                    column(Observaciones2;'')
                    {
                    }
                    column(CampoPortes;CampoPortes)
                    {
                    }
                    column(text001;text001)
                    {
                    }
                    column(text002;text002)
                    {
                    }
                    column(text003;text003)
                    {
                    }
                    column(text010;text010)
                    {
                    }
                    column(text005;text005)
                    {
                    }
                    column(text006;text006)
                    {
                    }
                    column(text011;text011)
                    {
                    }
                    column(text012;text012)
                    {
                    }
                    column(totalpedido;TotalPedido)
                    {
                    }
                    column(valorDesc;valorDesc)
                    {
                    }
                    column(ImporteIvaText;VATAmountCaptionLbl)
                    {
                    }
                    column(ImporteIVA;ImporteIVA)
                    {
                    }
                    column(NoOfCopies1;NoOfCopies)
                    {
                    }
                    column(PesoNeto;PesoNeto)
                    {
                    }
                    column(PesoBruto;PesoBruto)
                    {
                    }
                    column(TotalPesoNeto;TotalNetWeight)
                    {
                    }
                    column(TotalPesobruto;TotalGrossWeight)
                    {
                    }
                    column(CodDivisa;divi2)
                    {
                    }
                    column(text014;text014)
                    {
                    }
                    column(text015;text015)
                    {
                    }
                    dataitem(DimensionLoop1;"Integer")
                    {
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(DimText_DimLoop1;DimText)
                        {
                        }
                        column(Number_DimLoop1;Number)
                        {
                        }
                        column(HeaderDimensionsCaption;HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                              IF NOT DimSetEntry1.FIND('-') THEN
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
                    dataitem("Sales Line";"Sales Line")
                    {
                        DataItemLink = "Document Type"=FIELD("Document Type"),
                                       "Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING("Document Type","Document No.","Line No.");

                        trigger OnPreDataItem();
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(LineAmt_SalesLine;SalesLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Desc_SalesLine;"Sales Line".Description)
                        {
                        }
                        column(NNCSalesLineLineAmt;NNC_SalesLineLineAmt)
                        {
                        }
                        column(NNCSalesLineInvDiscAmt;NNC_SalesLineInvDiscAmt)
                        {
                        }
                        column(NNCTotalExclVAT;NNC_TotalExclVAT)
                        {
                        }
                        column(NNCVATAmt;NNC_VATAmt)
                        {
                        }
                        column(NNCPmtDiscOnVAT;NNC_PmtDiscOnVAT)
                        {
                        }
                        column(NNCTotalInclVAT2;NNC_TotalInclVAT2)
                        {
                        }
                        column(NNCVatAmt2;NNC_VatAmt2)
                        {
                        }
                        column(NNCTotalExclVAT2;NNC_TotalExclVAT2)
                        {
                        }
                        column(VATBaseDisc_SalesHeader;"Sales Header"."VAT Base Discount %")
                        {
                        }
                        column(AsmInfoExistsForLine;AsmInfoExistsForLine)
                        {
                        }
                        column(No2_SalesLine;"Sales Line"."No.")
                        {
                        }
                        column(Qty_SalesLine;"Sales Line".Quantity)
                        {
                        }
                        column(UOM_SalesLine;"Sales Line"."Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesLine;"Sales Line"."Unit Price")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDisc_SalesLine;"Sales Line"."Line Discount %")
                        {
                        }
                        column(LineAmt1_SalesLine;"Sales Line"."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AllowInvDisc_SalesLine;"Sales Line"."Allow Invoice Disc.")
                        {
                        }
                        column(VATIdentifier_SalesLine;"Sales Line"."VAT Identifier")
                        {
                        }
                        column(Type_SalesLine;FORMAT("Sales Line".Type))
                        {
                        }
                        column(No1_SalesLine;"Sales Line"."Line No.")
                        {
                        }
                        column(AllowInvDisYesNo_SalesLine;FORMAT("Sales Line"."Allow Invoice Disc."))
                        {
                        }
                        column(SalesLineInvDiscAmt;SalesLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(SalesLineLineAmtInvDiscAmt;-SalesLine."Pmt. Disc. Given Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(NNCPmtDiscGivenAmount;NNC_PmtDiscGivenAmount)
                        {
                        }
                        column(SalesLinePmtDiscGivenAmt;SalesLine."Pmt. Disc. Given Amount")
                        {
                        }
                        column(TotalExclVATText;TotalExclVATText)
                        {
                        }
                        column(VATAmtLineVATAmtText;VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalInclVATText;TotalInclVATText)
                        {
                        }
                        column(VATAmount;VATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(SalesLineLAmtInvDiscAmtVATAmt;SalesLine."Line Amount" - SalesLine."Inv. Discount Amount" - SalesLine."Pmt. Disc. Given Amount" + VATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATDiscountAmount;-VATDiscountAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseAmount;VATBaseAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountInclVAT;TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(UnitPriceCaption;UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscountCaption;DiscountCaptionLbl)
                        {
                        }
                        column(AmountCaption;AmountCaptionLbl)
                        {
                        }
                        column(InvDiscAmtCaption;InvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubtotalCaption;SubtotalCaptionLbl)
                        {
                        }
                        column(PmtDiscGivenAmtCaption;PmtDiscGivenAmtCaptionLbl)
                        {
                        }
                        column(PaymentDiscVATCaption;PaymentDiscVATCaptionLbl)
                        {
                        }
                        column(Desc_SalesLineCaption;"Sales Line".FIELDCAPTION(Description))
                        {
                        }
                        column(No_SalesLineCaption;"Sales Line".FIELDCAPTION("No."))
                        {
                        }
                        column(Qty_SalesLineCaption;Cantidadcaption)
                        {
                        }
                        column(UOM_SalesLineCaption;UnidadCaption)
                        {
                        }
                        column(AllowInvDisc_SalesLineCaption;"Sales Line".FIELDCAPTION("Allow Invoice Disc."))
                        {
                        }
                        column(VATIdentifier_SalesLineCaption;"Sales Line".FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(Descuento;Descuento)
                        {
                        }
                        dataitem(DimensionLoop2;"Integer")
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=FILTER(1..));
                            column(DimText_DimLoop2;DimText)
                            {
                            }
                            column(LineDimensionsCaption;LineDimensionsCaptionLbl)
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

                                DimSetEntry2.SETRANGE("Dimension Set ID","Sales Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop;"Integer")
                        {
                            column(AsmLineUnitOfMeasureText;GetUnitOfMeasureDescr(AsmLine."Unit of Measure Code"))
                            {
                            }
                            column(AsmLineQuantity;AsmLine.Quantity)
                            {
                            }
                            column(AsmLineDescription;BlanksForIndent + AsmLine.Description)
                            {
                            }
                            column(AsmLineNo;BlanksForIndent + AsmLine."No.")
                            {
                            }
                            column(AsmLineType;AsmLine.Type)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                  AsmLine.FINDSET
                                ELSE
                                  AsmLine.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT DisplayAssemblyInformation THEN
                                  CurrReport.BREAK;
                                IF NOT AsmInfoExistsForLine THEN
                                  CurrReport.BREAK;
                                AsmLine.SETRANGE("Document Type",AsmHeader."Document Type");
                                AsmLine.SETRANGE("Document No.",AsmHeader."No.");
                                SETRANGE(Number,1,AsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                              SalesLine.FIND('-')
                            ELSE
                              SalesLine.NEXT;
                            "Sales Line" := SalesLine;
                            IF DisplayAssemblyInformation THEN
                              AsmInfoExistsForLine := SalesLine.AsmToOrderExists(AsmHeader);

                            IF NOT "Sales Header"."Prices Including VAT" AND
                               (SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT")
                            THEN
                              SalesLine."Line Amount" := 0;

                            IF (SalesLine.Type = SalesLine.Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                              "Sales Line"."No." := '';

                            NNC_SalesLineLineAmt += SalesLine."Line Amount";
                            NNC_SalesLineInvDiscAmt += SalesLine."Inv. Discount Amount";

                            NNC_TotalLCY := NNC_SalesLineLineAmt - NNC_SalesLineInvDiscAmt;

                            NNC_TotalExclVAT := NNC_TotalLCY;
                            NNC_VATAmt := VATAmount;
                            NNC_TotalInclVAT := NNC_TotalLCY - NNC_VATAmt;

                            NNC_PmtDiscOnVAT := -VATDiscountAmount;

                            NNC_TotalInclVAT2 := TotalAmountInclVAT;

                            NNC_VatAmt2 := VATAmount;
                            NNC_TotalExclVAT2 := VATBaseAmount;
                            NNC_PmtDiscGivenAmount := NNC_PmtDiscGivenAmount - SalesLine."Pmt. Disc. Given Amount" ;
                        end;

                        trigger OnPostDataItem();
                        begin
                            SalesLine.DELETEALL;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := SalesLine.FIND('+');
                            WHILE MoreLines AND (SalesLine.Description = '') AND (SalesLine."Description 2" = '') AND
                                  (SalesLine."No." = '') AND (SalesLine.Quantity = 0) AND
                                  (SalesLine.Amount = 0)
                            DO
                              MoreLines := SalesLine.NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                              CurrReport.BREAK;
                            SalesLine.SETRANGE("Line No.",0,SalesLine."Line No.");
                            SETRANGE(Number,1,SalesLine.COUNT);
                            CurrReport.CREATETOTALS(SalesLine."Line Amount",SalesLine."Inv. Discount Amount",SalesLine."Pmt. Disc. Given Amount");
                        end;
                    }
                    dataitem(VATCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmountLineVATECBase;VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVATAmount;VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineLineAmount;VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt;VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmtPmtDiscAmt;VATAmountLine."Invoice Discount Amount" + VATAmountLine."Pmt. Disc. Given Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineECAmt;VATAmountLine."EC Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT_VATCounter;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:6;
                        }
                        column(VATAmtLineVATIdentifier_VATCounter;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineEC;VATAmountLine."EC %")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATPecrentCaption;VATPecrentCaptionLbl)
                        {
                        }
                        column(VATECBaseCaption;VATECBaseCaptionLbl)
                        {
                        }
                        column(VATAmountCaption;VATAmountCaptionLbl)
                        {
                        }
                        column(VATAmtSpecCaption;VATAmtSpecCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption;InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmountCaption;LineAmountCaptionLbl)
                        {
                        }
                        column(InvPmtDiscountsCaption;InvPmtDiscountsCaptionLbl)
                        {
                        }
                        column(VATIdentifierCaption;VATIdentifierCaptionLbl)
                        {
                        }
                        column(ECAmtCaption;ECAmtCaptionLbl)
                        {
                        }
                        column(ECPercentCaption;ECPercentCaptionLbl)
                        {
                        }
                        column(TotalCaption;TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            IF VATAmountLine."VAT Amount" = 0 THEN
                              VATAmountLine."VAT %" := 0;
                            IF VATAmountLine."EC Amount" = 0 THEN
                              VATAmountLine."EC %" := 0;
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
                        column(VALSpecLCYHeader;VALSpecLCYHeader)
                        {
                        }
                        column(VALVATBaseLCY;VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY;VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT_VATCounterLCY;VATAmountLine."VAT %")
                        {
                            //DecimalPlaces = 0:5;
                        }
                        column(VATAmtLineVATIdentifier_VATCounterLCY;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATBaseCaption;VATBaseCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Header"."Posting Date","Sales Header"."Currency Code","Sales Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Header"."Posting Date","Sales Header"."Currency Code","Sales Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Header"."Currency Code" = '') OR
                               (VATAmountLine.GetTotalVATAmount = 0)
                            THEN
                              CurrReport.BREAK;

                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                              VALSpecLCYHeader := Text007 + Text008
                            ELSE
                              VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Header"."Posting Date","Sales Header"."Currency Code",1);
                            VALExchRate := STRSUBSTNO(Text009,CurrExchRate."Relational Exch. Rate Amount",CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total;"Integer")
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                    }
                    dataitem(Total2;"Integer")
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                        column(SelltoCustNo_SalesHeader;"Sales Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr8;ShipToAddr[8])
                        {
                        }
                        column(ShipToAddr7;ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr6;ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr5;ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr4;ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr3;ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr2;ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr1;ShipToAddr[1])
                        {
                        }
                        column(ShiptoAddressCaption;ShiptoAddressCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_SalesHeaderCaption;"Sales Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowShippingAddr THEN
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem(PrepmtLoop;"Integer")
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(PrepmtLineAmount;PrepmtLineAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvBufDesc;PrepmtInvBuf.Description)
                        {
                        }
                        column(GLAccountNo_PrepmtInvBuf;PrepmtInvBuf."G/L Account No.")
                        {
                        }
                        column(TotalExclVATText1;TotalExclVATText)
                        {
                        }
                        column(PrepmtVATAmtLineVATAmtTxt;PrepmtVATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalInclVATTxt;TotalInclVATText)
                        {
                        }
                        column(PrepmtInvBufAmount;PrepmtInvBuf.Amount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmount;PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvBufAmtPrepmtVATAmt;PrepmtInvBuf.Amount + PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLVATAmtText1;VATAmountLine.VATAmountText)
                        {
                        }
                        column(PrepmtTotalAmountInclVAT;PrepmtTotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATBaseAmount;PrepmtVATBaseAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(DescriptionCaption;DescriptionCaptionLbl)
                        {
                        }
                        column(GLAccountNoCaption;GLAccountNoCaptionLbl)
                        {
                        }
                        column(PrepaymentSpecCaption;PrepaymentSpecCaptionLbl)
                        {
                        }
                        dataitem(PrepmtDimLoop;"Integer")
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=FILTER(1..));
                            column(DimText2;DimText)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                  IF NOT TempPrepmtDimSetEntry.FIND('-') THEN
                                    CurrReport.BREAK;
                                END ELSE
                                  IF NOT Continue THEN
                                    CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                  OldDimText := DimText;
                                  IF DimText = '' THEN
                                    DimText :=
                                      STRSUBSTNO('%1 %2',TempPrepmtDimSetEntry."Dimension Code",TempPrepmtDimSetEntry."Dimension Value Code")
                                  ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3',DimText,
                                        TempPrepmtDimSetEntry."Dimension Code",TempPrepmtDimSetEntry."Dimension Value Code");
                                  IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                  END;
                                UNTIL TempPrepmtDimSetEntry.NEXT = 0;
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

                            IF ShowInternalInfo THEN
                              DimMgt.GetDimensionSet(TempPrepmtDimSetEntry,PrepmtInvBuf."Dimension Set ID");

                            IF "Sales Header"."Prices Including VAT" THEN
                              PrepmtLineAmount := PrepmtInvBuf."Amount Incl. VAT"
                            ELSE
                              PrepmtLineAmount := PrepmtInvBuf.Amount;
                        end;

                        trigger OnPreDataItem();
                        begin
                            CurrReport.CREATETOTALS(
                              PrepmtInvBuf.Amount,PrepmtInvBuf."Amount Incl. VAT",
                              PrepmtVATAmountLine."Line Amount",PrepmtVATAmountLine."VAT Base",
                              PrepmtVATAmountLine."VAT Amount",
                              PrepmtLineAmount);
                        end;
                    }
                    dataitem(PrepmtVATCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmt_PrepmtVATAmtLine;PrepmtVATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBase_PrepmtVATAmtLine;PrepmtVATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmt_PrepmtVATAmtLine;PrepmtVATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VAT_PrepmtVATAmtLine;PrepmtVATAmountLine."VAT %")
                        {
                            //DecimalPlaces = 0:5;
                        }
                        column(VATIdentifier_PrepmtVATAmtLine;PrepmtVATAmountLine."VAT Identifier")
                        {
                        }
                        column(PrepaymentVATAmtSpecCaption;PrepaymentVATAmtSpecCaptionLbl)
                        {
                        }
                        column(PrepmtVATPercentCaption;VATPecrentCaptionLbl)
                        {
                        }
                        column(PrepmtVATBaseCaption;VATECBaseCaptionLbl)
                        {
                        }
                        column(PrepmtVATAmtCaption;VATAmountCaptionLbl)
                        {
                        }
                        column(PrepmtVATIdentCaption;VATIdentifierCaptionLbl)
                        {
                        }
                        column(PrepmtLineAmtCaption;LineAmountCaptionLbl)
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
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                        column(PrepmtPaymentTermsDesc;PrepmtPaymentTerms.Description)
                        {
                        }
                        column(PrepmtPaymentTermsCaption;PrepmtPaymentTermsCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT PrepmtInvBuf.FIND('-') THEN
                              CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                var
                    PrepmtSalesLine : Record "Sales Line" temporary;
                    TempSalesLine : Record "Sales Line" temporary;
                    SalesPost : Codeunit "Sales-Post";
                begin
                    CLEAR(SalesLine);
                    CLEAR(SalesPost);
                    VATAmountLine.DELETEALL;
                    SalesLine.DELETEALL;
                    SalesPost.GetSalesLines("Sales Header",SalesLine,0);
                    SalesLine.CalcVATAmountLines(0,"Sales Header",SalesLine,VATAmountLine);
                    SalesLine.UpdateVATOnLines(0,"Sales Header",SalesLine,VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code","Sales Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    PrepmtInvBuf.DELETEALL;
                    SalesPostPrepmt.GetSalesLines("Sales Header",0,PrepmtSalesLine);

                    IF NOT PrepmtSalesLine.ISEMPTY THEN BEGIN
                      SalesPostPrepmt.GetSalesLinesToDeduct("Sales Header",TempSalesLine);
                      IF NOT TempSalesLine.ISEMPTY THEN
                        SalesPostPrepmt.CalcVATAmountLines("Sales Header",TempSalesLine,PrepmtVATAmountLineDeduct,1);
                    END;
                    SalesPostPrepmt.CalcVATAmountLines("Sales Header",PrepmtSalesLine,PrepmtVATAmountLine,0);
                    PrepmtVATAmountLine.DeductVATAmountLine(PrepmtVATAmountLineDeduct);
                    SalesPostPrepmt.UpdateVATOnLines("Sales Header",PrepmtSalesLine,PrepmtVATAmountLine,0);
                    SalesPostPrepmt.BuildInvLineBuffer2("Sales Header",PrepmtSalesLine,0,PrepmtInvBuf);
                    PrepmtVATAmount := PrepmtVATAmountLine.GetTotalVATAmount;
                    PrepmtVATBaseAmount := PrepmtVATAmountLine.GetTotalVATBase;
                    PrepmtTotalAmountInclVAT := PrepmtVATAmountLine.GetTotalAmountInclVAT;

                    IF (VATAmountLine."VAT Calculation Type" = VATAmountLine."VAT Calculation Type"::"Reverse Charge VAT") AND
                       "Sales Header"."Prices Including VAT"
                    THEN BEGIN
                      VATBaseAmount := VATAmountLine.GetTotalLineAmount(FALSE,"Sales Header"."Currency Code");
                      TotalAmountInclVAT := VATAmountLine.GetTotalLineAmount(FALSE,"Sales Header"."Currency Code");
                    END;

                    IF Number > 1 THEN BEGIN
                      CopyText := FormatDocument.GetCOPYText;
                      OutputNo += 1;
                    END;
                    CurrReport.PAGENO := 1;

                    NNC_TotalLCY := 0;
                    NNC_TotalExclVAT := 0;
                    NNC_VATAmt := 0;
                    NNC_TotalInclVAT := 0;
                    NNC_PmtDiscGivenAmount := 0;
                    NNC_PmtDiscOnVAT := 0;
                    NNC_TotalInclVAT2 := 0;
                    NNC_VatAmt2 := 0;
                    NNC_TotalExclVAT2 := 0;
                    NNC_SalesLineLineAmt := 0;
                    NNC_SalesLineInvDiscAmt := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF Print THEN
                      CODEUNIT.RUN(CODEUNIT::"Sales-Printed","Sales Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields("Sales Header");
                FormatDocumentFields("Sales Header");
                Valorado := TRUE;

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

                Cust.GET("Bill-to Customer No.");
                CLEAR(CustAddr);
                CLEAR(AuxText);
                IF Vend.GET("Salesperson Code") THEN;
                IF "Ship-to County" <> '' THEN
                  AuxText := ', ' + "Ship-to County";
                CustAddr[1] := "Ship-to Name" + ' ' + "Ship-to Name 2";
                CustAddr[2] := "Ship-to Address";
                IF "Ship-to Address 2" <> '' THEN BEGIN
                  CustAddr[3] := "Ship-to Address 2";
                  CustAddr[4] := "Ship-to Post Code" + ' ' + "Ship-to City" + AuxText + '(' + GetCountryName("Ship-to Country/Region Code") + ')';
                  CustAddr[5] := 'Attn:' + "Ship-to Contact";
                  //CustAddr[5] := Cust.FIELDCAPTION("VAT Registration No.") + ': ' + Cust."VAT Registration No."; //CLIP4.0
                  CustAddr[6] := 'Tel.:' + Cust."Phone No.";
                  CustAddr[7] := FORMAT("Requested Delivery Date");
                  CustAddr[8] := "No.";
                  CustAddr[9] := Vend.Name;
                 END
                ELSE BEGIN
                  CustAddr[3] := "Ship-to Post Code" + ' ' + "Ship-to City" + AuxText + '(' + GetCountryName("Ship-to Country/Region Code") + ')';
                  CustAddr[4] := 'Attn: ' + "Ship-to Contact";
                  //CustAddr[4] := Cust.FIELDCAPTION("VAT Registration No.") + ': ' + Cust."VAT Registration No."; //CLIP4.0
                  CustAddr[5] := 'Tel.: ' + Cust."Phone No.";
                  CustAddr[6] := FORMAT("Requested Delivery Date");
                  CustAddr[7] := "No.";
                  CustAddr[8] := Vend.Name;
                END;

                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");

                ShowCashAccountingCriteria("Sales Header");

                //CALCFIELDS("Work Description");
                //Observaciones := FORMAT("Work Description");
                ObservacionesAux.SETFILTER(ObservacionesAux."No.","Sales Header"."No.");
                IF ObservacionesAux.FIND('-') THEN BEGIN
                  //Observaciones := ObservacionesAux.Comment;
                  REPEAT
                    Observaciones := Observaciones + ' ' + ObservacionesAux.Comment;
                  UNTIL ObservacionesAux.NEXT = 0;
                END;

                IF Print THEN BEGIN
                  IF CurrReport.USEREQUESTPAGE AND ArchiveDocument OR
                     NOT CurrReport.USEREQUESTPAGE AND SalesSetup."Archive Quotes and Orders"
                  THEN
                    ArchiveManagement.StoreSalesDocument("Sales Header",LogInteraction);

                  IF LogInteraction THEN BEGIN
                    CALCFIELDS("No. of Archived Versions");
                    IF "Bill-to Contact No." <> '' THEN
                      SegManagement.LogDocument(
                        SegManagement.SalesOrderConfirmInterDocType,"No.","Doc. No. Occurrence",
                        "No. of Archived Versions",DATABASE::Contact,"Bill-to Contact No."
                        ,"Salesperson Code","Campaign No.","Posting Description","Opportunity No.")
                    ELSE
                      SegManagement.LogDocument(
                        SegManagement.SalesOrderConfirmInterDocType,"No.","Doc. No. Occurrence",
                        "No. of Archived Versions",DATABASE::Customer,"Bill-to Customer No.",
                        "Salesperson Code","Campaign No.","Posting Description","Opportunity No.");
                  END;
                END;

                //Buscar descuento y totales del pedido
                TotalPedido:=0;
                ImporteIVA := 0;
                valor := 0;
                valorIVA := 0;
                TotalNetWeight := 0;
                TotalGrossWeight := 0;
                valorDesc := 0;
                text011 := text0111 + ' 0,000%:';
                LinPedido.SETRANGE("Document Type",LinPedido."Document Type"::Order);
                LinPedido.SETRANGE(LinPedido."Document No.","No.");
                IF LinPedido.FIND('-') THEN BEGIN
                  REPEAT
                    IF LinPedido."Line Discount %" <> 0 THEN BEGIN
                      Descuento := 'Dto.';
                      //valorDesc += LinPedido."Line Discount Amount" +LinPedido."Pmt. Disc. Given Amount";
                      valorDesc += LinPedido."Line Discount Amount";
                      text011 := text0111 + ' ' + FORMAT(LinPedido."Line Discount %") + '%:';
                    END;
                    valor := LinPedido."Unit Price"*LinPedido.Quantity;
                    valor := valor-(valor*(LinPedido."Line Discount %"/100)) - LinPedido."Pmt. Disc. Given Amount";
                    TotalPedido+= ROUND(valor, 0.01);
                    valorIVA := LinPedido."Unit Price"*LinPedido.Quantity;
                    //CVP 2017-07-26 ini
                    //Si la línia té descompte, no el comptava i sortia malament
                    valorIVA := valorIVA - ((valorIVA * LinPedido."Line Discount %")/100);
                    //CVP fi
                    ImporteIVA := ImporteIVA + ((valorIVA * LinPedido."VAT %")/100);
                    IF (LinPedido.Type = SalesLine.Type::Item) AND
                       (LinPedido."No." <> '')
                    THEN
                      IF Item.GET(LinPedido."No.") THEN BEGIN
                        TotalNetWeight += (Item."Net Weight" * LinPedido.Quantity);
                        TotalGrossWeight += (Item."Gross Weight" * LinPedido.Quantity);
                    END;
                  UNTIL LinPedido.NEXT = 0;
                END;

                ImporteIVA := ROUND(ImporteIVA,0.01);

                //Buscar tipo de portes
                //IF "Sales Header"."Servicio transporte" <> '' THEN BEGIN
                //  IF NOT SerTrans.GET("Sales Header"."Servicio transporte") THEN BEGIN
                //    SerTrans.INIT;
                //    SerTrans."Servicio transporte" := '';
                //  END;
                //END;

                //Buscar transportista
                IF NOT Transportista.GET("Shipping Agent Code") THEN BEGIN
                  Transportista.INIT;
                  Transportista.Code := '';
                END;

                //Buscar banco cliente
                IF "Sales Header"."Cust. Bank Acc. Code" <> '' THEN BEGIN
                  IF NOT BancoCliente.GET("Sell-to Customer No.","Cust. Bank Acc. Code") THEN BEGIN
                    BancoCliente.INIT;
                    BancoCliente."Customer No." := '';
                    BancoCliente.Code := '';
                  END;
                END ELSE BEGIN
                  BancoCliente.SETRANGE(BancoCliente."Customer No.","Sell-to Customer No.");
                  IF NOT BancoCliente.FIND('-') THEN BEGIN
                    BancoCliente.INIT;
                    BancoCliente."Customer No." := '';
                    BancoCliente.Code := '';
                  END;
                END;

                IF NOT CondEnv.GET("Sales Header"."Shipment Method Code") THEN BEGIN
                  CondEnv.INIT;
                  CondEnv.Code := '';
                  CampoPortes := '';
                END ELSE BEGIN
                  //IF CondEnv.Suplidos THEN
                  //  CampoPortes := 'Pagados'
                  //ELSE
                  //  CampoPortes := 'Debidos';
                  CampoPortes := CondEnv.Description;
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

            trigger OnPreDataItem();
            begin
                Print := Print OR NOT CurrReport.PREVIEW;
                AsmInfoExistsForLine := FALSE;
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
                group(Options)
                {
                    CaptionML = ENU='Options',
                                ESP='Opciones';
                    field(NoOfCopies;NoOfCopies)
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='No. of Copies',
                                    ESP='Nº copias';
                        ToolTipML = ENU='Specifies how many copies of the document to print.',
                                    ESP='Especifica cuántas copias del documento se van a imprimir.';
                    }
                    field(ShowInternalInfo;ShowInternalInfo)
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='Show Internal Information',
                                    ESP='Mostrar información interna';
                        ToolTipML = ENU='Specifies if the document shows internal information.',
                                    ESP='Especifica si el documento muestra información interna.';
                    }
                    field(ArchiveDocument;ArchiveDocument)
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='Archive Document',
                                    ESP='Archivar documento';
                        ToolTipML = ENU='Specifies if the document is archived after you preview or print it.',
                                    ESP='Especifica si el documento se archiva después de visualizarlo previamente o imprimirlo.';

                        trigger OnValidate();
                        begin
                            IF NOT ArchiveDocument THEN
                              LogInteraction := FALSE;
                        end;
                    }
                    field(LogInteraction;LogInteraction)
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='Log Interaction',
                                    ESP='Log interacción';
                        Enabled = LogInteractionEnable;
                        ToolTipML = ENU='Specifies that interactions with the contact are logged.',
                                    ESP='Indica que las interacciones con el contacto están registradas.';

                        trigger OnValidate();
                        begin
                            IF LogInteraction THEN
                              ArchiveDocument := ArchiveDocumentEnable;
                        end;
                    }
                    field(ShowAssemblyComponents;DisplayAssemblyInformation)
                    {
                        CaptionML = ENU='Show Assembly Components',
                                    ESP='Mostrar componentes del ensamblado';
                    }
                    field(Valorado;Valorado)
                    {
                        Caption = 'Valorado';
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
            ArchiveDocument := SalesSetup."Archive Quotes and Orders";
            LogInteraction := SegManagement.FindInteractTmplCode(3) <> '';

            LogInteractionEnable := LogInteraction;

            Valorado := TRUE;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        SalesSetup.GET;
        FormatDocument.SetLogoPosition(SalesSetup."Logo Position on Documents",CompanyInfo1,CompanyInfo2,CompanyInfo3);
        //Valorado := TRUE;
    end;

    var
        Text004 : TextConst Comment='%1 = Document No.',ENU='ORDER CONFIRMATION %1',ESP='PEDIDO %1',FRA='DEMMANDE%1';
        PageCaptionCap : TextConst ENU='Page %1 of %2',ESP='Página %1 de %2',FRA='Page %1 sur %2';
        GLSetup : Record "General Ledger Setup";
        ShipmentMethod : Record "Shipment Method";
        PaymentTerms : Record "Payment Terms";
        PrepmtPaymentTerms : Record "Payment Terms";
        SalesPurchPerson : Record "Salesperson/Purchaser";
        CompanyInfo : Record "Company Information";
        CompanyInfo1 : Record "Company Information";
        CompanyInfo2 : Record "Company Information";
        CompanyInfo3 : Record "Company Information";
        SalesSetup : Record "Sales & Receivables Setup";
        VATAmountLine : Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine : Record "VAT Amount Line" temporary;
        PrepmtVATAmountLineDeduct : Record "VAT Amount Line" temporary;
        SalesLine : Record "Sales Line" temporary;
        DimSetEntry1 : Record "Dimension Set Entry";
        DimSetEntry2 : Record "Dimension Set Entry";
        TempPrepmtDimSetEntry : Record "Dimension Set Entry" temporary;
        PrepmtInvBuf : Record "Prepayment Inv. Line Buffer" temporary;
        RespCenter : Record "Responsibility Center";
        Language : Record "Language";
        CurrExchRate : Record "Currency Exchange Rate";
        AsmHeader : Record "Assembly Header";
        AsmLine : Record "Assembly Line";
        FormatAddr : Codeunit "Format Address";
        SegManagement : Codeunit "SegManagement";
        ArchiveManagement : Codeunit "ArchiveManagement";
        FormatDocument : Codeunit "Format Document";
        SalesPostPrepmt : Codeunit "Sales-Post Prepayments";
        DimMgt : Codeunit "DimensionManagement";
        CustAddr : array [9] of Text[50];
        ShipToAddr : array [8] of Text[50];
        CompanyAddr : array [8] of Text[50];
        SalesPersonText : Text[30];
        VATNoText : Text[80];
        ReferenceText : Text[80];
        TotalText : Text[50];
        TotalExclVATText : Text[50];
        TotalInclVATText : Text[50];
        MoreLines : Boolean;
        NoOfCopies : Integer;
        NoOfLoops : Integer;
        CopyText : Text[30];
        ShowShippingAddr : Boolean;
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
        Text007 : TextConst ENU='VAT Amount Specification in ',ESP='Especificar importe IVA en ';
        Text008 : TextConst ENU='Local Currency',ESP='Divisa local';
        Text009 : TextConst ENU='Exchange rate: %1/%2',ESP='Tipo cambio: %1/%2';
        VALExchRate : Text[50];
        PrepmtVATAmount : Decimal;
        PrepmtVATBaseAmount : Decimal;
        PrepmtTotalAmountInclVAT : Decimal;
        PrepmtLineAmount : Decimal;
        OutputNo : Integer;
        NNC_TotalLCY : Decimal;
        NNC_TotalExclVAT : Decimal;
        NNC_VATAmt : Decimal;
        NNC_TotalInclVAT : Decimal;
        NNC_PmtDiscOnVAT : Decimal;
        NNC_TotalInclVAT2 : Decimal;
        NNC_VatAmt2 : Decimal;
        NNC_TotalExclVAT2 : Decimal;
        NNC_SalesLineLineAmt : Decimal;
        NNC_SalesLineInvDiscAmt : Decimal;
        Print : Boolean;
        PaymentMethod : Record "Payment Method";
        NNC_PmtDiscGivenAmount : Decimal;
        [InDataSet]
        ArchiveDocumentEnable : Boolean;
        [InDataSet]
        LogInteractionEnable : Boolean;
        DisplayAssemblyInformation : Boolean;
        AsmInfoExistsForLine : Boolean;
        PaymentTermsCaptionLbl : TextConst ENU='Terms:',ESP='Vía de Pago:',FRA='Méthode de paiement';
        ShipmentMethodCaptionLbl : TextConst ENU='Shipment Method',ESP='Condiciones envío';
        PaymentMethodCaptionLbl : TextConst ENU='Payment:',ESP='Forma de Pago:',FRA='Mode de Paiement:';
        PhoneNoCaptionLbl : TextConst ENU='ph.:',ESP='Tel.:';
        VATRegNoCaptionLbl : TextConst ENU='VAT No.',ESP='CIF/NIF';
        GiroNoCaptionLbl : TextConst ENU='Giro No.',ESP='Nº giro postal';
        BankNameCaptionLbl : TextConst ENU='Bank',ESP='Banco';
        BankAccountNoCaptionLbl : TextConst ENU='Account No.',ESP='Nº cuenta';
        ShipmentDateCaptionLbl : TextConst ENU='Shipment Date',ESP='Fecha envío';
        OrderNoCaptionLbl : TextConst ENU='ORDER No.:',ESP='Nº PEDIDO:',FRA='Nº Commande';
        HeaderDimensionsCaptionLbl : TextConst ENU='Header Dimensions',ESP='Dimensiones cabecera';
        UnitPriceCaptionLbl : TextConst ENU='Unit Price',ESP='Precio venta';
        DiscountCaptionLbl : TextConst ENU='Discount %',ESP='% Descuento';
        AmountCaptionLbl : TextConst ENU='Amount',ESP='Importe';
        InvDiscAmtCaptionLbl : TextConst ENU='Invoice Discount Amount',ESP='Importe descuento factura';
        SubtotalCaptionLbl : TextConst ENU='Subtotal',ESP='Subtotal';
        PmtDiscGivenAmtCaptionLbl : TextConst ENU='Pmt. Discount Given Amount',ESP='Importe descuento P.P. concedido';
        PaymentDiscVATCaptionLbl : TextConst ENU='Payment Discount on VAT',ESP='Descuento P.P. sobre IVA';
        LineDimensionsCaptionLbl : TextConst ENU='Line Dimensions',ESP='Dimensiones línea';
        VATPecrentCaptionLbl : TextConst ENU='VAT %',ESP='% IVA';
        VATECBaseCaptionLbl : TextConst ENU='VAT+EC Base',ESP='Base IVA+RE';
        VATAmountCaptionLbl : TextConst ENU='VAT 0%:',ESP='I.V.A:';
        VATAmtSpecCaptionLbl : TextConst ENU='VAT Amount Specification',ESP='Especificación importe IVA';
        InvDiscBaseAmtCaptionLbl : TextConst ENU='Invoice Discount Base Amount',ESP='Importe base descuento factura';
        LineAmountCaptionLbl : TextConst ENU='Line Amount',ESP='Importe línea';
        InvPmtDiscountsCaptionLbl : TextConst ENU='Invoice and Pmt. Discounts',ESP='Factura y descuentos P.P.';
        VATIdentifierCaptionLbl : TextConst ENU='VAT Identifier',ESP='Identific. IVA';
        ECAmtCaptionLbl : TextConst ENU='EC Amount',ESP='Importe RE';
        ECPercentCaptionLbl : TextConst ENU='EC %',ESP='% RE';
        TotalCaptionLbl : TextConst ENU='Total',ESP='Total';
        VATBaseCaptionLbl : TextConst ENU='VAT Base',ESP='Base IVA';
        ShiptoAddressCaptionLbl : TextConst ENU='Ship-to Address',ESP='Dirección de envío';
        DescriptionCaptionLbl : TextConst ENU='Description',ESP='Descripción',FRA='Description';
        GLAccountNoCaptionLbl : TextConst ENU='G/L Account No.',ESP='Nº cuenta';
        PrepaymentSpecCaptionLbl : TextConst ENU='Prepayment Specification',ESP='Especificación prepago';
        PrepaymentVATAmtSpecCaptionLbl : TextConst ENU='Prepayment VAT Amount Specification',ESP='Especificación importe IVA prepago';
        PrepmtPaymentTermsCaptionLbl : TextConst ENU='Prepmt. Payment Terms',ESP='Términos prepago';
        HomePageCaptionLbl : TextConst ENU='Web:',ESP='Web:';
        EmailCaptionLbl : TextConst ENU='E-Mail:',ESP='E-mail:';
        DocumentDateCaptionLbl : TextConst ENU='Document Date',ESP='Fecha emisión documento';
        AllowInvDiscCaptionLbl : TextConst ENU='Allow Invoice Discount',ESP='Permitir descuento factura';
        CACCaptionLbl : Text;
        CACTxt : TextConst ENU='Régimen especial del criterio de caja',ESP='Régimen especial del criterio de caja';
        LinPedido : Record "Sales Line";
        Descuento : Text[30];
        Transportista : Record "Shipping Agent";
        BancoCliente : Record "Customer Bank Account";
        CondEnv : Record "Shipment Method";
        CampoPortes : Text[30];
        text001 : TextConst ENU='Tax base:',ESP='Base imponible:',FRA='Base d''imposition:';
        text002 : TextConst ENU='Total:',ESP='Total:',FRA='Total:';
        text003 : TextConst ENU='Date:',ESP='Fecha pedido:',FRA='Date Order:';
        text010 : TextConst ENU='Delivery date:',ESP='Fecha entrega:',FRA='Date de livra:';
        text005 : TextConst ENU='Shipping by',ESP='Envío por';
        text006 : TextConst ENU='Delivery:',ESP='Portes:';
        text0111 : TextConst ENU='Discount 0.000%:',ESP='Descuento',FRA='Remise 0,000%:';
        text012 : TextConst ENU='Comments:',ESP='Observaciones:',FRA='Observations:';
        TotalPedido : Decimal;
        valor : Decimal;
        ImporteIVA : Decimal;
        valorIVA : Decimal;
        i : Integer;
        Valorado : Boolean;
        Item : Record "Item";
        TotalNetWeight : Decimal;
        TotalGrossWeight : Decimal;
        PesoNeto : TextConst ENU='Net weight',ESP='Peso neto';
        PesoBruto : TextConst ENU='Gross weight',ESP='Peso bruto';
        divi2 : Code[10];
        divisa : Record "Currency";
        Simbolo : Text[10];
        Country : Record "Country/Region";
        CodigoCaptionLbl : TextConst ENU='Reference',ESP='Código',FRA='Code';
        DescripcionCaptionLbl : TextConst ENU='DESCRIPTION',ESP='DESCRIPCION',FRA='DESCRIPTION';
        CantidadCaptionLbl : TextConst ENU='QUANTITY',ESP='CANTIDAD',FRA='QUANTITÉ';
        Total1CaptionLbl : TextConst ENU='Amount ',ESP='Total ';
        PrecioVentaCaptionLbl : TextConst ENU='P.Unit.',ESP='P. Unit.';
        Text013 : TextConst ENU='Costumer No:',ESP='Nº cliente:',FRA='Nº client';
        Observaciones : Text[1024];
        AuxText : Text;
        Cust : Record "Customer";
        TransportistaCaptionLbl : TextConst ENU='Carrier:',ESP='Transportista:',FRA='Transporteur:';
        text014 : TextConst ENU='Customer PO No:',ESP='Nº Pedido Cliente:',FRA='Nº commande du client:';
        text015 : TextConst ENU='Agent:',ESP='Comercial:',FRA='Commercial:';
        Vend : Record "Salesperson/Purchaser";
        valorDesc : Decimal;
        ObservacionesAux : Record "Sales Comment Line";
        Cantidadcaption : TextConst ENU='Quantity',ESP='Cantidad',FRA='Quantité';
        UnidadCaption : TextConst ENU='Unit of measurement',ESP='Unidad medidad',FRA='Unité de mesure';
        text011 : Text[30];

    procedure InitializeRequest(NoOfCopiesFrom : Integer;ShowInternalInfoFrom : Boolean;ArchiveDocumentFrom : Boolean;LogInteractionFrom : Boolean;PrintFrom : Boolean;DisplayAsmInfo : Boolean);
    begin
        NoOfCopies := NoOfCopiesFrom;
        ShowInternalInfo := ShowInternalInfoFrom;
        ArchiveDocument := ArchiveDocumentFrom;
        LogInteraction := LogInteractionFrom;
        Print := PrintFrom;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure FormatAddressFields(var SalesHeader : Record "Sales Header");
    begin
        FormatAddr.GetCompanyAddr(SalesHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.SalesHeaderBillTo(CustAddr,SalesHeader);
        //FormatAddr.SalesHeaderShipTo(CustAddr,SalesHeader);
        //ShowShippingAddr := TRUE;
        ShowShippingAddr := FormatAddr.SalesHeaderShipTo(ShipToAddr,CustAddr,SalesHeader);
        FormatAddr.SalesHeaderShipTo(ShipToAddr,CustAddr,SalesHeader);
        //i := 1;
        //REPEAT
        //  CustAddr[i] := ShipToAddr[i];
        //  i := i + 1;
        //UNTIL i > 9;
    end;

    local procedure FormatDocumentFields(SalesHeader : Record "Sales Header");
    begin
        WITH SalesHeader DO BEGIN
          FormatDocument.SetTotalLabels("Currency Code",TotalText,TotalInclVATText,TotalExclVATText);
          FormatDocument.SetSalesPerson(SalesPurchPerson,"Salesperson Code",SalesPersonText);
          FormatDocument.SetPaymentTerms(PaymentTerms,"Payment Terms Code","Language Code");
          FormatDocument.SetPaymentTerms(PrepmtPaymentTerms,"Prepmt. Payment Terms Code","Language Code");
          FormatDocument.SetShipmentMethod(ShipmentMethod,"Shipment Method Code","Language Code");
          FormatDocument.SetPaymentMethod(PaymentMethod,"Payment Method Code");

          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
          VATNoText := FormatDocument.SetText("VAT Registration No." <> '',FIELDCAPTION("VAT Registration No.")) + ':';
          VATNoText := FIELDCAPTION("VAT Registration No.") + ':';
        END;
    end;

    local procedure GetUnitOfMeasureDescr(UOMCode : Code[10]) : Text[10];
    var
        UnitOfMeasure : Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
          EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure ShowCashAccountingCriteria(SalesHeader : Record "Sales Header") : Text;
    var
        VATPostingSetup : Record "VAT Posting Setup";
        SalesLine : Record "Sales Line";
    begin
        GLSetup.GET;
        IF NOT GLSetup."VAT Cash Regime" THEN
          EXIT;
        CACCaptionLbl := '';
        SalesLine.SETRANGE("Document No.",SalesHeader."No.");
        IF SalesLine.FINDSET THEN
          REPEAT
            IF VATPostingSetup.GET(SalesHeader."VAT Bus. Posting Group",SalesLine."VAT Prod. Posting Group") THEN
              IF VATPostingSetup."Unrealized VAT Type" <> VATPostingSetup."Unrealized VAT Type"::" " THEN
                CACCaptionLbl := CACTxt;
          UNTIL (SalesLine.NEXT = 0) OR (CACCaptionLbl <> '');
        EXIT(CACCaptionLbl);
    end;

    procedure BlanksForIndent() : Text[10];
    begin
        EXIT(PADSTR('',2,' '));
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

