report 50001 "Sales Invoice Custome"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/Report - 50001 Posted Penjualan Armada.rdlc';
    PreviewMode = PrintLayout;
    ApplicationArea = all;
    UsageCategory = Administration;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(No_; "No.")
            {

            }
            column(Pay_to_Name; "Pay-to Name")
            {

            }
            column(Pay_to_Address; "pay-to Address")
            {

            }
            column(Pay_to_Contact; "pay-to Contact")
            {

            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document No." = field("No."), "Document Type" = field("Document Type");
                column(Item_No; "No.")
                {

                }
                column(Description; "Description")
                {

                }
                column(Location_Code; "Location Code")
                {

                }
                column(Quantity; "Quantity")
                {

                }
                column(Unit_Cost; "Unit Cost")
                {

                }
                column(Amount; "Amount")
                {

                }
                column(Direct_Unit_Cost; "Direct Unit Cost")
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}