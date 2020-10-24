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
            action("Report")
            {
                ApplicationArea = all;
                Image = Report;
                Promoted = true;
                PromotedCategory = New;
                RunObject = report "Posted Armada List2";
            }
            action("Report Page")
            {
                ApplicationArea = all;
                Image = Report;
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction()
                var
                    PenjualanRecord: Record "Posted Penjualan Header";
                    PenjualanLine: Record "Posted Penjualan Line";

                begin
                    PenjualanRecord.Reset();
                    PenjualanRecord.SetRange("No. Faktur", 'F-0001');

                    if PenjualanRecord.FindFirst() then
                        PenjualanLine.Reset();
                    PenjualanLine.SetRange("No. Faktur", PenjualanRecord."No. Faktur");
                    if PenjualanLine.FindFirst() then begin
                        repeat
                            Message(PenjualanLine.Deskripsi);
                        // Message('%1', PenjualanRecord."Kode Armada");
                        // Message('Itu Record');
                        until PenjualanLine.Next = 0;
                    end;

                end;
            }
        }
    }

    var
        myInt: Integer;
}