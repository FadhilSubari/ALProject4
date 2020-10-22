page 50014 "Penjualan Armada2 List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Penjualan Header2";
    Editable = false;
    CardPageId = "Penjualan Armada2";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No. Faktur"; Rec."No. Faktur")
                {
                    ApplicationArea = All;
                }
                field("Kode Armada"; Rec."Kode Armada")
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