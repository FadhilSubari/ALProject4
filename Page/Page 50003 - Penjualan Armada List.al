page 50003 "Penjualan Armada List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Penjualan Header";
    CardPageId = "Penjualan Armada";
    Editable = false;

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