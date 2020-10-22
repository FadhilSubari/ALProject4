report 50003 "Posted Report Form"
{
    PreviewMode = PrintLayout;
    DefaultLayout = RDLC;
    RDLCLayout = './Report/Report/Report 50002 - report Posted Form.rdlc';
    ApplicationArea = all;
    UsageCategory = Administration;

    dataset
    {
        dataitem("Posted Penjualan Header"; "Posted Penjualan Header")
        {
            column(CompanyInformasi; CompanyInformasi.Name)
            {

            }
            column(CompanyInformasiAdd; CompanyInformasi.Address)
            {

            }
            column(CompanyInformasiPho; CompanyInformasi."Phone No.")
            {

            }
            column(CompanyInformasiPic; CompanyInformasi.Picture)
            {

            }
            column(Kode_Armada; "Kode Armada")
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
                column(Line_No_; "Line No.")
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

    trigger OnInitReport()
    begin
        CompanyInformasi.get;
        CompanyInformasi.CalcFields(Picture);
    end;

    var
        myInt: Integer;
        CompanyInformasi: Record "Company Information";
}