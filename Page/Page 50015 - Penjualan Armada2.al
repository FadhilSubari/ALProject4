page 50015 "Penjualan Armada2"
{
    SourceTable = "Penjualan Header2";
    PageType = Document;
    layout
    {
        area(Content)
        {
            group("Penjualan armada 2")
            {
                field("No. Faktur"; Rec."No. Faktur")
                {
                    ApplicationArea = all;
                }
                field("Kode Armada"; Rec."Kode Armada")
                {
                    ApplicationArea = all;
                }
                field("Tanggal Transaksi"; Rec."Tanggal Transaksi")
                {
                    ApplicationArea = all;
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ApplicationArea = all;
                }
            }
            part(SubForm; "Penjualan Armada2 Subform")
            {
                SubPageLink = "No. Faktur" = field("No. Faktur");
                UpdatePropagation = Both;
            }
        }
    }
}