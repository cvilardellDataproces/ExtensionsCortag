report 90075 "Formato Factura Cortag"
{
    // version NAVW19.00,NAVES9.00,CLIP4.0,CLIP5.0,CLIP10.0

    // CLIP4.0  - LNL - 04/12/2015 - Impresos de ventas
    // CLIP5.0  - LNL - 09/12/2015 - Texto registro mercantil en pie de impresos
    // CLIP10.0 - LNL - 02/01/2016 - Impresos. Lineas de relleno para situar totales en pie de página
    // CLIP4.1  - LNL - 20/01/2016 - Ajustes en Impresos de ventas
    // CLIP15.0 - LNL - 20/04/2016 - Descuento factura está sumando descuento línea y no debería hacerlo
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Formato Factura Cortag.rdlc';

    CaptionML = ENU='Sales - Invoice',
                ESP='Ventas - Factura';
    Permissions = TableData "Sales Shipment Buffer"=rimd;
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Invoice Header";"Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";
            RequestFilterHeadingML = ENU='Posted Sales Invoice',
                                     ESP='Histórico facturas venta';
            column(No_SalesInvHdr;"No.")
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
            column(PmtTermsDescCaption;PmtTermsDescCaptionLbl)
            {
            }
            column(ShpMethodDescCaption;ShpMethodDescCaptionLbl)
            {
            }
            column(PmtMethodDescCaption;PmtMethodDescCaptionLbl)
            {
            }
            column(DocDateCaption;DocDateCaptionLbl)
            {
            }
            column(HomePageCaption;HomePageCaptionCap)
            {
            }
            column(EmailCaption;EmailCaptionLbl)
            {
            }
            column(DisplayAdditionalFeeNote;DisplayAdditionalFeeNote)
            {
            }
            column(PrintPesosInfo;PrintPesosInfo)
            {
            }
            column(PesosInfo1;PesosInfo[1])
            {
            }
            column(PesosInfo2;PesosInfo[2])
            {
            }
            column(PesosInfo3;PesosInfo[3])
            {
            }
            column(PesosInfoTxt1;PesosInfoTxt[1])
            {
            }
            column(PesosInfoTxt2;PesosInfoTxt[2])
            {
            }
            column(PesosInfoTxt3;PesosInfoTxt[3])
            {
            }
            column(DocTotal1;DocumentTotals[1])
            {
            }
            column(DocTotal2;DocumentTotals[2])
            {
            }
            column(DocTotal3;DocumentTotals[3])
            {
            }
            column(DocTotal4;DocumentTotals[4])
            {
            }
            column(DocTotal5;DocumentTotals[5])
            {
            }
            column(DocTotal6;DocumentTotals[6])
            {
            }
            column(DocTotal7;DocumentTotals[7])
            {
            }
            column(DocTotal8;DocumentTotals[8])
            {
            }
            column(DocTotal9;DocumentTotals[9])
            {
            }
            column(DocTotal10;DocumentTotals[10])
            {
            }
            column(DocTotal11;DocumentTotals[11])
            {
            }
            column(DocTotal12;DocumentTotals[12])
            {
            }
            column(DocTotal13;DocumentTotals[13])
            {
            }
            column(DocTotal14;DocumentTotals[14])
            {
            }
            column(DocTotal15;DocumentTotals[15])
            {
            }
            column(DocTotal16;DocumentTotals[16])
            {
            }
            column(DocTotal17;DocumentTotals[17])
            {
            }
            column(DocTotal18;DocumentTotals[18])
            {
            }
            column(DocTotal19;DocumentTotals[19])
            {
            }
            column(DocTotal20;DocumentTotals[20])
            {
            }
            column(DocTotal21;DocumentTotals[21])
            {
            }
            column(CurrencyCode;CurrencyTxt)
            {
            }
            column(FechaCaption;FechaCaptionLbl)
            {
            }
            column(CodClienteCaption;CodClienteCaptionLbl)
            {
            }
            column(CondPagoCaption;CondPagoCaptionLbl)
            {
            }
            column(AlbaranCaption;AlbaranCaptionLbl)
            {
            }
            column(PedidoCaption;PedidoCaptionLbl)
            {
            }
            column(CantidadCaption;CantidadCaptionLbl)
            {
            }
            column(PrecioNetoCaption;PrecioNetoCaptionLbl)
            {
            }
            column(ImporteCaption;ImporteCaptionLbl)
            {
            }
            column(importeNetoCaption;importeNetoCaptionLbl)
            {
            }
            column(BaseImponibleCaption;BaseImponibleCaptionLbl)
            {
            }
            column(ImporteTotalFacCaption;ImporteTotalFacCaptionLbl + textDivisa)
            {
            }
            column(Conceptocaption;ConceptocaptionLbl)
            {
            }
            column(PrecioTarifaCaption;PrecioTarifaCaptionLbl)
            {
            }
            column(ImporteBrutoCaption;ImporteBrutoCaptionLbl)
            {
            }
            column(VATAmtLineVATCaption1;VATAmtLineVATCaptionLbl)
            {
            }
            column(VATAmountCaption1;VATAmountCaptionLbl)
            {
            }
            column(DtoCaption;DtoCaptionLbl)
            {
            }
            column(DatosBancariosCaption;DatosBancariosCaptionLbl)
            {
            }
            column(TelefonoCaption;TelefonoCaptionLbl)
            {
            }
            column(ViaPagocaption;ViaPagocaptionLbl)
            {
            }
            column(CondicionesCaption;CondicionesCaptionLbl)
            {
            }
            column(NotasCaption;NotasCaptionLbl)
            {
            }
            column(Text004;Text004)
            {
            }
            column(DireccionEnvioCaption;DireccionEnvioCaptionLbl)
            {
            }
            dataitem(CopyLoop;"Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;"integer")
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number=CONST(1));
                    column(CompanyInfo2Picture;CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo1Picture;CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo3Picture;CompanyInfo3.Picture)
                    {
                    }
                    column(Company_RegistroMercantil;CompanyInfo.RegistroMercantil)
                    {
                    }
                    column(DocumentCaption;STRSUBSTNO(DocumentCaption,CopyText))
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
                    column(ShowShippingAddrInt;ShowShippingAddrInt)
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
                    column(CompanyInfoVATRegistrationNo;CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
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
                    column(CompanyInfoBankIBAN;CompanyInfo.IBAN)
                    {
                    }
                    column(CompanyInfoBankSWIFT;CompanyInfo."SWIFT Code")
                    {
                    }
                    column(BilltoCustNo_SalesInvHdr;"Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDate_SalesInvHdr;FORMAT("Sales Invoice Header"."Posting Date"))
                    {
                    }
                    column(VATNoText;VATNoText)
                    {
                    }
                    column(VATRegNo_SalesInvHeader;"Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHeader;"Sales Invoice Header"."Due Date")
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(No_SalesInvoiceHeader1;"Sales Invoice Header"."No.")
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourReference_SalesInvHdr;"Sales Invoice Header"."Your Reference")
                    {
                    }
                    column(OrderNoText;OrderNoText)
                    {
                    }
                    column(OrderNo_SalesInvHeader;"Sales Invoice Header"."Order No.")
                    {
                    }
                    column(CustAddr7;CustAddr[7])
                    {
                    }
                    column(CustAddr8;CustAddr[8])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(CompanyAddr7;CompanyAddr[7])
                    {
                    }
                    column(CompanyAddr8;CompanyAddr[8])
                    {
                    }
                    column(DocDate_SalesInvoiceHdr;FORMAT("Sales Invoice Header"."Document Date",0,4))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr;"Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo;FORMAT("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(PageCaption;PageCaptionCap)
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
                    column(BankAccNoCaption;BankAccNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption;DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption;InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption;PostingDateCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesInvHdrCaption;"Sales Invoice Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdrCaption;"Sales Invoice Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(CACCaption;CACCaptionLbl)
                    {
                    }
                    column(PortesCaption;PortesCaptionLbl)
                    {
                    }
                    column(dtoPronPagocaption;dtoPronPagocaptionLbl)
                    {
                    }
                    column(SeguroCaption;SeguroCaptionLbl)
                    {
                    }
                    column(CompanyNIFCaption;VATRegNoCaptionLbl)
                    {
                    }
                    column(SimbDivisa;SimbDivisa)
                    {
                    }
                    dataitem(DimensionLoop1;"Integer")
                    {
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(DimText;DimText)
                        {
                        }
                        column(Number_DimensionLoop1;Number)
                        {
                        }
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
                    dataitem("Sales Invoice Line";"Sales Invoice Line")
                    {
                        DataItemLink = "Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.","Line No.");
                        column(GetCarteraInvoice;GetCarteraInvoice)
                        {
                        }
                        column(LineAmt_SalesInvoiceLine;"Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Description_SalesInvLine;Description)
                        {
                        }
                        column(No_SalesInvoiceLine;"No.")
                        {
                        }
                        column(Quantity_SalesInvoiceLine;Quantity)
                        {
                        }
                        column(UOM_SalesInvoiceLine;"Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine;"Unit Price")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(LineDisc_SalesInvoiceLine;TextDescuento)
                        {
                        }
                        column(VATIdent_SalesInvLine;"VAT Identifier")
                        {
                        }
                        column(PostedShipmentDate;FORMAT(PostedShipmentDate))
                        {
                        }
                        column(Type_SalesInvoiceLine;FORMAT("Sales Invoice Line".Type))
                        {
                        }
                        column(InvDiscountAmount;-"Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal;TotalSubTotal)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvoiceDiscountAmount;TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmount;TotalAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalGivenAmount;TotalGivenAmount)
                        {
                        }
                        column(SalesInvoiceLineAmount;Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmountIncludingVATAmount;"Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Amount_SalesInvoiceLineIncludingVAT;"Amount Including VAT")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText;VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText;TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText;TotalInclVATText)
                        {
                        }
                        column(TotalAmountInclVAT;TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountVAT;TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr;"Sales Invoice Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscountOnVAT;TotalPaymentDiscountOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATCalcType;VATAmountLine."VAT Calculation Type")
                        {
                        }
                        column(LineNo_SalesInvoiceLine;"Line No.")
                        {
                        }
                        column(PmtinvfromdebtpaidtoFactCompCaption;PmtinvfromdebtpaidtoFactCompCaptionLbl)
                        {
                        }
                        column(UnitPriceCaption;UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscountCaption;DiscountCaptionLbl)
                        {
                        }
                        column(AmtCaption;AmtCaptionLbl)
                        {
                        }
                        column(PostedShpDateCaption;PostedShpDateCaptionLbl)
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
                        column(PmtDiscVATCaption;PmtDiscVATCaptionLbl)
                        {
                        }
                        column(Description_SalesInvLineCaption;FIELDCAPTION(Description))
                        {
                        }
                        column(No_SalesInvoiceLineCaption;FIELDCAPTION("No."))
                        {
                        }
                        column(Quantity_SalesInvoiceLineCaption;FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesInvoiceLineCaption;FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdent_SalesInvLineCaption;FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(ShipmentNo_SalesInvLine;SaleShipHead."No.")
                        {
                        }
                        column(ShipDate_SalesInvLine;FORMAT("Sales Invoice Line"."Shipment Date"))
                        {
                        }
                        column(ExternalDocNo_SalesShipHead;"Sales Invoice Header"."Order No.")
                        {
                        }
                        column(TextQty;TextQty)
                        {
                        }
                        column(dtofact;dtofact)
                        {
                        }
                        column(ItemDescription1;ItemDescription[1])
                        {
                        }
                        column(ItemDescription2;ItemDescription[2])
                        {
                        }
                        column(ItemDescription3;ItemDescription[3])
                        {
                        }
                        column(NoOfBlankLines2;NoOfBlankLines)
                        {
                        }
                        dataitem("Sales Shipment Buffer";"Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(PostingDate_SalesShipmentBuffer;FORMAT(SalesShipmentBuffer."Posting Date"))
                            {
                            }
                            column(Quantity_SalesShipmentBuffer;SalesShipmentBuffer.Quantity)
                            {
                                //DecimalPlaces = 0:5;
                            }
                            column(ShpCaption;ShpCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                  SalesShipmentBuffer.FIND('-')
                                ELSE
                                  SalesShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                SalesShipmentBuffer.SETRANGE(SalesShipmentBuffer."Document No.","Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE(SalesShipmentBuffer."Line No.","Sales Invoice Line"."Line No.");

                                SETRANGE(Number,1,SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2;"Integer")
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=FILTER(1..));
                            column(DimText1;DimText)
                            {
                            }
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

                                DimSetEntry2.SETRANGE(DimSetEntry2."Dimension Set ID","Sales Invoice Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop;"Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(TempPostedAsmLineUOMCode;GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                                //DecimalPlaces = 0:5;
                            }
                            column(TempPostedAsmLineQuantity;TempPostedAsmLine.Quantity)
                            {
                                //DecimalPlaces = 0:5;
                            }
                            column(TempPostedAsmLineVariantCode;BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                                //DecimalPlaces = 0:5;
                            }
                            column(TempPostedAsmLineDescrip;BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(TempPostedAsmLineNo;BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation : Record "Item Translation";
                            begin
                                IF Number = 1 THEN
                                  TempPostedAsmLine.FINDSET
                                ELSE
                                  TempPostedAsmLine.NEXT;

                                IF ItemTranslation.GET(TempPostedAsmLine."No.",
                                     TempPostedAsmLine."Variant Code",
                                     "Sales Invoice Header"."Language Code")
                                THEN
                                  TempPostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin
                                CLEAR(TempPostedAsmLine);
                                IF NOT DisplayAssemblyInformation THEN
                                  CurrReport.BREAK;
                                CollectAsmInformation;
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number,1,TempPostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            PostedShipmentDate := 0D;
                            IF Quantity <> 0 THEN
                              PostedShipmentDate := FindPostedShipmentDate;

                            //IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN //CLIP4.0
                            //  "No." := '';                                                  //CLIP4.0

                            IF VATPostingSetup.GET("Sales Invoice Line"."VAT Bus. Posting Group","Sales Invoice Line"."VAT Prod. Posting Group") THEN BEGIN
                              VATAmountLine.INIT;
                              VATAmountLine."VAT Identifier" := "VAT Identifier";
                              VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                              VATAmountLine."Tax Group Code" := "Tax Group Code";
                              VATAmountLine."VAT %" := VATPostingSetup."VAT %";
                              VATAmountLine."EC %" := VATPostingSetup."EC %";
                              VATAmountLine."VAT Base" := "Sales Invoice Line".Amount;
                              VATAmountLine."Amount Including VAT" := "Sales Invoice Line"."Amount Including VAT";
                              VATAmountLine."Line Amount" := "Line Amount";
                              VATAmountLine."Pmt. Disc. Given Amount" := "Pmt. Disc. Given Amount";
                              IF "Allow Invoice Disc." THEN
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                              VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                              //CVP EXT
                              //VATAmountLine.SetCurrencyCode("Sales Invoice Header"."Currency Code");
                              VATAmountLine."VAT Difference" := "VAT Difference";
                              VATAmountLine."EC Difference" := "EC Difference";
                              IF "Sales Invoice Header"."Prices Including VAT" THEN
                                VATAmountLine."Prices Including VAT" := TRUE;
                              VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                              VATAmountLine.InsertLine;

                              TotalSubTotal += "Line Amount";
                              TotalInvoiceDiscountAmount -= "Inv. Discount Amount";
                              TotalAmount += Amount;
                              TotalAmountVAT += "Amount Including VAT" - Amount;
                              TotalAmountInclVAT += "Amount Including VAT";
                              TotalGivenAmount -= "Pmt. Disc. Given Amount";
                              TotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Pmt. Disc. Given Amount" - "Amount Including VAT");
                            END;

                            //-CLIP4.0
                            SaleShipHead.RESET;
                            SaleShipHead.SETRANGE(SaleShipHead."Order No.", "Sales Invoice Header"."Order No.");
                            IF NOT SaleShipHead.FINDFIRST THEN
                              SaleShipHead.INIT;

                            TextQty := FORMAT(Quantity);
                            IF OrderQtyIsDiferent(Quantity,"Shipment No.","Shipment Line No.") THEN
                              TextQty += ' (P)';

                            //-CLIP10.0 Estas lineas estan copiadas en la función CalcDocumentTotals
                            //          Si se cambia código aquí, ajustar también el código allí
                            IF Type = Type::" " THEN
                              IF COPYSTR(Description,1,8) = 'Nº albar' THEN
                                 CurrReport.SKIP;

                            CLEAR(ItemDescription);
                            CASE Type OF
                              Type::Item:
                                BEGIN
                                  ItemDescription[1] := "No.";
                                  IF "Cross-Reference No." <> '' THEN  BEGIN
                                    ItemDescription[1] := "Cross-Reference No.";
                                    ItemDescription[3] := "No.";
                                  END;
                                  IF ShowItemDesc THEN
                                    ItemDescription[2] := Description;
                                END;
                              ELSE
                                ItemDescription[1] := Description;
                            END;

                            CLEAR(dtofact);
                            IF "Inv. Discount Amount" <> 0 THEN BEGIN
                              DTOFACTURA.RESET;
                              DTOFACTURA.SETRANGE(DTOFACTURA.Code,"Sales Invoice Header"."Sell-to Customer No.");
                              IF DTOFACTURA.FINDFIRST THEN
                                dtofact := DTOFACTURA."Discount %";
                            END;

                            //CVP 2018-03-12 ini
                            //Detall descompte factura
                            TextDescuento := '';
                            IF "Line Discount %" <> 0 THEN BEGIN
                              //CVP 2018-05-17 ini
                              //a les línies es pot modificar, per tant hem d'agafar el de les línies.
                              //IF DescCliente.GET("Sales Invoice Header"."Customer Disc. Group") THEN
                              //IF DescCliente.GET("Sales Invoice Line"."Line Discount %") THEN
                              //CVP fi
                              //  TextDescuento := DescCliente.Description
                              //ELSE
                              //  TextDescuento := FORMAT("Sales Invoice Line"."Line Discount %");
                              SalesLineDiscount.SETRANGE(SalesLineDiscount."Sales Code", "Sales Invoice Header"."Customer Disc. Group");
                              SalesLineDiscount.SETRANGE(SalesLineDiscount."Line Discount %", "Sales Invoice Line"."Line Discount %");
                              IF SalesLineDiscount.FINDFIRST THEN
                                BEGIN
                                  IF DescCliente.GET("Sales Invoice Header"."Customer Disc. Group") THEN
                                    TextDescuento := DescCliente.Description
                                  ELSE
                                    TextDescuento := FORMAT("Sales Invoice Line"."Line Discount %");
                                END
                              ELSE
                                TextDescuento := FORMAT("Sales Invoice Line"."Line Discount %");
                            END;
                            //CVP fi

                            //IF (Type = Type::"G/L Account") THEN BEGIN
                             // IF ("No." = SalesSetup."Cuenta de Portes") THEN BEGIN
                                //PortsAmt += Amount;
                               // IF (NOT ShowPortes) THEN
                                  //CurrReport.SKIP;
                             // END;
                             // IF ("No." = SalesSetup."Cuenta de Seguros") THEN BEGIN
                                //FinancialAmt += Amount;
                               // CurrReport.SKIP;
                              //END;
                            //END;
                            //+CLIP4.0
                            //+CLIP10.0
                        end;

                        trigger OnPreDataItem();
                        begin
                            VATAmountLine.DELETEALL;
                            SalesShipmentBuffer.RESET;
                            SalesShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                              MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                              CurrReport.BREAK;
                            SETRANGE("Line No.",0,"Line No.");
                            CurrReport.CREATETOTALS("Line Amount",Amount,"Amount Including VAT","Inv. Discount Amount","Pmt. Disc. Given Amount");
                        end;
                    }
                    dataitem("Sales Comment Line";"Sales Comment Line")
                    {
                        DataItemLink = "No."=FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = WHERE("Document Type"=CONST("Posted Invoice"));
                        column(Comentario;"Sales Comment Line".Comment)
                        {
                        }
                    }
                    dataitem(VATCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmountLineVATBase;VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVATAmount;VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineLineAmount;VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt;VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscountAmt;VATAmountLine."Invoice Discount Amount" + VATAmountLine."Pmt. Disc. Given Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineECAmount;VATAmountLine."EC Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT;VATAmountLine."VAT %")
                        {
                            //DecimalPlaces = 0:6;
                        }
                        column(VATAmtLineVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineEC;VATAmountLine."EC %")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATCaption;VATAmtLineVATCaptionLbl)
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
                        column(VATIdentCaption;VATIdentCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption;InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption1;LineAmtCaption1Lbl)
                        {
                        }
                        column(InvPmtDiscCaption;InvPmtDiscCaptionLbl)
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
                            IF VATAmountLine."VAT Amount" = 0 THEN
                              VATAmountLine."VAT %" := 0;
                            IF VATAmountLine."EC Amount" = 0 THEN
                              VATAmountLine."EC %" := 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount",VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount",VATAmountLine."VAT Base",VATAmountLine."VAT Amount",
                              VATAmountLine."EC Amount",VATAmountLine."Pmt. Disc. Given Amount");
                        end;
                    }
                    dataitem(VATClauseEntryCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode;VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription;VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2;VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount;VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATClausesCaption;VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption;VATIdentifierCaptionLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption;VATAmtCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            IF NOT VATClause.GET(VATAmountLine."VAT Clause Code") THEN
                              CurrReport.SKIP;
                            VATClause.TranslateDescription("Sales Invoice Header"."Language Code");
                        end;

                        trigger OnPreDataItem();
                        begin
                            CLEAR(VATClause);
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VatCounterLCY;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader;VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate;VALExchRate)
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
                        column(VATAmountLineVAT1;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:5;
                        }
                        column(VATAmtLineVATIdentifier1;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VALVATBaseLCYCaption1;VALVATBaseLCYCaption1Lbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Invoice Header"."Posting Date","Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Invoice Header"."Posting Date","Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Invoice Header"."Currency Code" = '')
                            THEN
                              CurrReport.BREAK;

                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                              VALSpecLCYHeader := Text007 + Text008
                            ELSE
                              VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Invoice Header"."Posting Date","Sales Invoice Header"."Currency Code",1);
                            CalculatedExchRate := ROUND(1 / "Sales Invoice Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount",0.000001);
                            VALExchRate := STRSUBSTNO(Text009,CalculatedExchRate,CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total;"Integer")
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                    }
                    dataitem(LineFee;"Integer")
                    {
                        DataItemTableView = SORTING(Number)
                                            ORDER(Ascending)
                                            WHERE(Number=FILTER(1..));
                        column(LineFeeCaptionLbl;TempLineFeeNoteOnReportHist.ReportText)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF NOT DisplayAdditionalFeeNote THEN
                              CurrReport.BREAK;

                            IF Number = 1 THEN BEGIN
                              IF NOT TempLineFeeNoteOnReportHist.FINDSET THEN
                                CurrReport.BREAK
                            END ELSE
                              IF TempLineFeeNoteOnReportHist.NEXT = 0 THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number > 1 THEN BEGIN
                      CopyText := Text003;
                      OutputNo += 1;
                    END;
                    CurrReport.PAGENO := 1;

                    TotalSubTotal := 0;
                    TotalInvoiceDiscountAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalGivenAmount := 0;
                    TotalPaymentDiscountOnVAT := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT CurrReport.PREVIEW THEN
                      SalesInvCountPrinted.RUN("Sales Invoice Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                      NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                  FormatAddr.RespCenter(CompanyAddr,RespCenter);
                  CompanyInfo."Phone No." := RespCenter."Phone No.";
                  CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                  FormatAddr.Company(CompanyAddr,CompanyInfo);

                //-CLIP4.0
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
                //CompanyAddr[4] := 'Tel. ' + CompanyInfo."Phone No." + ' - Fax. ' + CompanyInfo."Fax No.";
                CompanyAddr[4] := CompanyInfo."Phone No.";
                //CompanyAddr[5] := 'V.A.T. nº: ES' + CompanyInfo."VAT Registration No." + ' - ' + CompanyInfo."Home Page";
                //CompanyAddr[5] := 'V.A.T. nº: ES' + CompanyInfo."VAT Registration No." ;
                CompanyAddr[5] := 'ES' + CompanyInfo."VAT Registration No." ;
                //CompanyAddr[6] := '';
                CompanyAddr[6] := CompanyInfo."Home Page";
                CompanyAddr[7] := CompanyInfo."E-Mail";
                COMPRESSARRAY(CompanyAddr);
                //+CLIP4.0
                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");

                IF "Order No." = '' THEN
                  OrderNoText := ''
                ELSE
                  OrderNoText := FIELDCAPTION("Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                  SalesPurchPerson.INIT;
                  SalesPersonText := '';
                END ELSE BEGIN
                  SalesPurchPerson.GET("Salesperson Code");
                  SalesPersonText := Text000;
                END;
                IF "Your Reference" = '' THEN
                  ReferenceText := ''
                ELSE
                  ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                  VATNoText := ''
                ELSE
                  VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                  GLSetup.TESTFIELD("LCY Code");
                  TotalText := STRSUBSTNO(Text001,GLSetup."LCY Code");
                  TotalInclVATText := STRSUBSTNO(Text1100000,GLSetup."LCY Code");
                  TotalExclVATText := STRSUBSTNO(Text1100001,GLSetup."LCY Code");
                END ELSE BEGIN
                  TotalText := STRSUBSTNO(Text001,"Currency Code");
                  TotalInclVATText := STRSUBSTNO(Text1100000,"Currency Code");
                  TotalExclVATText := STRSUBSTNO(Text1100001,"Currency Code");
                END;
                FormatAddr.SalesInvBillTo(CustAddr,"Sales Invoice Header");
                IF NOT Cust.GET("Bill-to Customer No.") THEN
                  CLEAR(Cust);
                //-CLIP4.1
                CLEAR(CustAddr);
                CLEAR(AuxText);
                IF "Bill-to County" <> '' THEN
                  AuxText := "Bill-to County";
                CustAddr[1] := "Bill-to Name" + ' ' + "Bill-to Name 2";
                CustAddr[2] := "Bill-to Address";
                CustAddr[3] := "Bill-to Address 2";
                CustAddr[4] := "Bill-to Post Code" + ' ' + "Bill-to City" + '(' + AuxText + ')';
                CustAddr[5] := GetCountryName("Bill-to Country/Region Code");
                CustAddr[6] := PersonaContactoCaptionLbl + ' ' + "Bill-to Contact";
                CustAddr[8] := VATRegNoCaptionLbl + ': ' + Cust."VAT Registration No."; //CLIP4.0
                COMPRESSARRAY(CustAddr);
                //-CLIP4.1

                IF "Payment Terms Code" = '' THEN
                  PaymentTerms.INIT
                ELSE BEGIN
                  PaymentTerms.GET("Payment Terms Code");
                  PaymentTerms.TranslateDescription(PaymentTerms,"Language Code");
                END;

                IF "Payment Method Code" = '' THEN
                  PaymentMethod.INIT
                ELSE
                  PaymentMethod.GET("Payment Method Code");
                IF "Shipment Method Code" = '' THEN
                  ShipmentMethod.INIT
                ELSE BEGIN
                  ShipmentMethod.GET("Shipment Method Code");
                  ShipmentMethod.TranslateDescription(ShipmentMethod,"Language Code");
                END;

                //FormatAddr.SalesInvShipTo(ShipToAddr,"Sales Invoice Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                CLEAR(ShowShippingAddrInt); //CLIP4.0
                IF ShowShippingAddr THEN    //CLIP4.0
                  ShowShippingAddrInt := 1; //CLIP4.0

                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                  IF ShipToAddr[i] <> CustAddr[i] THEN
                    ShowShippingAddr := TRUE;

                ShowCashAccountingCriteria("Sales Invoice Header");

                GetLineFeeNoteOnReportHist("No.");

                IF LogInteraction THEN
                  IF NOT CurrReport.PREVIEW THEN BEGIN
                    IF "Bill-to Contact No." <> '' THEN
                      SegManagement.LogDocument(
                        4,"No.",0,0,DATABASE::Contact,"Bill-to Contact No.","Salesperson Code",
                        "Campaign No.","Posting Description",'')
                    ELSE
                      SegManagement.LogDocument(
                        4,"No.",0,0,DATABASE::Customer,"Bill-to Customer No.","Salesperson Code",
                        "Campaign No.","Posting Description",'');
                  END;

                //-CLIP4.0
                CLEAR(PesosInfoTxt);
                CLEAR(PesosInfo);
                CLEAR(PrintPesosInfo);
                CLEAR(CurrencyTxt);
                CurrencyTxt := "Currency Code";
                IF CurrencyTxt = '' THEN
                  CurrencyTxt := 'EUR';
                VATBusPostGr.GET("VAT Bus. Posting Group");
                //IF VATBusPostGr."Imprimir peso en factura/abono" THEN BEGIN
                  //PrintPesosInfo := 1; // 1 = true
                  //CALCFIELDS("Peso neto");
                  PesosInfoTxt[1] := 'Poids Net/Net Weight/Peso Neto:';
                 // PesosInfo[1]    := ROUND("Peso neto" + "Peso neto manual",0.5,'>');
                  PesosInfoTxt[2] := 'Tara:';
                  //PesosInfo[2]    := Tara;
                  PesosInfoTxt[3] := 'Poids Brut/Gross Weight/Peso Bruto:';
                  PesosInfo[3]    := PesosInfo[1] + PesosInfo[2];
                //END;
                CalcDocumentTotals("No.");
                //+CLIP4.0

                //Cod Divisa.
                SimbDivisa := '';
                IF "Sales Invoice Header"."Currency Code" = '' THEN BEGIN
                  SimbDivisa := '€';
                  textDivisa := 'EUROS';
                  END
                ELSE BEGIN
                  IF DivisaAux.GET("Sales Invoice Header"."Currency Code") THEN BEGIN
                    SimbDivisa := DivisaAux.Symbol;
                    textDivisa := "Sales Invoice Header"."Currency Code";
                  END;
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
                group(Options)
                {
                    CaptionML = ENU='Options',
                                ESP='Opciones';
                    field(NoOfCopies;NoOfCopies)
                    {
                        CaptionML = ENU='No. of Copies',
                                    ESP='Nº copias';
                    }
                    field(ShowInternalInfo;ShowInternalInfo)
                    {
                        CaptionML = ENU='Show Internal Information',
                                    ESP='Mostrar información interna';
                    }
                    field(LogInteraction;LogInteraction)
                    {
                        CaptionML = ENU='Log Interaction',
                                    ESP='Log interacción';
                        Enabled = LogInteractionEnable;
                    }
                    field(DisplayAsmInformation;DisplayAssemblyInformation)
                    {
                        CaptionML = ENU='Show Assembly Components',
                                    ESP='Mostrar componentes del ensamblado';
                    }
                    field(DisplayAdditionalFeeNote;DisplayAdditionalFeeNote)
                    {
                        CaptionML = ENU='Show Additional Fee Note',
                                    ESP='Mostrar nota recargo fijo';
                    }
                    field("Mostrar línea de portes";ShowPortes)
                    {
                    }
                    field("Mostrar Descripción Artículo";ShowItemDesc)
                    {
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
            InitLogInteraction;
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
        SalesSetup.GET;
        CASE SalesSetup."Logo Position on Documents" OF
          SalesSetup."Logo Position on Documents"::Left:
            BEGIN
              CompanyInfo3.GET;
              CompanyInfo3.CALCFIELDS(CompanyInfo3.Picture);
            END;
          SalesSetup."Logo Position on Documents"::Center:
            BEGIN
              CompanyInfo1.GET;
              CompanyInfo1.CALCFIELDS(CompanyInfo1.Picture);
            END;
          SalesSetup."Logo Position on Documents"::Right:
            BEGIN
              CompanyInfo2.GET;
              CompanyInfo2.CALCFIELDS(CompanyInfo2.Picture);
            END;
        END;
        CompanyInfo2.GET;                 //CLIP4.0
        CompanyInfo2.CALCFIELDS(CompanyInfo2.Picture); //CLIP4.0
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
          InitLogInteraction;
    end;

    var
        Text000 : TextConst ENU='Salesperson',ESP='Vendedor';
        Text001 : TextConst ENU='Total %1',ESP='Total %1';
        Text003 : TextConst ENU='COPY',ESP='COPIA';
        Text004 : TextConst ENU='INVOICE',ESP='FACTURA',FRA='FACTURE';
        PageCaptionCap : TextConst ENU='Page %1 of %2',ESP='Pag. %1 de %2';
        GLSetup : Record "General Ledger Setup";
        ShipmentMethod : Record "Shipment Method";
        PaymentTerms : Record "Payment Terms";
        SalesPurchPerson : Record "Salesperson/Purchaser";
        CompanyInfo : Record "Company Information";
        CompanyInfo1 : Record "Company Information";
        CompanyInfo2 : Record "Company Information";
        CompanyInfo3 : Record "Company Information";
        SalesSetup : Record "Sales & Receivables Setup";
        Cust : Record "Customer";
        VATAmountLine : Record "VAT Amount Line" temporary;
        DimSetEntry1 : Record "Dimension Set Entry";
        DimSetEntry2 : Record "Dimension Set Entry";
        RespCenter : Record "Responsibility Center";
        Language : Record "Language";
        CurrExchRate : Record "Currency Exchange Rate";
        TempPostedAsmLine : Record "Posted Assembly Line" temporary;
        VATClause : Record "VAT Clause";
        TempLineFeeNoteOnReportHist : Record "Line Fee Note on Report Hist." temporary;
        SalesInvCountPrinted : Codeunit "Sales Inv.-Printed";
        FormatAddr : Codeunit "Format Address";
        SegManagement : Codeunit "SegManagement";
        SalesShipmentBuffer : Record "Sales Shipment Buffer" temporary;
        PostedShipmentDate : Date;
        CustAddr : array [8] of Text[80];
        ShipToAddr : array [8] of Text[80];
        CompanyAddr : array [8] of Text[80];
        OrderNoText : Text[80];
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
        i : Integer;
        NextEntryNo : Integer;
        FirstValueEntryNo : Integer;
        DimText : Text[120];
        OldDimText : Text[75];
        ShowInternalInfo : Boolean;
        Continue : Boolean;
        LogInteraction : Boolean;
        VALVATBaseLCY : Decimal;
        VALVATAmountLCY : Decimal;
        VALSpecLCYHeader : Text[80];
        Text007 : TextConst ENU='VAT Amount Specification in ',ESP='Especificar importe IVA en ';
        Text008 : TextConst ENU='Local Currency',ESP='Divisa local';
        VALExchRate : Text[50];
        Text009 : TextConst ENU='Exchange rate: %1/%2',ESP='Tipo cambio: %1/%2';
        CalculatedExchRate : Decimal;
        Text010 : TextConst ENU='Sales - Prepayment Invoice %1',ESP='Ventas - Factura prepago %1';
        OutputNo : Integer;
        TotalSubTotal : Decimal;
        TotalAmount : Decimal;
        TotalAmountInclVAT : Decimal;
        TotalAmountVAT : Decimal;
        TotalInvoiceDiscountAmount : Decimal;
        TotalPaymentDiscountOnVAT : Decimal;
        Text1100000 : TextConst ENU='Total %1 Incl. VAT+EC',ESP='Total %1 IVA+RE incl.';
        Text1100001 : TextConst ENU='Total %1 Excl. VAT+EC',ESP='Total %1 IVA+RE excl.';
        VATPostingSetup : Record "VAT Posting Setup";
        PaymentMethod : Record "Payment Method";
        TotalGivenAmount : Decimal;
        [InDataSet]
        LogInteractionEnable : Boolean;
        DisplayAssemblyInformation : Boolean;
        PhoneNoCaptionLbl : TextConst ENU='Phone No.',ESP='Nº teléfono';
        VATRegNoCaptionLbl : TextConst ENU='VAT No.',ESP='CIF/NIF';
        GiroNoCaptionLbl : TextConst ENU='Giro No.',ESP='Nº giro postal';
        BankNameCaptionLbl : TextConst ENU='Bank:',ESP='Banco:',FRA='Banque:';
        BankAccNoCaptionLbl : TextConst ENU='Account No.:',ESP='Nº cuenta:',FRA='Nº compte:';
        DueDateCaptionLbl : TextConst ENU='Due Date',ESP='Fecha vencimiento',FRA='Date d''expiration';
        InvoiceNoCaptionLbl : TextConst ENU='INVOICE No.:',ESP='FACTURA Nº:',FRA='FACTURE Nº:';
        PostingDateCaptionLbl : TextConst ENU='Posting Date',ESP='Fecha registro';
        HdrDimsCaptionLbl : TextConst ENU='Header Dimensions',ESP='Dimensiones cabecera';
        PmtinvfromdebtpaidtoFactCompCaptionLbl : TextConst ENU='The payment of this invoice, in order to be released from the debt, has to be paid to the Factoring Company.',ESP='Para que se libere de la deuda, el pago de esta factura se debe realizar a la compañía Factoring.';
        UnitPriceCaptionLbl : TextConst ENU='Unit Price',ESP='Precio venta';
        DiscountCaptionLbl : TextConst ENU='Discount %',ESP='% Descuento';
        AmtCaptionLbl : TextConst ENU='Amount',ESP='Importe';
        VATClausesCap : TextConst ENU='VAT Clause',ESP='Cláusula de IVA';
        PostedShpDateCaptionLbl : TextConst ENU='Posted Shipment Date',ESP='Fecha envío registrada';
        InvDiscAmtCaptionLbl : TextConst ENU='Invoice Discount Amount',ESP='Importe descuento factura';
        SubtotalCaptionLbl : TextConst ENU='Subtotal',ESP='Subtotal';
        PmtDiscGivenAmtCaptionLbl : TextConst ENU='Payment Disc Given Amount',ESP='Importe descuento pago';
        PmtDiscVATCaptionLbl : TextConst ENU='Payment Discount on VAT',ESP='Descuento P.P. sobre IVA';
        ShpCaptionLbl : TextConst ENU='Shipment',ESP='Envío';
        LineDimsCaptionLbl : TextConst ENU='Line Dimensions',ESP='Dimensiones línea';
        VATAmtLineVATCaptionLbl : TextConst ENU='VAT %',ESP='% IVA',FRA='% TVA';
        VATECBaseCaptionLbl : TextConst ENU='VAT+EC Base',ESP='Base IVA+RE';
        VATAmountCaptionLbl : TextConst ENU='VAT AMOUNT',ESP='IMPORTE IVA',FRA='MONTANT DE LA TVA';
        VATAmtSpecCaptionLbl : TextConst ENU='VAT Amount Specification',ESP='Especificación importe IVA';
        VATIdentCaptionLbl : TextConst ENU='VAT Identifier',ESP='Identific. IVA';
        InvDiscBaseAmtCaptionLbl : TextConst ENU='Invoice Discount Base Amount',ESP='Importe base descuento factura';
        LineAmtCaption1Lbl : TextConst ENU='Line Amount',ESP='Importe línea';
        InvPmtDiscCaptionLbl : TextConst ENU='Invoice and Payment Discounts',ESP='Descuentos facturas y pagos';
        ECAmtCaptionLbl : TextConst ENU='EC Amount',ESP='Importe RE';
        ECCaptionLbl : TextConst ENU='EC %',ESP='% RE';
        TotalCaptionLbl : TextConst ENU='Total',ESP='Total';
        VALVATBaseLCYCaption1Lbl : TextConst ENU='VAT Base',ESP='Base IVA';
        VATAmtCaptionLbl : TextConst ENU='VAT Amount',ESP='Importe IVA';
        VATIdentifierCaptionLbl : TextConst ENU='VAT Identifier',ESP='Identific. IVA';
        ShiptoAddressCaptionLbl : TextConst ENU='Ship-to Address',ESP='Dirección de envío';
        PmtTermsDescCaptionLbl : TextConst ENU='Payment Terms',ESP='Términos pago';
        ShpMethodDescCaptionLbl : TextConst ENU='Shipment Method',ESP='Condiciones envío';
        PmtMethodDescCaptionLbl : TextConst ENU='Payment Method',ESP='Forma pago';
        DocDateCaptionLbl : TextConst ENU='Document Date',ESP='Fecha emisión documento';
        HomePageCaptionCap : TextConst ENU='Web:',ESP='Web:';
        EmailCaptionLbl : TextConst ENU='E-Mail:',ESP='E-mail:';
        CACCaptionLbl : Text;
        CACTxt : TextConst ENU='Régimen especial del criterio de caja',ESP='Régimen especial del criterio de caja';
        DisplayAdditionalFeeNote : Boolean;
        "--- CLIP vars ---" : Integer;
        Country : Record "Country/Region";
        ShowShippingAddrInt : Integer;
        SaleShipHead : Record "Sales Shipment Header";
        TextQty : Text;
        ItemDescription : array [3] of Text;
        DTOFACTURA : Record "Cust. Invoice Disc.";
        dtofact : Decimal;
        ShowItemDesc : Boolean;
        VATBusPostGr : Record "VAT Business Posting Group";
        PesosInfo : array [3] of Decimal;
        PesosInfoTxt : array [3] of Text;
        PrintPesosInfo : Integer;
        ShowPortes : Boolean;
        DocumentTotals : array [21] of Text;
        DocumentTotalsDec : array [21] of Decimal;
        MaxLinePage : Integer;
        MaxLineLastPage : Integer;
        LineCounter : Integer;
        NoOfBlankLines : Integer;
        CurrencyTxt : Text;
        AuxText : Text;
        FechaCaptionLbl : TextConst ENU='DATE:',ESP='FECHA:',FRA='DATE:';
        CodClienteCaptionLbl : TextConst ENU='CUSTOMER No.:',ESP='COD. CLIENTE:',FRA='CODE CLIENT:';
        CondPagoCaptionLbl : TextConst ENU='PAYMENT CONDITIONS:',ESP='CONDICIONES DE PAGO:',FRA='CONDITIONS DE REGLEMENT:';
        AlbaranCaptionLbl : TextConst ENU='DELIVERY No.',ESP='Nº ALBARAN',FRA='BULLETIN DE LIVRAISON';
        PedidoCaptionLbl : TextConst ENU='ORDER No.',ESP='Nº PEDIDO',FRA='COMMANDE CLIENT';
        CantidadCaptionLbl : TextConst ENU='QTY.',ESP='CDAD.',FRA='QUAN.';
        PrecioNetoCaptionLbl : TextConst ENU='PRICE',ESP='PRECIO NETO',FRA='PRIX NET';
        ImporteCaptionLbl : TextConst ENU='AMOUNT',ESP='IMPORTE',FRA='MONTANT';
        importeNetoCaptionLbl : TextConst ENU='NET AMOUNT',ESP='IMPORTE NETO',FRA='MONTANT NET';
        BaseImponibleCaptionLbl : TextConst ENU='TAX BASE',ESP='BASE IMPONIBLE',FRA='MONTANT H.T';
        ImporteTotalFacCaptionLbl : TextConst ENU='TOTAL AMOUNT ',ESP='TOTAL FRA. ',FRA='MONTANT TOTAL ';
        ConceptocaptionLbl : TextConst ENU='DESCRIPTION',ESP='DESCRIPCIÓN',FRA='CODE CATALOGUE';
        PrecioTarifaCaptionLbl : TextConst ENU='U. PRICE',ESP='PRECIO u.',FRA='PRIX UNIT.';
        ImporteBrutoCaptionLbl : TextConst ENU='NET AMOUNT',ESP='IMPORTE NETO',FRA='MONTANT NET';
        DtoCaptionLbl : TextConst ENU='DISC. %',ESP='DTO. %',FRA='REMISE %';
        PortesCaptionLbl : TextConst ENU='Freight Charge',ESP='Portes',FRA='Port';
        dtoPronPagocaptionLbl : TextConst ENU='Cash Payment Discount',ESP='Dto. Pronto Pago',FRA='Remise pour paiement rapide';
        SeguroCaptionLbl : TextConst ENU='Insurance Charge',ESP='Seguro',FRA='Frais d''assurance';
        DatosBancariosCaptionLbl : TextConst ENU='BANK DETAILS',ESP='DATOS BANCARIOS:',FRA='COORDONNÉES BANCAIRES:';
        TelefonoCaptionLbl : TextConst ENU='ph.:',ESP='Tel.';
        ViaPagocaptionLbl : TextConst ENU='Payment:',ESP='Vía de pago:',FRA='Moyen de paiement:';
        CondicionesCaptionLbl : TextConst ENU='Terms:',ESP='Condiciones:',FRA='Conditions:';
        NotasCaptionLbl : TextConst ENU='COMMENTS:',ESP='OBSERVACIONES:',FRA='OBSERVATIONS:';
        PersonaContactoCaptionLbl : TextConst ENU='FAO:',ESP='Persona Contacto:';
        DireccionEnvioCaptionLbl : TextConst ENU='INVOICE ADDRESS:',ESP='DIRECCIÓN FACTURACIÓN:';
        SimbDivisa : Text[10];
        DivisaAux : Record "Currency";
        textDivisa : Text[10];
        TextDescuento : Text[50];
        DescCliente : Record "Customer Discount Group";
        SalesLineDiscount : Record "Sales Line Discount";

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    procedure FindPostedShipmentDate() : Date;
    var
        SalesShipmentHeader : Record "Sales Shipment Header";
        SalesShipmentBuffer2 : Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN
          IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") THEN
            EXIT(SalesShipmentHeader."Posting Date");

        IF "Sales Invoice Header"."Order No." = '' THEN
          EXIT("Sales Invoice Header"."Posting Date");

        CASE "Sales Invoice Line".Type OF
          "Sales Invoice Line".Type::Item:
            GenerateBufferFromValueEntry("Sales Invoice Line");
          "Sales Invoice Line".Type::"G/L Account","Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)","Sales Invoice Line".Type::"Fixed Asset":
            GenerateBufferFromShipment("Sales Invoice Line");
          "Sales Invoice Line".Type::" ":
            EXIT(0D);
        END;

        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.","Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No." ,"Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
          SalesShipmentBuffer2 := SalesShipmentBuffer;
          IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
            SalesShipmentBuffer.GET(
              SalesShipmentBuffer2."Document No.",SalesShipmentBuffer2."Line No.",SalesShipmentBuffer2."Entry No.");
            SalesShipmentBuffer.DELETE;
            EXIT(SalesShipmentBuffer2."Posting Date");
          END ;
          SalesShipmentBuffer.CALCSUMS(Quantity);
          IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
            SalesShipmentBuffer.DELETEALL;
            EXIT("Sales Invoice Header"."Posting Date");
          END;
        END ELSE
          EXIT("Sales Invoice Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2 : Record "Sales Invoice Line");
    var
        ValueEntry : Record "Value Entry";
        ItemLedgerEntry : Record "Item Ledger Entry";
        TotalQuantity : Decimal;
        Quantity : Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.",SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date","Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.",'');
        ValueEntry.SETFILTER("Entry No.",'%1..',FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
          REPEAT
            IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
              IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
                Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
              ELSE
                Quantity := ValueEntry."Invoiced Quantity";
              AddBufferEntry(
                SalesInvoiceLine2,
                -Quantity,
                ItemLedgerEntry."Posting Date");
              TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
            END;
            FirstValueEntryNo := ValueEntry."Entry No." + 1;
          UNTIL (ValueEntry.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure GenerateBufferFromShipment(SalesInvoiceLine : Record "Sales Invoice Line");
    var
        SalesInvoiceHeader : Record "Sales Invoice Header";
        SalesInvoiceLine2 : Record "Sales Invoice Line";
        SalesShipmentHeader : Record "Sales Shipment Header";
        SalesShipmentLine : Record "Sales Shipment Line";
        TotalQuantity : Decimal;
        Quantity : Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.",'..%1',"Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.","Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
          REPEAT
            SalesInvoiceLine2.SETRANGE("Document No.",SalesInvoiceHeader."No.");
            SalesInvoiceLine2.SETRANGE("Line No.",SalesInvoiceLine."Line No.");
            SalesInvoiceLine2.SETRANGE(Type,SalesInvoiceLine.Type);
            SalesInvoiceLine2.SETRANGE("No.",SalesInvoiceLine."No.");
            SalesInvoiceLine2.SETRANGE("Unit of Measure Code",SalesInvoiceLine."Unit of Measure Code");
            IF SalesInvoiceLine2.FIND('-') THEN
              REPEAT
                TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
              UNTIL SalesInvoiceLine2.NEXT = 0;
          UNTIL SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.","Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.","Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.",SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.",SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type,SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.",SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code",SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity,'<>%1',0);

        IF SalesShipmentLine.FIND('-') THEN
          REPEAT
            IF "Sales Invoice Header"."Get Shipment Used" THEN
              CorrectShipment(SalesShipmentLine);
            IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
              TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
            ELSE BEGIN
              IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) THEN
                SalesShipmentLine.Quantity := TotalQuantity;
              Quantity :=
                SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

              TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
              SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

              IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN
                AddBufferEntry(
                  SalesInvoiceLine,
                  Quantity,
                  SalesShipmentHeader."Posting Date");
            END;
          UNTIL (SalesShipmentLine.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure CorrectShipment(var SalesShipmentLine : Record "Sales Shipment Line");
    var
        SalesInvoiceLine : Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.","Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.",SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.",SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
          REPEAT
            SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
          UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    procedure AddBufferEntry(SalesInvoiceLine : Record "Sales Invoice Line";QtyOnShipment : Decimal;PostingDate : Date);
    begin
        SalesShipmentBuffer.SETRANGE("Document No.",SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.",SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date",PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
          SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
          SalesShipmentBuffer.MODIFY;
          EXIT;
        END;

        WITH SalesShipmentBuffer DO BEGIN
          "Document No." := SalesInvoiceLine."Document No.";
          "Line No." := SalesInvoiceLine."Line No.";
          "Entry No." := NextEntryNo;
          Type := SalesInvoiceLine.Type;
          "No." := SalesInvoiceLine."No.";
          Quantity := QtyOnShipment;
          "Posting Date" := PostingDate;
          INSERT;
          NextEntryNo := NextEntryNo + 1
        END;
    end;

    local procedure DocumentCaption() : Text[250];
    begin
        IF "Sales Invoice Header"."Prepayment Invoice" THEN
          EXIT(Text010);
        EXIT(Text004);
    end;

    procedure GetCarteraInvoice() : Boolean;
    var
        CustLedgEntry : Record "Cust. Ledger Entry";
    begin
        WITH CustLedgEntry DO BEGIN
          SETCURRENTKEY("Document No.","Document Type","Customer No.");
          SETRANGE("Document Type","Document Type"::Invoice);
          SETRANGE("Document No.","Sales Invoice Header"."No.");
          SETRANGE("Customer No.","Sales Invoice Header"."Bill-to Customer No.");
          SETRANGE("Posting Date","Sales Invoice Header"."Posting Date");
          IF FINDFIRST THEN
            IF "Document Situation" = "Document Situation"::" " THEN
              EXIT(FALSE)
            ELSE
              EXIT(TRUE)
          ELSE
            EXIT(FALSE);
        END;
    end;

    procedure ShowCashAccountingCriteria(SalesInvoiceHeader : Record "Sales Invoice Header") : Text;
    var
        VATEntry : Record "VAT Entry";
    begin
        GLSetup.GET;
        IF NOT GLSetup."Unrealized VAT" THEN
          EXIT;
        CACCaptionLbl := '';
        VATEntry.SETRANGE("Document No.",SalesInvoiceHeader."No.");
        VATEntry.SETRANGE("Document Type",VATEntry."Document Type"::Invoice);
        IF VATEntry.FINDSET THEN
          REPEAT
            IF VATEntry."VAT Cash Regime" THEN
              CACCaptionLbl := CACTxt;
          UNTIL (VATEntry.NEXT = 0) OR (CACCaptionLbl <> '');
        EXIT(CACCaptionLbl);
    end;

    procedure InitializeRequest(NewNoOfCopies : Integer;NewShowInternalInfo : Boolean;NewLogInteraction : Boolean;DisplayAsmInfo : Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    procedure CollectAsmInformation();
    var
        ValueEntry : Record "Value Entry";
        ItemLedgerEntry : Record "Item Ledger Entry";
        PostedAsmHeader : Record "Posted Assembly Header";
        PostedAsmLine : Record "Posted Assembly Line";
        SalesShipmentLine : Record "Sales Shipment Line";
    begin
        TempPostedAsmLine.DELETEALL;
        IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item THEN
          EXIT;
        WITH ValueEntry DO BEGIN
          SETCURRENTKEY("Document No.");
          SETRANGE("Document No.","Sales Invoice Line"."Document No.");
          SETRANGE("Document Type","Document Type"::"Sales Invoice");
          SETRANGE("Document Line No.","Sales Invoice Line"."Line No.");
          SETRANGE(Adjustment,FALSE);
          IF NOT FINDSET THEN
            EXIT;
        END;
        REPEAT
          IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN
            IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
              SalesShipmentLine.GET(ItemLedgerEntry."Document No.",ItemLedgerEntry."Document Line No.");
              IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) THEN BEGIN
                PostedAsmLine.SETRANGE("Document No.",PostedAsmHeader."No.");
                IF PostedAsmLine.FINDSET THEN
                  REPEAT
                    TreatAsmLineBuffer(PostedAsmLine);
                  UNTIL PostedAsmLine.NEXT = 0;
              END;
            END;
        UNTIL ValueEntry.NEXT = 0;
    end;

    procedure TreatAsmLineBuffer(PostedAsmLine : Record "Posted Assembly Line");
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type,PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.",PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code",PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description,PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code",PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FINDFIRST THEN BEGIN
          TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
          TempPostedAsmLine.MODIFY;
        END ELSE BEGIN
          CLEAR(TempPostedAsmLine);
          TempPostedAsmLine := PostedAsmLine;
          TempPostedAsmLine.INSERT;
        END;
    end;

    procedure GetUOMText(UOMCode : Code[10]) : Text[10];
    var
        UnitOfMeasure : Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
          EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent() : Text[10];
    begin
        EXIT(PADSTR('',2,' '));
    end;

    local procedure GetLineFeeNoteOnReportHist(SalesInvoiceHeaderNo : Code[20]);
    var
        LineFeeNoteOnReportHist : Record "Line Fee Note on Report Hist.";
        CustLedgerEntry : Record "Cust. Ledger Entry";
        Customer : Record "Customer";
    begin
        TempLineFeeNoteOnReportHist.DELETEALL;
        CustLedgerEntry.SETRANGE("Document Type",CustLedgerEntry."Document Type"::Invoice);
        CustLedgerEntry.SETRANGE("Document No.",SalesInvoiceHeaderNo);
        IF NOT CustLedgerEntry.FINDFIRST THEN
          EXIT;

        IF NOT Customer.GET(CustLedgerEntry."Customer No.") THEN
          EXIT;

        LineFeeNoteOnReportHist.SETRANGE("Cust. Ledger Entry No",CustLedgerEntry."Entry No.");
        LineFeeNoteOnReportHist.SETRANGE("Language Code",Customer."Language Code");
        IF LineFeeNoteOnReportHist.FINDSET THEN BEGIN
          REPEAT
            TempLineFeeNoteOnReportHist.INIT;
            TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
            TempLineFeeNoteOnReportHist.INSERT;
          UNTIL LineFeeNoteOnReportHist.NEXT = 0;
        END ELSE BEGIN
          LineFeeNoteOnReportHist.SETRANGE("Language Code",Language.GetUserLanguage);
          IF LineFeeNoteOnReportHist.FINDSET THEN
            REPEAT
              TempLineFeeNoteOnReportHist.INIT;
              TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
              TempLineFeeNoteOnReportHist.INSERT;
            UNTIL LineFeeNoteOnReportHist.NEXT = 0;
        END;
    end;

    local procedure "---- CLIP fun ---"();
    begin
    end;

    local procedure OrderQtyIsDiferent(InvQty : Decimal;ShipNo : Code[20];ShipLineNo : Integer) : Boolean;
    var
        SSH : Record "Sales Shipment Header";
        SSL : Record "Sales Shipment Line";
        OrderNo : Code[20];
        OrderLine : Record "Sales Line";
    begin
        //-CLIP4.0
        IF ShipNo = '' THEN
          EXIT(FALSE);
        IF ShipLineNo = 0 THEN
          EXIT(FALSE);
        IF NOT SSH.GET(ShipNo) THEN
          EXIT(FALSE);
        IF NOT SSL.GET(ShipNo,ShipLineNo) THEN
          EXIT(FALSE);
        IF NOT OrderLine.GET(OrderLine."Document Type"::Order,SSL."Order No.",SSL."Order Line No.") THEN
          EXIT(FALSE);

        IF OrderLine.Quantity <> InvQty THEN
          EXIT(TRUE);
        //+CLIP4.0
    end;

    local procedure CalcDocumentTotals(DocNo : Code[20]);
    var
        SalesInvHead2 : Record "Sales Invoice Header";
        SalesInvLine2 : Record "Sales Invoice Line";
        VATAmountLine2 : Record "VAT Amount Line" temporary;
        VATPostingSetup2 : Record "VAT Posting Setup";
        TotalAmountInclVAT2 : Decimal;
        PortsAmt : Decimal;
        FinancialAmt : Decimal;
        ImporteIVA : array [10] of Decimal;
        BaseIva : array [10] of Decimal;
        PorIva : array [10] of Decimal;
        i : Integer;
    begin
        //-CLIP4.0
        // Documentación - DocumentTotals
        // 1  - Importe Bruto (Importe + Dto - Portes)        10 - Base IVA 1         19 - % RE
        // 2  - Descuento     (Dto línea + dto factura)       11 - Base IVA 2         20 - Importe RE
        // 3  - % dto P.P                                     12 - <libre>            21 - Total factura (IVA incl.)
        // 4  - Importe dto P.P.                              13 - % IVA 1
        // 5  - Portes                                        14 - % IVA 2
        // 6  - Seguros                                       15 - <libre>
        // 7  - <libre>                                       16 - Importe IVA 1
        // 8  - <libre>                                       17 - Importe IVA 2
        // 9  - <libre>                                       18 - <libre>

        CLEAR(LineCounter); //CLIP10.0
        CLEAR(DocumentTotalsDec);
        VATAmountLine2.DELETEALL;

        SalesInvHead2.GET(DocNo);
        SalesInvLine2.SETRANGE("Document No.",DocNo);
        WITH SalesInvLine2 DO
          BEGIN
            IF FINDSET THEN
              REPEAT
                CountLines(SalesInvLine2); //CLIP10.0
                IF VATPostingSetup2.GET("VAT Bus. Posting Group","VAT Prod. Posting Group") THEN BEGIN
                  VATAmountLine2.INIT;
                  VATAmountLine2."VAT Identifier" := "VAT Identifier";
                  VATAmountLine2."VAT Calculation Type" := "VAT Calculation Type";
                  VATAmountLine2."Tax Group Code" := "Tax Group Code";
                  VATAmountLine2."VAT %" := VATPostingSetup2."VAT %";
                  VATAmountLine2."EC %" := VATPostingSetup2."EC %";
                  VATAmountLine2."VAT Base" := Amount;
                  VATAmountLine2."Amount Including VAT" := "Amount Including VAT";
                  VATAmountLine2."Line Amount" := "Line Amount";
                  VATAmountLine2."Pmt. Disc. Given Amount" := "Pmt. Disc. Given Amount";
                  IF "Allow Invoice Disc." THEN
                    VATAmountLine2."Inv. Disc. Base Amount" := "Line Amount";
                  VATAmountLine2."Invoice Discount Amount" := "Inv. Discount Amount";
                  //CVP EXT
                  //VATAmountLine2.SetCurrencyCode(SalesInvHead2."Currency Code");
                  VATAmountLine2."VAT Difference" := "VAT Difference";
                  VATAmountLine2."EC Difference" := "EC Difference";
                  IF SalesInvHead2."Prices Including VAT" THEN
                    VATAmountLine2."Prices Including VAT" := TRUE;
                  VATAmountLine2."VAT Clause Code" := "VAT Clause Code";
                  VATAmountLine2.InsertLine;

                  TotalAmountInclVAT2 += "Amount Including VAT";

                  IF (Type = Type::"G/L Account") THEN BEGIN
                  //  IF ("No." = SalesSetup."Cuenta de Portes") THEN  PortsAmt += Amount;
                   // IF ("No." = SalesSetup."Cuenta de Seguros") THEN FinancialAmt += Amount;
                  END;
                END;
              UNTIL NEXT = 0;
          END;

        WITH VATAmountLine2 DO
          BEGIN
            IF FINDSET THEN
              REPEAT
                DocumentTotalsDec[1]  += "Line Amount" + "Line Discount Amount";
                //DocumentTotalsDec[2]  += "Invoice Discount Amount" + "Line Discount Amount"; //CLIP15.0
                DocumentTotalsDec[2]  += "Invoice Discount Amount";                            //CLIP15.0
                DocumentTotalsDec[4]  += "Pmt. Disc. Given Amount";
                IF "VAT Calculation Type" <> "VAT Calculation Type" :: "No taxable VAT" THEN BEGIN
                  i += 1;
                  ImporteIVA[i] := "VAT Amount";
                  BaseIva[i]:= "VAT Base";
                  PorIva[i] := "VAT %";
                END;
                DocumentTotalsDec[19] := "EC %";
                DocumentTotalsDec[20] += "EC Amount";
              UNTIL NEXT = 0;
          END;

        IF ImporteIVA[1] = 0 THEN BEGIN
          PorIva[1] := 0;
          //IF BaseIva[1] < 0 THEN
          //  BaseIva[1] := 0;
        END;
        IF ImporteIVA[2] = 0 THEN BEGIN
          PorIva[2] := 0;
          //IF BaseIva[2] < 0 THEN
          //  BaseIva[2] := 0;
        END;


        DocumentTotalsDec[1]  -= PortsAmt;
        IF DocumentTotalsDec[4] <> 0 THEN
          DocumentTotalsDec[3]  := SalesInvHead2."Payment Discount %";
        DocumentTotalsDec[5]  := PortsAmt;
        DocumentTotalsDec[6]  := FinancialAmt;
        DocumentTotalsDec[7]  := 0;
        DocumentTotalsDec[8]  := 0;
        DocumentTotalsDec[9]  := 0;
        DocumentTotalsDec[10] := BaseIva[1];
        DocumentTotalsDec[11] := BaseIva[2];
        DocumentTotalsDec[12] := 0;
        DocumentTotalsDec[13] := PorIva[1];
        DocumentTotalsDec[14] := PorIva[2];
        DocumentTotalsDec[15] := 0;
        DocumentTotalsDec[16] := ImporteIVA[1];
        DocumentTotalsDec[17] := ImporteIVA[2];
        DocumentTotalsDec[18] := 0;
        DocumentTotalsDec[21] := TotalAmountInclVAT2;
        //IF DocumentTotalsDec[11] = 0 THEN BEGIN
        //  DocumentTotalsDec[11] := BaseIva[1];
        //  DocumentTotalsDec[14] := PorIva[1];
        //  DocumentTotalsDec[17] := ImporteIVA[1];
        //END;
        //+CLIP4.0

        //-CLIP15.0
        FOR i := 1 TO 21 DO BEGIN
          //CVP 2018-05-17 ini
          //Afegeixo també la posició 1 ja que si és tot 0, dóna error
          //IF (i = 4) OR (i = 5) OR (i = 6) THEN
          IF (i = 1) OR (i = 4) OR (i = 5) OR (i = 6) THEN
            DocumentTotals[i] := BlankZeroAux(DocumentTotalsDec[i])
          ELSE
            DocumentTotals[i] := BlankZero(DocumentTotalsDec[i]);
        END;
        //+CLIP15.0
    end;

    local procedure CountLines(SIL : Record "Sales Invoice Line");
    begin
        //-CLIP10.0
        WITH SIL DO BEGIN
          LineCounter += 1;
          CASE Type OF
            Type::" ":
              BEGIN
                IF COPYSTR(Description,1,8) = 'Nº albar' THEN
                  LineCounter -= 1;
                //IF ("No." = SalesSetup."Cuenta de Portes") AND (NOT ShowPortes) THEN
                  LineCounter -= 1;
                //IF ("No." = SalesSetup."Cuenta de Seguros") THEN
                  LineCounter -= 1;
               END;
            Type::Item:
              BEGIN
                IF "Cross-Reference No." <> '' THEN
                  LineCounter += 1;
                IF ShowItemDesc THEN
                  LineCounter += 1;
              END;
          END;
        END;
        //+CLIP10.0
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

    local procedure BlankZero(Amt : Decimal) : Text;
    begin
        //CLIP15.0
        IF Amt = 0 THEN
          EXIT('');
        Amt := ROUND(Amt,0.01);

        EXIT(FORMAT(Amt,0,'<Precision,2:2><Sign><Integer Thousand><Decimals>'));
    end;

    local procedure BlankZeroAux(Amt : Decimal) : Text;
    begin
        //CLIP15.0
        IF Amt = 0 THEN
          //EXIT('');
        Amt := ROUND(Amt,0.01);

        EXIT(FORMAT(Amt,0,'<Precision,2:2><Sign><Integer Thousand><Decimals>'));
    end;
}

