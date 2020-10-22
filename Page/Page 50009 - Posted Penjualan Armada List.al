page 50009 "Posted Penjualan Armada List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Posted Penjualan Header";
    Editable = false;
    CardPageId = "Posted Penjualan Armada";

    layout
    {
        area(Content)
        {
            repeater("Penjualan Armada")
            {
                field("No. Faktur"; Rec."No. Faktur")
                {
                    ApplicationArea = All;

                }
                field("Kode Armada"; Rec."Kode Armada")
                {
                    ApplicationArea = All;

                }
                field("Tanggal Transaksi"; Rec."Tanggal Transaksi")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Delete All Cs")
            {
                ApplicationArea = All;
                Image = Delete;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                var
                    PostedPenjualan: Codeunit "Delete Posted Penjualan List";
                begin
                    PostedPenjualan.DeletePostedPenjualanList();
                    Message('Berhasil Menghapus Semua data');
                end;
            }
        }
    }

    var
        myInt: Integer;
}