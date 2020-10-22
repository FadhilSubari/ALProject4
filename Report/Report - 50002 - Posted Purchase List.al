report 50002 "Posted Purchase List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report/Report - 50002 Posted Purchase List.rdlc';
    PreviewMode = PrintLayout;
    ApplicationArea = all;
    UsageCategory = Administration;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(filterDateFrom; filterDateFrom)
            {

            }
            column(filterDateTo; filterDateTo)
            {

            }
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

            trigger OnPreDataItem()
            begin
                if filterDateFrom = 0D then
                    filterDateFrom := 0D;
                if filterDateTo = 0D then
                    filterDateTo := Today;

                // SetRange("Document Date", filterDateFrom, filterDateTo);
            end;
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
                    field(filterDateFrom; filterDateFrom)
                    {
                        ApplicationArea = all;
                        Caption = 'Date From';
                    }
                    field(filterDateTo; filterDateTo)
                    {
                        ApplicationArea = all;
                        Caption = 'Date To';
                    }
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
        filterDateFrom: Date;
        filterDateTo: Date;
}