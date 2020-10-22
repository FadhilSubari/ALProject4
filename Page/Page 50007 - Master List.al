page 50007 "Master List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MasterCs;
    Editable = false;
    CardPageId = "Master Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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