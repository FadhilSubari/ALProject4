page 50008 "Master Card"
{
    PageType = Card;
    SourceTable = MasterCs;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(IdMaster; Rec.IdMaster)
                {
                    ApplicationArea = All;

                }
                field(MasterName; Rec.MasterName)
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