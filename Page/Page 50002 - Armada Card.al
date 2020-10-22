page 50002 "Armada Card"
{
    PageType = Card;
    SourceTable = Armada;

    layout
    {
        area(Content)
        {
            group(Informasi)
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

        }
    }

    var
        myInt: Integer;
}