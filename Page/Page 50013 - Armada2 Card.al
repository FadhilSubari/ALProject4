page 50013 "Armada2 Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Armada2;

    layout
    {
        area(Content)
        {
            group("Input Armada")
            {
                field(Kode; Rec.Kode)
                {
                    ApplicationArea = All;
                }
                field(Nama; Rec.Nama)
                {
                    ApplicationArea = All;
                }
                field(Bobot; Rec.Bobot)
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