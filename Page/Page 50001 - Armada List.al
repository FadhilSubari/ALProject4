page 50001 "Armada List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Armada;
    Editable = false;
    CardPageId = "Armada Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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