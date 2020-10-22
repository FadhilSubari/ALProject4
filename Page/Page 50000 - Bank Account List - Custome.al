page 50000 "Bank Account List Custome"
{
    PageType = List;
    ApplicationArea = All;
    // untuk object category mana yang ingin dipake
    UsageCategory = Administration;

    // Untuk Table mana yang ingin di pakai
    SourceTable = "Bank Account";

    layout
    {
        area(Content)
        {
            repeater("MyGroup")
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; Rec."Currency Code")
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
            action("Posting")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ApplicationArea = All;
                Image = "8ball";
                trigger OnAction()
                begin
                    Message('Test');
                end;
            }
        }
    }

    var
        myInt: Integer;
}