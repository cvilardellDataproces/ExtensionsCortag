page 50004 "SII Declaration Line"
{
    DelayedInsert = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = "SII Declaration Line";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type;Type)
                {
                }
                field("No. mov.";"No. mov.")
                {
                }
                field("Fiscal Year";"Fiscal Year")
                {
                }
                field("Document Type";"Document Type")
                {
                }
                field("Document No.";"Document No.")
                {
                }
                field("VAT Document No.";"VAT Document No.")
                {
                }
                field("VAT Registration No.";"VAT Registration No.")
                {
                }
                field("Customer/Vendor No.";"Customer/Vendor No.")
                {
                }
                field("Customer/Vendor Name";"Customer/Vendor Name")
                {
                }
                field("Country Code";"Country Code")
                {
                }
                field("Document Date";"Document Date")
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field(Base;Base)
                {
                }
                field(Quote;Quote)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("F&unctions")
            {
                CaptionML = ENU='F&unctions',
                            ESP='Acci&ones';
                Image = "Action";
            }
            action("Declarar Periodo")
            {
                Enabled = true;
                Image = RegisteredDocs;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                Visible = true;

                trigger OnAction();
                var
                    SIIDocUploadState : Record "SII Doc. Upload State";
                begin
                    IF FINDFIRST THEN REPEAT
                      IF Type = Type::Sale THEN BEGIN
                        IF CustLedgerEntry.GET("No. mov.") THEN BEGIN
                          //SIIDocUploadState.CreateNewRequest(
                          //  CustLedgerEntry."Entry No.",SIIDocUploadState."Document Source"::"Customer Ledger",
                          //  CustLedgerEntry."Document Type",CustLedgerEntry."Document No.",
                          //  CustLedgerEntry."Posting Date");
                        END;
                      END;
                      IF Type = Type::Purchase THEN BEGIN
                        IF VendorLedgerEntry.GET("No. mov.") THEN BEGIN
                          //SIIDocUploadState.CreateNewRequest(
                          //  VendorLedgerEntry."Entry No.",SIIDocUploadState."Document Source"::"Vendor Ledger",
                          //  VendorLedgerEntry."Document Type",VendorLedgerEntry."Document No.",
                          //  VendorLedgerEntry."Posting Date");
                        END;
                      END;
                    UNTIL NEXT = 0;
                end;
            }
        }
    }

    var
        FI : Date;
        FF : Date;
        CustLedgerEntry : Record "Cust. Ledger Entry";
        VendorLedgerEntry : Record "Vendor Ledger Entry";
}

