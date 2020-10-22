pageextension 50000 "Bank Account List Ext" extends "Bank Account List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(Amount; Rec.Amount)
            {
                ApplicationArea = all;
            }

        }
        modify("Phone No.")
        {
            Visible = false;
        }
        modify(Contact)
        {
            Visible = false;
        }
    }

    actions
    {
        // Add changes to page actions here
        addlast(navigation)
        {
            action("Tombol Percobaan")
            {
                ApplicationArea = all;
                Image = AbsenceCalendar;
                Promoted = true;
                PromotedCategory = Process;
                // RunObject = report "Bank Account - List";
                trigger OnAction()
                begin
                    // Report.Run(Report::"Bank Account - List");
                    Message('Klik tombol Percobaan');
                end;
            }
        }
    }

    var
        myInt: Integer;
}