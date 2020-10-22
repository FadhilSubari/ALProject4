report 50000 ReportArmada
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;

    dataset
    {
        dataitem("Posted Penjualan Header"; "Posted Penjualan Header")
        {
            RequestFilterFields = "No. Faktur", "Kode Armada";
            DataItemTableView = sorting("No. Faktur");
            column(No__Faktur; "No. Faktur")
            {

            }
            column(Kode__Armada; "Kode Armada")
            {

            }
            column(Tanggal__Transaksi; "Tanggal Transaksi")
            {

            }
            trigger OnPreDataItem()
            begin
                if Check = true then
                    Message('Ini Bekerja');
            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Check; Check)
                    {
                        ApplicationArea = All;

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
        Check: Boolean;
}