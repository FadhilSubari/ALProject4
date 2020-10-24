report 50006 "Report Posted Armada Page"
{
    UsageCategory = Administration;
    ApplicationArea = All;

    dataset
    {
        dataitem("Posted Penjualan Header"; "Posted Penjualan Header")
        {
            column(No__Faktur; "No. Faktur")
            {

            }
            column(Kode_Armada; "Kode Armada")
            {

            }
            column(Tanggal_Transaksi; "Tanggal Transaksi")
            {

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