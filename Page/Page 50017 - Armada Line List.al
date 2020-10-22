page 50017 "Armada Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Posted Penjualan Line";
    // Editable = false;

    layout
    {
        area(Content)
        {
            repeater("Posted Line")
            {
                field("No. Faktur"; Rec."No. Faktur")
                {
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
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