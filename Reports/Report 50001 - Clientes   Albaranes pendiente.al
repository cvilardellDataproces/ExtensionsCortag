report 50001 "Clientes   Albaranes pendiente"
{
    // version FONTAN1.0

    // Imprime, por cada cliente, el resumen de los albaranes entregados.
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Clientes   Albaranes pendiente.rdlc';


    dataset
    {
        dataitem(Customer;Customer)
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.";
            column(COMPANYNAME;COMPANYNAME)
            {
            }
            column(TODAY;TODAY)
            {
            }
            column(fechaini;fechaini)
            {
            }
            column(fechafin;fechafin)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(totalalbaran;totalalbaran)
            {
                DecimalPlaces = 2:2;
            }
            column(total;total)
            {
                DecimalPlaces = 2:2;
            }
            column(RESUMEN_ALBARANES_VENTASCaption;RESUMEN_ALBARANES_VENTASCaptionLbl)
            {
            }
            column(DelCaption;DelCaptionLbl)
            {
            }
            column(alCaption;alCaptionLbl)
            {
            }
            column(Pag_Caption;Pag_CaptionLbl)
            {
            }
            column(ClienteCaption;ClienteCaptionLbl)
            {
            }
            column(N_AlbaranCaption;N_AlbaranCaptionLbl)
            {
            }
            column(FechaCaption;FechaCaptionLbl)
            {
            }
            column(ImporteCaption;ImporteCaptionLbl)
            {
            }
            column(Total_cliente__________________________Caption;Total_cliente__________________________CaptionLbl)
            {
            }
            column(Total______________________________________________Caption;Total______________________________________________CaptionLbl)
            {
            }
            column(Customer_No_;"No.")
            {
            }
            dataitem("Sales Shipment Header";"Sales Shipment Header")
            {
                DataItemLink = "Bill-to Customer No."=FIELD("No.");
                DataItemTableView = SORTING("Bill-to Customer No.");
                column(Customer__No__;Customer."No.")
                {
                }
                column(Customer_Name;Customer.Name)
                {
                }
                column(Sales_Shipment_Header__No__;"No.")
                {
                }
                column(Sales_Shipment_Header__Posting_Date_;"Posting Date")
                {
                }
                column(totalalbaran_Control23;totalalbaran)
                {
                    DecimalPlaces = 2:2;
                }
                column(Sales_Shipment_Header__No___Control24;"No.")
                {
                }
                column(Sales_Shipment_Header__Posting_Date__Control25;"Posting Date")
                {
                }
                column(totalalbaran_Control26;totalalbaran)
                {
                    DecimalPlaces = 2:2;
                }
                column(Sales_Shipment_Header_Bill_to_Customer_No_;"Bill-to Customer No.")
                {
                }
                column(DueDate;"Due Date")
                {
                }

                trigger OnAfterGetRecord();
                begin
                      IF NOT cpedido.GET(1,"Order No.") THEN CurrReport.SKIP;
                      totalcli:=TRUE;
                    
                      /*Calcula valor albaran*/
                    
                      lalba.SETRANGE("Document No.","No.");
                    
                      "%pp":="Payment Discount %";
                      imppp:=0;
                      descuento:=0;
                      "total bruto":=0;
                      "Total neto":=0;
                      baseimp:=0;
                      totalalbaran:=0;
                      impivare:=0;
                    
                      IF lalba.FIND('-') THEN
                        REPEAT
                        IF lalba."No." <> '' THEN BEGIN
                         IF LP.GET(1,lalba."Order No.",lalba."Order Line No.") THEN BEGIN
                           IF LP.Quantity<>0 THEN BEGIN
                              IF cpedido."Currency Code"='' THEN BEGIN
                                "total bruto":=ROUND(lalba."Qty. Shipped Not Invoiced"*LP."Unit Price");
                                descuento := ROUND((LP."Line Discount Amount"/LP.Quantity)*lalba."Qty. Shipped Not Invoiced");
                                "Total neto":="total bruto"-descuento;
                                imppp := ROUND((LP."Pmt. Disc. Given Amount"/LP.Quantity)*lalba."Qty. Shipped Not Invoiced");
                                baseimp:="Total neto"-imppp;
                                impivare:=ROUND(baseimp*lalba."VAT %"/100);
                                totalalbaran:=totalalbaran+baseimp+impivare;
                              END
                              ELSE BEGIN
                                "total bruto":=ROUND(lalba."Qty. Shipped Not Invoiced"*LP."Unit Price",0.01);
                                descuento := ROUND((LP."Line Discount Amount"/LP.Quantity)*lalba."Qty. Shipped Not Invoiced",0.01);
                                "Total neto":="total bruto"-descuento;
                                imppp := ROUND((LP."Pmt. Disc. Given Amount"/LP.Quantity)*lalba."Qty. Shipped Not Invoiced",0.01);
                                baseimp:="Total neto"-imppp;
                                impivare:=ROUND((baseimp*lalba."VAT %"/100),0.01);
                                totalalbaran:=totalalbaran+baseimp+impivare;
                              END;
                           END;
                         END;
                        END;
                        UNTIL lalba.NEXT(1)=0;
                         IF cpedido."Currency Code"<>'' THEN BEGIN
                           totalalbaran:=tipocambio.ExchangeAmtFCYToFCY(cpedido."Posting Date",
                           cpedido."Currency Code",'',totalalbaran);
                           totalalbaran:=ROUND(totalalbaran);
                         END;
                         total:=total+totalalbaran;
                    IF totalalbaran = 0 THEN CurrReport.SKIP;

                end;

                trigger OnPreDataItem();
                begin
                      CurrReport.CREATETOTALS(totalalbaran);
                      SETRANGE("Posting Date",fechaini,fechafin);

                      totalalbaran:=0;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                Inicio:= TRUE;
                totalcli:=FALSE;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Control1100219001)
                {
                    field(Fechaini;fechaini)
                    {
                        CaptionML = ENU='Desde fecha',
                                    ESP='Desde fecha';
                    }
                    field(fechafin;fechafin)
                    {
                        CaptionML = ENU='Hasta fecha',
                                    ESP='Hasta fecha';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        LP : Record "Sales Line";
        textosim : Text[10];
        cpedido : Record "Sales Header";
        Simulacion : Boolean;
        total : Decimal;
        "%pp" : Decimal;
        imppp : Decimal;
        impivare : Decimal;
        baseimp : Decimal;
        fechaini : Date;
        fechafin : Date;
        totalalbaran : Decimal;
        descuento : Decimal;
        "total bruto" : Decimal;
        "Total neto" : Decimal;
        lalba : Record "Sales Shipment Line";
        totalcli : Boolean;
        Inicio : Boolean;
        tipocambio : Record "Currency Exchange Rate";
        RESUMEN_ALBARANES_VENTASCaptionLbl : Label 'RESUMEN ALBARANES VENTAS';
        DelCaptionLbl : Label 'Del';
        alCaptionLbl : Label 'al';
        Pag_CaptionLbl : Label 'Pag.';
        ClienteCaptionLbl : Label 'Cliente';
        N_AlbaranCaptionLbl : Label 'NºAlbaran';
        FechaCaptionLbl : Label 'Fecha';
        ImporteCaptionLbl : Label 'Importe';
        Total_cliente__________________________CaptionLbl : Label 'Total cliente..........................';
        Total______________________________________________CaptionLbl : Label 'Total..............................................';
}

