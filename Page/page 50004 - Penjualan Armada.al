page 50004 "Penjualan Armada"
{
    PageType = Document;
    SourceTable = "Penjualan Header";

    layout
    {
        area(Content)
        {
            group(GroupName)
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
                field("Total Amount"; Rec."Total Amount")
                {
                    ApplicationArea = All;
                }
            }
            part(subForm; "Penjualan Armada Subform")
            {
                SubPageLink = "No. Faktur" = field("No. Faktur");
                UpdatePropagation = Both;
                ApplicationArea = all;

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Posting)
            {
                image = Post;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                var
                    PostingPenjualan: Codeunit "Posting Penjualan";
                    Date1: date;
                    TextMes: text;
                begin
                    PostingPenjualan.PostingPenjualan(Rec);
                    Date1 := System.Today();
                    TextMes := 'Posting Berhasil Pada Tanggal:';
                    message('Posting Berhasil Pada Tanggal: ' + Format(Date1));
                    // Message('Posting Berhasil');
                end;
            }
            action(Formulir)
            {
                image = PrintReport;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    Report.Run(Report::"Bank Account - List");
                    // Message('Panggil Report');
                end;
            }
        }
    }

    var
        myInt: Integer;
}