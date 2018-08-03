report 50007 "Sales - Shipment Cortag."
{
    // version NAVW19.00,CLIP4.0,CLIP5.0,CLIP10.0

    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Sales - Shipment Cortag..rdlc';
    CaptionML = ENU='Sales - Shipment',
                ESP='Venta - Alb. venta';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Shipment Header";"Sales Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";
            RequestFilterHeadingML = ENU='Posted Sales Shipment',
                                     ESP='Histórico albaranes venta';
            column(No_SalesShptHeader;"No.")
            {
            }
            column(PageCaption;PageCaptionCap)
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
            column(ExternalDocNo_SalesShptHead;"Sales Shipment Header"."External Document No.")
            {
            }
            column(ShowAmounts;ShowAmounts)
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
                    column(CompanyInfo1Picture;CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo3Picture;CompanyInfo3.Picture)
                    {
                    }
                    column(SalesShptCopyText;STRSUBSTNO(Text002,CopyText))
                    {
                    }
                    column(ShipToAddr1;ShipToAddr[1])
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(ShipToAddr2;ShipToAddr[2])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(ShipToAddr3;ShipToAddr[3])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(ShipToAddr4;ShipToAddr[4])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(ShipToAddr5;ShipToAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(ShipToAddr6;ShipToAddr[6])
                    {
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoFaxNo;CompanyInfo."Fax No.")
                    {
                    }
                    column(CompanyInfoVATRegtnNo;CompanyInfo."VAT Registration No.")
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
                    column(SelltoCustNo_SalesShptHeader;"Sales Shipment Header"."Sell-to Customer No.")
                    {
                    }
                    column(DocDate_SalesShptHeader;FORMAT("Sales Shipment Header"."Document Date",0,4))
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourRef_SalesShptHeader;"Sales Shipment Header"."Your Reference")
                    {
                    }
                    column(ShipToAddr7;ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8;ShipToAddr[8])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(CustAddr1;CustAddr[1])
                    {
                    }
                    column(CustAddr2;CustAddr[2])
                    {
                    }
                    column(CustAddr3;CustAddr[3])
                    {
                    }
                    column(CustAddr4;CustAddr[4])
                    {
                    }
                    column(CustAddr5;CustAddr[5])
                    {
                    }
                    column(CustAddr6;CustAddr[6])
                    {
                    }
                    column(CustAddr7;CustAddr[7])
                    {
                    }
                    column(CustAddr8;CustAddr[8])
                    {
                    }
                    column(ShptDate_SalesShptHeader;"Sales Shipment Header"."Posting Date")
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(ItemTrackingAppendixCaption;ItemTrackingAppendixCaptionLbl)
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
                    column(ShipmentNoCaption;ShipmentNoCaptionLbl)
                    {
                    }
                    column(ShipmentDateCaption;ShipmentDateCaptionLbl)
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
                    column(SelltoCustNo_SalesShptHeaderCaption;"Sales Shipment Header".FIELDCAPTION("Sell-to Customer No."))
                    {
                    }
                    column(FechaCaption;FechaCaptionLbl)
                    {
                    }
                    column(CodClienteCaption;CodClienteCaptionLbl)
                    {
                    }
                    column(NotasCaption;NotasCaptionLbl)
                    {
                    }
                    column(FirmalTransportistaCaption;FirmalTransportistaCaptionLbl)
                    {
                    }
                    column(Codigocaption;CodigocaptionLbl)
                    {
                    }
                    column(DireccionEntregacaption;DireccionEntregacaptionLbl)
                    {
                    }
                    column(TelefonoCaption;TelefonoCaptionLbl)
                    {
                    }
                    column(PersonaContacteCaption;PersonaContacteCaptionLbl)
                    {
                    }
                    column(TransportCaption;TransportCaptionLbl)
                    {
                    }
                    column(TransportistaCaption;TransportistaCaptionLbl)
                    {
                    }
                    column(NBultos;NBultos)
                    {
                    }
                    column(NumBultos;"Sales Shipment Header"."Nº Bultos")
                    {
                    }
                    column(Observaciones;ObservacionesAux)
                    {
                    }
                    column(Transportista_Name;Transportista.Name)
                    {
                    }
                    column(Trasporte;"Sales Shipment Header"."Shipping Agent Service Code")
                    {
                    }
                    column(Peso;"Sales Shipment Header".Peso)
                    {
                    }
                    column(QuantityCaption1;QuantityCaptionLbl1)
                    {
                    }
                    column(Text002;Text002)
                    {
                    }
                    column(TotalWeightCaption;TotalWeightCaptionLbl)
                    {
                    }
                    column(LanguageAux;LanguageAux)
                    {
                    }
                    dataitem(DimensionLoop1;"Integer")
                    {
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(DimText;DimText)
                        {
                        }
                        column(HeaderDimensionsCaption;HeaderDimensionsCaptionLbl)
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
                                DimText := STRSUBSTNO('%1 - %2',DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code")
                              ELSE
                                DimText :=
                                  STRSUBSTNO(
                                    '%1; %2 - %3',DimText,
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
                    dataitem("Sales Shipment Line";"Sales Shipment Line")
                    {
                        DataItemLink = "Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING("Document No.","Line No.");
                        column(Description_SalesShptLine;Description)
                        {
                        }
                        column(ShowInternalInfo;ShowInternalInfo)
                        {
                        }
                        column(ShowCorrectionLines;ShowCorrectionLines)
                        {
                        }
                        column(Type_SalesShptLine;FORMAT(Type,0,2))
                        {
                        }
                        column(AsmHeaderExists;AsmHeaderExists)
                        {
                        }
                        column(DocumentNo_SalesShptLine;"Document No.")
                        {
                        }
                        column(LinNo;LinNo)
                        {
                        }
                        column(Qty_SalesShptLine;Quantity)
                        {
                        }
                        column(UOM_SalesShptLine;"Unit of Measure")
                        {
                        }
                        column(No_SalesShptLine;"No.")
                        {
                        }
                        column(LineNo_SalesShptLine;"Line No.")
                        {
                        }
                        column(Description_SalesShptLineCaption;DescriptionCaptionLbl)
                        {
                        }
                        column(Qty_SalesShptLineCaption;QuantityCaptionLbl)
                        {
                        }
                        column(UOM_SalesShptLineCaption;FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(No_SalesShptLineCaption;FIELDCAPTION("No."))
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
                        column(ShipDate_SalesShipLine;FORMAT("Sales Shipment Line"."Shipment Date"))
                        {
                        }
                        column(LineDisc_SalesShipLine;"Sales Shipment Line"."Line Discount %")
                        {
                        }
                        column(UnitPrice_SalesShipLine;"Sales Shipment Line"."Unit Price")
                        {
                        }
                        column(Importe_SalesShipLine;"Sales Shipment Line"."Unit Price")
                        {
                        }
                        column(PesoBruto_SalesShipLine;PesoAux)
                        {
                        }
                        column(PesoNeto_SalesShipLine;"Sales Shipment Line"."Net Weight")
                        {
                        }
                        column(UnitPrice_SaesShipLineCaption;FIELDCAPTION("Unit Price"))
                        {
                        }
                        column(PesoBruto_SalesShipLineCaption;PesoBrutoCaptionLbl)
                        {
                        }
                        column(PesoNeto_SalesShipLineCaption;PesoNetoCaptionLbl)
                        {
                        }
                        dataitem(DimensionLoop2;"Integer")
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=FILTER(1..));
                            column(DimText1;DimText)
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
                                    DimText := STRSUBSTNO('%1 - %2',DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code")
                                  ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1; %2 - %3',DimText,
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
                            end;
                        }
                        dataitem(DisplayAsmInfo;"Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(PostedAsmLineItemNo;BlanksForIndent + PostedAsmLine."No.")
                            {
                            }
                            column(PostedAsmLineDescription;BlanksForIndent + PostedAsmLine.Description)
                            {
                            }
                            column(PostedAsmLineQuantity;PostedAsmLine.Quantity)
                            {
                                //DecimalPlaces = 0:5;
                            }
                            column(PostedAsmLineUOMCode;GetUnitOfMeasureDescr(PostedAsmLine."Unit of Measure Code"))
                            {
                                //DecimalPlaces = 0:5;
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation : Record "Item Translation";
                            begin
                                IF Number = 1 THEN
                                  PostedAsmLine.FINDSET
                                ELSE
                                  PostedAsmLine.NEXT;

                                IF ItemTranslation.GET(PostedAsmLine."No.",
                                     PostedAsmLine."Variant Code",
                                     "Sales Shipment Header"."Language Code")
                                THEN
                                  PostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT DisplayAssemblyInformation THEN
                                  CurrReport.BREAK;
                                IF NOT AsmHeaderExists THEN
                                  CurrReport.BREAK;

                                PostedAsmLine.SETRANGE(PostedAsmLine."Document No.",PostedAsmHeader."No.");
                                SETRANGE(Number,1,PostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            LinNo := "Line No.";
                            IF NOT ShowCorrectionLines AND Correction THEN
                              CurrReport.SKIP;

                            DimSetEntry2.SETRANGE("Dimension Set ID","Dimension Set ID");
                            IF DisplayAssemblyInformation THEN
                              AsmHeaderExists := AsmToShipmentExists(PostedAsmHeader);
                            //-CLIP4.0
                            TextQty := FORMAT(Quantity);

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
                            // En Albaran tenemos mas espacio para descripción
                            // Juntamos 1 y 2. Desplazamos 3 a 2
                            ItemDescription[1] := ItemDescription[1] + ' ' + ItemDescription[2];
                            ItemDescription[2] := ItemDescription[3];
                            ItemDescription[3] := '';

                            CLEAR(dtofact);

                            LineasConsumidas += 1;

                            //CVP 2018-02-15 ini
                            //Busquem el pes en la taula producte
                            PesoAux := 0;
                            CASE Type OF
                              Type::Item:
                                BEGIN
                                  IF Producto.GET("Sales Shipment Line"."No.") THEN
                                    PesoAux := Producto.Peso;
                                END;
                            END;

                            //CVP IF (Type = Type::"G/L Account") THEN BEGIN
                            //CVP   IF ("No." = SalesSetup."Cuenta de Portes") THEN BEGIN
                                //PortsAmt += Amount;
                            //CVP     IF (NOT ShowPortes) THEN
                            //CVP       CurrReport.SKIP;
                            //CVP   END;
                            //CVP   IF ("No." = SalesSetup."Cuenta de Seguros") THEN BEGIN
                                //FinancialAmt += Amount;
                            //CVP     CurrReport.SKIP;
                            //CVP   END;
                            //CVP END;
                            //+CLIP4.0
                            //+CLIP10.0
                        end;

                        trigger OnPostDataItem();
                        begin
                            IF ShowLotSN THEN BEGIN
                              ItemTrackingDocMgt.SetRetrieveAsmItemTracking(TRUE);
                              TrackingSpecCount :=
                                ItemTrackingDocMgt.RetrieveDocumentItemTracking(TrackingSpecBuffer,
                                  "Sales Shipment Header"."No.",DATABASE::"Sales Shipment Header",0);
                              ItemTrackingDocMgt.SetRetrieveAsmItemTracking(FALSE);
                            END;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) DO
                              MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                              CurrReport.BREAK;
                            SETRANGE("Line No.",0,"Line No.");
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
                            SETRANGE(Number,1,TotalLineas - LineasConsumidas);
                        end;
                    }
                    dataitem("Sales Comment Line";"Sales Comment Line")
                    {
                        DataItemLink = "No."=FIELD("No.");
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = WHERE("Document Type"=CONST(Shipment));
                        column(Comentario;"Sales Comment Line".Comment)
                        {
                        }
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
                        column(BilltoCustNo_SalesShptHeader;"Sales Shipment Header"."Bill-to Customer No.")
                        {
                        }
                        column(BilltoAddressCaption;BilltoAddressCaptionLbl)
                        {
                        }
                        column(BilltoCustNo_SalesShptHeaderCaption;"Sales Shipment Header".FIELDCAPTION("Bill-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowCustAddr THEN
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem(ItemTrackingLine;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(TrackingSpecBufferNo;TrackingSpecBuffer."Item No.")
                        {
                        }
                        column(TrackingSpecBufferDesc;TrackingSpecBuffer.Description)
                        {
                        }
                        column(TrackingSpecBufferLotNo;TrackingSpecBuffer."Lot No.")
                        {
                        }
                        column(TrackingSpecBufferSerNo;TrackingSpecBuffer."Serial No.")
                        {
                        }
                        column(TrackingSpecBufferQty;TrackingSpecBuffer."Quantity (Base)")
                        {
                        }
                        column(ShowTotal;ShowTotal)
                        {
                        }
                        column(ShowGroup;ShowGroup)
                        {
                        }
                        column(QuantityCaption;QuantityCaptionLbl)
                        {
                        }
                        column(SerialNoCaption;SerialNoCaptionLbl)
                        {
                        }
                        column(LotNoCaption;LotNoCaptionLbl)
                        {
                        }
                        column(DescriptionCaption;DescriptionCaptionLbl)
                        {
                        }
                        column(NoCaption;NoCaptionLbl)
                        {
                        }
                        dataitem(TotalItemTracking;"Integer")
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=CONST(1));
                            column(Quantity1;TotalQty)
                            {
                            }
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                              TrackingSpecBuffer.FINDSET
                            ELSE
                              TrackingSpecBuffer.NEXT;

                            IF NOT ShowCorrectionLines AND TrackingSpecBuffer.Correction THEN
                              CurrReport.SKIP;
                            IF TrackingSpecBuffer.Correction THEN
                              TrackingSpecBuffer."Quantity (Base)" := -TrackingSpecBuffer."Quantity (Base)";

                            ShowTotal := FALSE;
                            //CVP EXT
                            //IF ItemTrackingAppendix.IsStartNewGroup(TrackingSpecBuffer) THEN
                            //  ShowTotal := TRUE;
                            //FI EXT

                            ShowGroup := FALSE;
                            IF (TrackingSpecBuffer."Source Ref. No." <> OldRefNo) OR
                               (TrackingSpecBuffer."Item No." <> OldNo)
                            THEN BEGIN
                              OldRefNo := TrackingSpecBuffer."Source Ref. No.";
                              OldNo := TrackingSpecBuffer."Item No.";
                              TotalQty := 0;
                            END ELSE
                              ShowGroup := TRUE;
                            TotalQty += TrackingSpecBuffer."Quantity (Base)";
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF TrackingSpecCount = 0 THEN
                              CurrReport.BREAK;
                            CurrReport.NEWPAGE;
                            SETRANGE(Number,1,TrackingSpecCount);
                            TrackingSpecBuffer.SETCURRENTKEY("Source ID","Source Type","Source Subtype","Source Batch Name",
                              "Source Prod. Order Line","Source Ref. No.");
                        end;
                    }

                    trigger OnPreDataItem();
                    begin
                        // Item Tracking:
                        IF ShowLotSN THEN BEGIN
                          TrackingSpecCount := 0;
                          OldRefNo := 0;
                          ShowGroup := FALSE;
                        END;
                    end;
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number > 1 THEN BEGIN
                      CopyText := Text001;
                      OutputNo += 1;
                    END;
                    CurrReport.PAGENO := 1;
                    TotalQty := 0;           // Item Tracking
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT CurrReport.PREVIEW THEN
                      ShptCountPrinted.RUN("Sales Shipment Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := 1 + ABS(NoOfCopies);
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin

                TotalLineas := 30;
                LineasConsumidas := 0;

                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                IF Language.Code = 'ENU' THEN
                  LanguageAux := 1
                ELSE
                  LanguageAux := 2;

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
                CompanyAddr[3] := CompanyInfo."Post Code" + ' ' + CompanyInfo.City + ' (' + CompanyInfo.County + ') ' + Country.Name;
                //CompanyAddr[4] := 'Tel. ' + CompanyInfo."Phone No." + ' - Fax. ' + CompanyInfo."Fax No.";
                CompanyAddr[4] := CompanyInfo."Phone No.";
                //CompanyAddr[5] := 'V.A.T. nº: ES' + CompanyInfo."VAT Registration No." + ' - ' + CompanyInfo."Home Page";
                CompanyAddr[5] := 'ES' + CompanyInfo."VAT Registration No." ;
                CompanyAddr[6] := '';
                COMPRESSARRAY(CompanyAddr);
                //+CLIP4.0
                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");

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
                FormatAddr.SalesShptShipTo(ShipToAddr,"Sales Shipment Header");

                //FormatAddr.SalesShptBillTo(CustAddr,"Sales Shipment Header");
                //FormatAddressFields("Sales Shipment Header");
                Cust.GET("Bill-to Customer No.");                                                              //CLIP4.0
                //-CLIP4.1
                CLEAR(CustAddr);
                CLEAR(AuxText);
                IF "Ship-to County" <> '' THEN
                  AuxText := ', ' + "Ship-to County";
                CustAddr[1] := "Ship-to Name" + ' ' + "Ship-to Name 2";
                CustAddr[2] := "Ship-to Address";
                IF "Ship-to Address 2" <> '' THEN BEGIN
                  CustAddr[3] := "Ship-to Address 2";
                  CustAddr[4] := "Ship-to Post Code" + ' ' + "Ship-to City" + AuxText + '(' + GetCountryName("Ship-to Country/Region Code") + ')';
                  CustAddr[8] := "Ship-to Contact";
                  CustAddr[5] := VATRegNoCaptionLbl + ' ' + Cust."VAT Registration No."; //CLIP4.0
                  CustAddr[7] := Cust."Phone No.";
                 END
                ELSE BEGIN
                  CustAddr[3] := "Ship-to Post Code" + ' ' + "Ship-to City" + AuxText + '(' + GetCountryName("Ship-to Country/Region Code") + ')';
                  CustAddr[7] := "Ship-to Contact";
                  CustAddr[4] := VATRegNoCaptionLbl + ' ' + Cust."VAT Registration No."; //CLIP4.0
                  CustAddr[6] := Cust."Phone No.";
                END;
                //CustAddr[5] := GetCountryName("Ship-to Country/Region Code");
                //IF "Bill-to County" <> '' THEN
                //  AuxText := ', ' + "Bill-to County";
                //CustAddr[1] := "Bill-to Name" + ' ' + "Bill-to Name 2";//
                //CustAddr[2] := "Bill-to Address
                //CustAddr[3] := "Bill-to Address 2";
                //CustAddr[4] := "Bill-to Post Code" + ' ' + "Bill-to City" + AuxText;
                //CustAddr[5] := GetCountryName("Bill-to Country/Region Code");
                //CustAddr[6] := "Bill-to Contact";
                //CustAddr[8] := Cust.FIELDCAPTION("VAT Registration No.") + ': ' + Cust."VAT Registration No."; //CLIP4.0
                //COMPRESSARRAY(CustAddr);
                //-CLIP4.1

                ShowCustAddr := "Bill-to Customer No." <> "Sell-to Customer No.";
                FOR i := 1 TO ARRAYLEN(CustAddr) DO
                  IF CustAddr[i] <> ShipToAddr[i] THEN
                    ShowCustAddr := TRUE;
                CLEAR(ShowShippingAddrInt); //CLIP4.0
                IF ShowCustAddr THEN        //CLIP4Observaciones.0
                  ShowShippingAddrInt := 1; //CLIP4.0

                IF LogInteraction THEN
                  IF NOT CurrReport.PREVIEW THEN
                    SegManagement.LogDocument(
                      5,"No.",0,0,DATABASE::Customer,"Sell-to Customer No.","Salesperson Code",
                      "Campaign No.","Posting Description",'');

                //-CLIP4.0
                CLEAR(CurrencyTxt);
                CurrencyTxt := "Currency Code";
                IF CurrencyTxt = '' THEN
                  CurrencyTxt := 'EUR';
                CalcDocumentTotals("No.");
                //+CLIP4.0

                IF "Shipping Agent Code" <> '' THEN BEGIN
                  IF NOT Transportista.GET("Shipping Agent Code") THEN BEGIN
                    Transportista.INIT;
                    Transportista.Code := '';
                  END;
                END;

                //Comentarios.SETFILTER(Comentarios."No.","Sales Shipment Header"."No.");
                //IF Comentarios.FIND('-') THEN BEGIN
                //  ObservacionesAux := Comentarios.Comment;
                //END;

                //Rec5790.SETFILTER();
                //IF Rec5790.FIND('-') THEN;
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
                    field("Show Correction Lines";ShowCorrectionLines)
                    {
                        CaptionML = ENU='Show Correction Lines',
                                    ESP='Muestra líneas corrección';
                    }
                    field(ShowLotSN;ShowLotSN)
                    {
                        CaptionML = ENU='Show Serial/Lot Number Appendix',
                                    ESP='Mostrar apéndice números serie/lote';
                    }
                    field(DisplayAsmInfo;DisplayAssemblyInformation)
                    {
                        CaptionML = ENU='Show Assembly Components',
                                    ESP='Mostrar componentes del ensamblado';
                    }
                    field("Albarán valorado";ShowAmounts)
                    {
                        Description = 'CLIP4.0';
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
          SalesSetup."Logo Position on Documents"::"No Logo":
            ;
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
        AsmHeaderExists := FALSE;
    end;

    var
        Text000 : TextConst ENU='Salesperson',ESP='Vendedor';
        Text001 : TextConst ENU='COPY',ESP='COPIA';
        Text002 : TextConst ENU='DELIVERY NOTE',ESP='ALBARAN',FRA='NOTE DE LIVRAISON';
        SalesPurchPerson : Record "Salesperson/Purchaser";
        CompanyInfo : Record "Company Information";
        CompanyInfo1 : Record "Company Information";
        CompanyInfo2 : Record "Company Information";
        CompanyInfo3 : Record "Company Information";
        SalesSetup : Record "Sales & Receivables Setup";
        DimSetEntry1 : Record "Dimension Set Entry";
        DimSetEntry2 : Record "Dimension Set Entry";
        Language : Record "Language";
        TrackingSpecBuffer : Record "Tracking Specification" temporary;
        PostedAsmHeader : Record "Posted Assembly Header";
        PostedAsmLine : Record "Posted Assembly Line";
        ShptCountPrinted : Codeunit "Sales Shpt.-Printed";
        SegManagement : Codeunit "SegManagement";
        ItemTrackingDocMgt : Codeunit "Item Tracking Doc. Management";
        RespCenter : Record "Responsibility Center";
        ItemTrackingAppendix : Report "Item Tracking Appendix";
        CustAddr : array [8] of Text[80];
        ShipToAddr : array [8] of Text[80];
        CompanyAddr : array [8] of Text[80];
        SalesPersonText : Text[20];
        ReferenceText : Text[80];
        MoreLines : Boolean;
        NoOfCopies : Integer;
        OutputNo : Integer;
        NoOfLoops : Integer;
        TrackingSpecCount : Integer;
        OldRefNo : Integer;
        OldNo : Code[20];
        CopyText : Text[30];
        ShowCustAddr : Boolean;
        i : Integer;
        FormatAddr : Codeunit "Format Address";
        DimText : Text[120];
        OldDimText : Text[75];
        ShowInternalInfo : Boolean;
        Continue : Boolean;
        LogInteraction : Boolean;
        ShowCorrectionLines : Boolean;
        ShowLotSN : Boolean;
        ShowTotal : Boolean;
        ShowGroup : Boolean;
        TotalQty : Decimal;
        [InDataSet]
        LogInteractionEnable : Boolean;
        DisplayAssemblyInformation : Boolean;
        AsmHeaderExists : Boolean;
        LinNo : Integer;
        ItemTrackingAppendixCaptionLbl : TextConst ENU='Item Tracking - Appendix',ESP='Seguimiento productos - Apéndice';
        PhoneNoCaptionLbl : TextConst ENU='ph.:',ESP='Nº teléfono';
        VATRegNoCaptionLbl : TextConst ENU='VAT No.:',ESP='CIF/NIF:';
        GiroNoCaptionLbl : TextConst ENU='Giro No.',ESP='Nº giro postal';
        BankNameCaptionLbl : TextConst ENU='Bank',ESP='Banco';
        BankAccNoCaptionLbl : TextConst ENU='Account No.',ESP='Nº cuenta';
        ShipmentNoCaptionLbl : TextConst ENU='DELIVERY No.:',ESP='Nº ALBARAN:',FRA='NOTE DE LIVRAISON:';
        ShipmentDateCaptionLbl : TextConst ENU='Shipment Date',ESP='Fecha envío';
        HomePageCaptionLbl : TextConst ENU='Web:',ESP='Web:';
        EmailCaptionLbl : TextConst ENU='E-Mail:',ESP='E-mail:';
        DocumentDateCaptionLbl : TextConst ENU='Document Date',ESP='Fecha emisión documento';
        HeaderDimensionsCaptionLbl : TextConst ENU='Header Dimensions',ESP='Dimensiones cabecera';
        LineDimensionsCaptionLbl : TextConst ENU='Line Dimensions',ESP='Dimensiones línea';
        BilltoAddressCaptionLbl : TextConst ENU='Bill-to Address',ESP='Fact. a-Dirección';
        QuantityCaptionLbl : TextConst ENU='QUANTITY',ESP='CANTIDAD',FRA='QUANTITE';
        SerialNoCaptionLbl : TextConst ENU='Serial No.',ESP='Nº serie';
        LotNoCaptionLbl : TextConst ENU='Lot No.',ESP='Nº lote';
        DescriptionCaptionLbl : TextConst ENU='DESCRIPTION',ESP='DESCRIPCION',FRA='DESCRIPTION';
        NoCaptionLbl : TextConst ENU='No.',ESP='Nº';
        PageCaptionCap : TextConst ENU='Page %1 of %2',ESP='Pag. %1 de %2';
        "--- CLIP vars ---" : Integer;
        GLSetup : Record "General Ledger Setup";
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
        ShowAmounts : Boolean;
        CurrencyTxt : Text;
        Cust : Record "Customer";
        AuxText : Text;
        FechaCaptionLbl : TextConst ENU='DATE:',ESP='FECHA:',FRA='DATE:';
        CodClienteCaptionLbl : TextConst ENU='CUSTOMER No.:',ESP='COD. CLIENTE:',FRA='CODE CLIENT:';
        TotalLineas : Integer;
        LineasConsumidas : Integer;
        NotasCaptionLbl : TextConst ENU='Comments:',ESP='Notas:',FRA='Notes:';
        FirmalTransportistaCaptionLbl : TextConst ENU='Date/Signature/Stamp:',ESP='Fecha/Firma/Sello Transportista:',FRA='Date/Signature/Sceau Porteur:';
        CodigocaptionLbl : TextConst ENU='REFERENCE',ESP='CODIGO',FRA='CODE';
        DireccionEntregacaptionLbl : TextConst ENU='DELIVERY ADDRESS:',ESP='DIRECCIÛN DE ENTREGA:',FRA='ADDRESSE DE LIVRAISON';
        TelefonoCaptionLbl : TextConst ENU='ph.:',ESP='Tel.:',FRA='Tél.:';
        PersonaContacteCaptionLbl : TextConst ENU='FAO:',ESP='Persona de contacto:',FRA='Personne de contact:';
        TransportCaptionLbl : TextConst ENU='Freight:',ESP='Transporte:',FRA='Transport:';
        TransportistaCaptionLbl : TextConst ENU='Carrier:',ESP='Transportista:',FRA='Transporteur:';
        NBultos : TextConst ENU='No. Packages:',ESP='Nº de bultos:',FRA='Nombre de colis:';
        Transportista : Record "Shipping Agent";
        Comentarios : Record "Sales Comment Line";
        ObservacionesAux : Text[80];
        Rec5790 : Record "Shipping Agent Services";
        QuantityCaptionLbl1 : TextConst ENU='QUANTITY',ESP='CANTIDAD',FRA='QUANTITÉ';
        PesoNetoCaptionLbl : TextConst ENU='NET WEIGHT Kg',ESP='PESO NETO KG',FRA='POIDS NET Kg';
        PesoBrutoCaptionLbl : TextConst ENU='WEIGHT',ESP='PESO',FRA='POIDS BRUT KG';
        TotalWeightCaptionLbl : TextConst ENU='Total Weight:',ESP='Total Peso:';
        LanguageAux : Integer;
        Producto : Record "Item";
        PesoAux : Decimal;

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(5) <> '';
    end;

    procedure InitializeRequest(NewNoOfCopies : Integer;NewShowInternalInfo : Boolean;NewLogInteraction : Boolean;NewShowCorrectionLines : Boolean;NewShowLotSN : Boolean;DisplayAsmInfo : Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        ShowCorrectionLines := NewShowCorrectionLines;
        ShowLotSN := NewShowLotSN;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure GetUnitOfMeasureDescr(UOMCode : Code[10]) : Text[10];
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

    local procedure "---- CLIP fun ---"();
    begin
    end;

    local procedure CalcDocumentTotals(DocNo : Code[20]);
    var
        SalesShipHead2 : Record "Sales Shipment Header";
        SalesShipLine2 : Record "Sales Shipment Line";
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

        CLEAR(DocumentTotalsDec);
        VATAmountLine2.DELETEALL;

        SalesShipHead2.GET(DocNo);
        SalesShipLine2.SETRANGE(SalesShipLine2."Document No.",DocNo);
        //CVP EXT
        //WITH SalesShipLine2 DO
          //BEGIN
            IF SalesShipLine2.FINDSET THEN
              REPEAT
                IF VATPostingSetup2.GET(SalesShipLine2."VAT Bus. Posting Group",SalesShipLine2."VAT Prod. Posting Group") THEN BEGIN
                  VATAmountLine2.INIT;
                  //VATAmountLine2."VAT Identifier" := "VAT Identifier";
                  VATAmountLine2."VAT Calculation Type" := SalesShipLine2."VAT Calculation Type";
                  VATAmountLine2."Tax Group Code" := SalesShipLine2."Tax Group Code";
                  VATAmountLine2."VAT %" := VATPostingSetup2."VAT %";
                  VATAmountLine2."EC %" := VATPostingSetup2."EC %";
                  //CVP VATAmountLine2."VAT Base" := importe - "Dto. P.P." - "Importe dto. factura";
                  //CVP VATAmountLine2."Amount Including VAT" := "Importe IVA incl.";
                  //CVP VATAmountLine2."Line Amount" := Importe;
                  //VATAmountLine2."Line Discount Amount" := "Importe dto. linea";
                  //CVP VATAmountLine2."Pmt. Disc. Given Amount" := "Dto. P.P.";
                  //CVP IF "Allow Invoice Disc." THEN
                  //CVP   VATAmountLine2."Inv. Disc. Base Amount" := Importe;
                  //CVP VATAmountLine2."Invoice Discount Amount" := "Importe dto. factura";
                  //CVP EXT
                  //VATAmountLine2.SetCurrencyCode(SalesShipHead2."Currency Code");
                  //FI EXT
                  //VATAmountLine2."VAT Difference" := "VAT Difference";
                  //VATAmountLine2."EC Difference" := "EC Difference";
                  IF SalesShipHead2."Prices Including VAT" THEN
                    VATAmountLine2."Prices Including VAT" := TRUE;
                  //VATAmountLine2."VAT Clause Code" := "VAT Clause Code";
                  VATAmountLine2.InsertLine;

                  //CVP TotalAmountInclVAT2 += "Importe IVA incl.";

                  //CVP IF (Type = Type::"G/L Account") THEN BEGIN
                  //CVP   IF ("No." = SalesSetup."Cuenta de Portes") THEN  PortsAmt += Importe;
                  //CVP   IF ("No." = SalesSetup."Cuenta de Seguros") THEN FinancialAmt += Importe;
                  //CVP END;
                END;
              UNTIL SalesShipLine2.NEXT = 0;
          //END;

        //WITH VATAmountLine2 DO
        //  BEGIN
            IF VATAmountLine2.FINDSET THEN
              REPEAT
                //DocumentTotalsDec[1]  += "Line Amount" + "Line Discount Amount";
                DocumentTotalsDec[1]  += VATAmountLine2."Line Amount";
                //DocumentTotalsDec[2]  += "Invoice Discount Amount" + "Line Discount Amount"; //CLIP15.0
                DocumentTotalsDec[2]  += VATAmountLine2."Invoice Discount Amount";                            //CLIP15.0
                DocumentTotalsDec[4]  += VATAmountLine2."Pmt. Disc. Given Amount";
                IF VATAmountLine2."VAT Calculation Type" <> VATAmountLine2."VAT Calculation Type" :: "No taxable VAT" THEN BEGIN
                  i += 1;
                  ImporteIVA[i] := VATAmountLine2."VAT Amount";
                  BaseIva[i]:= VATAmountLine2."VAT Base";
                  PorIva[i] := VATAmountLine2."VAT %";
                END;
                DocumentTotalsDec[19] := VATAmountLine2."EC %";
                DocumentTotalsDec[20] += VATAmountLine2."EC Amount";
              UNTIL VATAmountLine2.NEXT = 0;
          //END;

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
          DocumentTotalsDec[3]  := SalesShipHead2."Payment Discount %";
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
        //+CLIP4.0

        //-CLIP15.0
        FOR i := 1 TO 21 DO BEGIN
          DocumentTotals[i] := BlankZero(DocumentTotalsDec[i]);
        END;
        //+CLIP15.0
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

    local procedure FormatAddressFields(SalesShipmentHeader : Record "Sales Shipment Header");
    begin
        FormatAddr.GetCompanyAddr(SalesShipmentHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.SalesShptShipTo(ShipToAddr,SalesShipmentHeader);
        ShowCustAddr := FormatAddr.SalesShptBillTo(CustAddr,ShipToAddr,SalesShipmentHeader);
    end;
}

