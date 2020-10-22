pageextension 50004 "Purchase Order List" extends "Purchase Order List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(PostBatch)
        {
            action("Report")
            {
                Caption = 'report List';
                ApplicationArea = all;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = report "Posted Purchase List";
            }
        }
    }

    var
        myInt: Integer;
}