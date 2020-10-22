pageextension 50003 ExtPurchaseOrder extends "Purchase Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Print)
        {
            action(Print2)
            {
                Caption = 'report';
                ApplicationArea = all;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                begin
                    CurrPage.SetSelectionFilter(PurchaseHeader);
                    Report.Run(Report::"Sales Invoice Custome", true, true, PurchaseHeader);
                end;
            }
        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}