report 50002 "Create Items to PriceList"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Create Items to PriceList.rdlc';

    dataset
    {
        dataitem("Cloud Reseller Pricelist";"Cloud Reseller Pricelist")
        {
            DataItemTableView = SORTING("Offer ID","Fecha registro","Vendor Code","Offer Display Name");

            trigger OnAfterGetRecord();
            begin

                // "Cloud Reseller Pricelist"."Item No." := NoSeriesMgt.GetNextNo('ONDBASIC',TODAY,TRUE);
                Id1 := Id1 + 1;
                // 1License Agreement Type
                ItemAttributeValue."Attribute ID":= 1;
                ItemAttributeValue.ID := Id1;
                IF ItemAttributeValue.INSERT(TRUE) THEN;
                ItemAttributeValue.Value := "Cloud Reseller Pricelist"."License Agreement Type";
                ItemAttributeValue.MODIFY;

                ItemAttributeValueMapping."Table ID" := 27;
                ItemAttributeValueMapping."No." := "Cloud Reseller Pricelist"."Item No.";
                ItemAttributeValueMapping."Item Attribute ID" := ItemAttributeValue."Attribute ID";
                ItemAttributeValueMapping."Item Attribute Value ID" := Id1;
                ItemAttributeValueMapping.INSERT;

                // 2Secondary License Type
                ItemAttributeValue."Attribute ID":= 2;
                ItemAttributeValue.ID := Id1;
                IF ItemAttributeValue.INSERT(TRUE) THEN;
                ItemAttributeValue.Value := "Cloud Reseller Pricelist"."Secondary License Type";
                ItemAttributeValue.MODIFY;

                ItemAttributeValueMapping."Table ID" := 27;
                ItemAttributeValueMapping."No." := "Cloud Reseller Pricelist"."Item No.";
                ItemAttributeValueMapping."Item Attribute ID" := ItemAttributeValue."Attribute ID";
                ItemAttributeValueMapping."Item Attribute Value ID" := ItemAttributeValue.ID;
                ItemAttributeValueMapping.INSERT;

                // 3End Customer Type
                ItemAttributeValue."Attribute ID":= 3;
                ItemAttributeValue.ID := Id1;
                IF ItemAttributeValue.INSERT(TRUE) THEN;
                ItemAttributeValue.Value := "Cloud Reseller Pricelist"."End Customer Type";
                ItemAttributeValue.MODIFY;

                ItemAttributeValueMapping."Table ID" := 27;
                ItemAttributeValueMapping."No." := "Cloud Reseller Pricelist"."Item No.";
                ItemAttributeValueMapping."Item Attribute ID" := ItemAttributeValue."Attribute ID";
                ItemAttributeValueMapping."Item Attribute Value ID" := ItemAttributeValue.ID;
                ItemAttributeValueMapping.INSERT;
                // 4Offer ID
                ItemAttributeValue."Attribute ID":= 4;
                ItemAttributeValue.ID := Id1;

                IF ItemAttributeValue.INSERT(TRUE) THEN;
                ItemAttributeValue.Value := "Cloud Reseller Pricelist"."Offer ID";
                ItemAttributeValue.MODIFY;

                ItemAttributeValueMapping."Table ID" := 27;
                ItemAttributeValueMapping."No." := "Cloud Reseller Pricelist"."Item No.";
                ItemAttributeValueMapping."Item Attribute ID" := ItemAttributeValue."Attribute ID";
                ItemAttributeValueMapping."Item Attribute Value ID" := ItemAttributeValue.ID;
                ItemAttributeValueMapping.INSERT;

                Item."No." := "Cloud Reseller Pricelist"."Item No.";
                Item.INSERT(TRUE);
                Item.Description := COPYSTR("Cloud Reseller Pricelist"."Offer Display Name",1,50);
                DesLarge:= STRLEN(Item.Description);
                //Insertar cabecera
                IF DesLarge < STRLEN("Cloud Reseller Pricelist"."Offer Display Name") THEN BEGIN
                  ExtendedTextHeader."Table Name" := ExtendedTextHeader."Table Name"::Item;
                  ExtendedTextHeader."No." := Item."No.";
                  ExtendedTextHeader."Text No." := 1;
                  ExtendedTextHeader.Description := Item."No.";
                  ExtendedTextHeader."All Language Codes"  := TRUE;
                  ExtendedTextHeader."Sales Quote" := TRUE;
                  ExtendedTextHeader.INSERT;
                END;
                LineNo := 1000;
                WHILE DesLarge < STRLEN("Cloud Reseller Pricelist"."Offer Display Name") DO BEGIN
                  ExtendedTextLine."Table Name" := ExtendedTextHeader."Table Name";
                  ExtendedTextLine."No." := ExtendedTextHeader."No.";
                  ExtendedTextLine."Text No." := ExtendedTextHeader."Text No.";
                  ExtendedTextLine."Line No." := LineNo;
                  ExtendedTextLine.Text := COPYSTR("Cloud Reseller Pricelist"."Offer Display Name",DesLarge+1,50);
                  ExtendedTextLine.INSERT;
                  LineNo := LineNo + 1000;
                  DesLarge := DesLarge + STRLEN(ExtendedTextLine.Text);
                  END;
                Item."Unit Cost" := "Cloud Reseller Pricelist".PVD;
                Item.VALIDATE(Item."Unit Price","Cloud Reseller Pricelist"."ERP Price");
                IF (STRLEN("Cloud Reseller Pricelist"."Link Image")<200) AND (STRLEN("Cloud Reseller Pricelist"."Link Image")>0) THEN
                //CVP EXT
                //  Item.Picture.IMPORTFILE("Cloud Reseller Pricelist"."Link Image",'');
                //EXT FI
                Item.MODIFY;

                ConfigTemplateHeader.GET('PROD03');
                ItemRecRef.GETTABLE(Item);
                ConfigTemplateManagement.UpdateRecord(ConfigTemplateHeader,ItemRecRef);
                // MODIFY;
            end;

            trigger OnPreDataItem();
            begin
                NoSeriesMgt.InitSeries('ONDBASIC','ONDBASIC',0D,Item."No.",Item."No. Series");
                Id1 := 1;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        NoSeriesMgt : Codeunit "NoSeriesManagement";
        ItemAttributeValue : Record "Item Attribute Value";
        ItemAttributeValueMapping : Record "Item Attribute Value Mapping";
        ExtendedTextHeader : Record "Extended Text Header";
        ExtendedTextLine : Record "Extended Text Line";
        Item : Record "Item";
        DesLarge : Integer;
        LineNo : Integer;
        ConfigTemplateHeader : Record "Config. Template Header";
        DimensionsTemplate : Record "Dimensions Template";
        ItemRecRef : RecordRef;
        ConfigTemplateManagement : Codeunit "Config. Template Management";
        ToFile : Text;
        Id1 : Integer;
        Id2 : Integer;
        Id3 : Integer;
        Id4 : Integer;
}

