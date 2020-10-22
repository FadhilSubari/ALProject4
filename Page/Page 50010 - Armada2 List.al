page 50010 "Armada2 List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Armada2;
    Editable = false;
    CardPageId = "Armada2 Card";

    layout
    {
        area(Content)
        {
            repeater("Armada 2")
            {
                field(Kode; Rec.Kode)
                {
                    ApplicationArea = All;
                }
                field(Nama; Rec.Nama)
                {
                    ApplicationArea = All;
                }
                field(Satuan; Rec.Satuan)
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