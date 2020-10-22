page 50011 "Posted Penjualan Armada"
{
    PageType = Document;
    SourceTable = "Posted Penjualan Header";
    // Editable = false;

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
            part(subForm; "Posted Penjualan ArmadaSub")
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
            action("Report Custome")
            {
                ApplicationArea = All;
                Image = Print;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    FilterLine: Record "Posted Penjualan Header";
                begin
                    CurrPage.SetSelectionFilter(FilterLine);
                    Report.Run(Report::"Posted Report Form", true, true, FilterLine);
                end;
            }
        }
    }

    var
        myInt: Integer;
}