report 50004 "Posted Armada List"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    PreviewMode = PrintLayout;
    RDLCLayout = './Report/Report 50004 - Posted Armada list.rdlc';

    dataset
    {
        dataitem("Posted Penjualan Header"; "Posted Penjualan Header")
        {
            column(filterDateFrom; filterDateFrom)
            {

            }
            column(FilterDateTo; FilterDateTo)
            {

            }
            column(No__Faktur; "No. Faktur")
            {

            }
            column(Tanggal_Transaksi; "Tanggal Transaksi")
            {

            }
            dataitem("Posted Penjualan Line"; "Posted Penjualan Line")
            {
                DataItemLink = "No. Faktur" = field("No. Faktur");
                column(ItemFaktur; "No. Faktur")
                {

                }
                column(Deskripsi; Deskripsi)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Harga_Satuan; "Harga Satuan")
                {

                }
                column(Amount; Amount)
                {

                }
            }
            trigger OnPreDataItem()
            begin
                if (filterDateFrom = 0D) AND (FilterDateTo = 0D) then begin
                    filterDateFrom := 0D;
                    filterDateTo := 0D;
                    Message('Maaf Data yang ingin di Report Tidak Ada');
                end;
                SetRange("Tanggal Transaksi", filterDateFrom, FilterDateTo);
            end;

            trigger OnAfterGetRecord()
            var
                GetTanggal: Record "Posted Penjualan Header";

            begin
                if not GetTanggal.FindFirst() then
                    Message('Data yang ingin di Report Kosong');
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
                    field(FilterDateFrom; FilterDateFrom)
                    {
                        ApplicationArea = all;
                    }
                    field(FilterDateTo; FilterDateTo)
                    {
                        ApplicationArea = all;
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
        filterDateFrom: date;
        FilterDateTo: date;
}