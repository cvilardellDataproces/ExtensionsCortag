report 50111 "Importar imagenes"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Importar imagenes.rdlc';

    dataset
    {
        dataitem("Picture File";"Picture File")
        {
            RequestFilterFields = "Item No.";

            trigger OnAfterGetRecord();
            var
                File : File;
                OutStream : OutStream;
                InStream : InStream;
            begin
                IF Item.GET("Item No.") THEN BEGIN
                  PictureFilePath := STRSUBSTNO('C:\Proyectos\Dataproces\Imagenes\%1.bmp',"Picture File");
                  //File.Open(PictureFilePath);

                  //File.CREATEinSTREAM(InStream);
                  //COPYSTREAM(OutStream,InStream);
                  //CVP EXT
                  //Item.Picture.IMPORTFILE(PictureFilePath,'');
                  //EXT FI
                  //CREATEoutSTREAM(OutStream);
                  Item.MODIFY;
                  //File.CLOSE;
                END;
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
        PictureFilePath : Text[90];
        FileOut : Code[10];
        Item : Record Item;
}

