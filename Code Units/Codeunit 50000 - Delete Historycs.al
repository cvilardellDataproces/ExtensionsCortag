codeunit 50000 "Delete Historycs"
{

    trigger OnRun();
    begin
        HIST.DELETEALL;
        STAT.DELETEALL;
        
        /*
        //SII_Company_Information.DELETEALL;
        
        Sales_Invoice_Header.DELETEALL;
        //Customer.DELETEALL;
        Purch_Cr_Memo_Hdr.DELETEALL;
        Purch_Inv_Header.DELETEALL;
        //Vendor.DELETEALL;
        Detailed_Vendor_Ledg_Entry.DELETEALL;
        VAT_Entry.DELETEALL;
        Sales_Cr_Memo_Header.DELETEALL;
        Cust_Ledger_Entry.DELETEALL;
        Vendor_Ledger_Entry.DELETEALL;
        Detailed_Cust_Ledg_Entry.DELETEALL;
        GLEntry.DELETEALL();
        GLRegister.DELETEALL()
        */

    end;

    var
        HIST : Record "SII History";
        STAT : Record "SII Doc. Upload State";
        Sales_Invoice_Header : Record "Sales Invoice Header";
        Customer : Record "Customer";
        Purch_Inv_Header : Record "Purch. Inv. Header";
        Purch_Cr_Memo_Hdr : Record "Purch. Cr. Memo Hdr.";
        Vendor : Record "Vendor";
        Detailed_Cust_Ledg_Entry : Record "Extended Text Header";
        Detailed_Vendor_Ledg_Entry : Record "Extended Text Line";
        VAT_Entry : Record "VAT Entry";
        Sales_Cr_Memo_Header : Record "Sales Cr.Memo Header";
        Cust_Ledger_Entry : Record "Cust. Ledger Entry";
        Vendor_Ledger_Entry : Record "Vendor Ledger Entry";
        GLEntry : Record "G/L Entry";
        GLRegister : Record "G/L Register";
}

