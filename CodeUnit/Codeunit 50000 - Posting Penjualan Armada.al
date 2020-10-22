codeunit 50000 "Posting Penjualan"
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    procedure PostingPenjualan(PenjualanHeaderParam: Record "Penjualan Header")
    var
        PenjualanHeader: Record "Penjualan Header";
        PenjualanLine: Record "Penjualan Line";
        postedHeader: Record "Posted Penjualan Header";
        PostedLine: Record "Posted Penjualan Line";
    begin
        Clear(PenjualanHeader);
        PenjualanHeader.SetRange("No. Faktur", PenjualanHeaderParam."No. Faktur");
        if PenjualanHeader.FindFirst() then begin
            postedHeader."No. Faktur" := PenjualanHeader."No. Faktur";
            postedHeader."Kode Armada" := PenjualanHeader."Kode Armada";
            postedHeader."Tanggal Transaksi" := PenjualanHeader."Tanggal Transaksi";
            // postedHeader.TransferFields(PenjualanHeader);
            postedHeader.Insert();

            Clear(PenjualanLine);
            PenjualanLine.SetRange("No. Faktur", PenjualanHeaderParam."No. Faktur");
            if PenjualanLine.FindFirst() then begin
                repeat
                    Message(PenjualanLine.Deskripsi);
                    // PostedLine."No. Faktur" := PenjualanLine."No. Faktur";
                    // PostedLine."Line No." := PenjualanLine."Line No.";
                    // PostedLine."Deskripsi" := PenjualanLine."Deskripsi";
                    // PostedLine."Amount" := PenjualanLine."Amount";
                    // PostedLine."Harga Satuan" := PenjualanLine."Harga Satuan";
                    // PostedLine."Quantity" := PenjualanLine."Quantity";
                    PostedLine.TransferFields(PenjualanLine);
                    PostedLine.Insert();
                until (PostedLine.Next = 0);
            end;

        end;
        PenjualanHeader.Delete();
        PenjualanLine.Delete();
    end;

}