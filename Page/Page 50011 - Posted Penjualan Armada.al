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
            part(subForm; "Penjualan Armada Subform")
            {
                SubPageLink = "No. Faktur" = field("No. Faktur");
                UpdatePropagation = Both;

            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}