report 50004 "Posted Armada List2"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic, Suit;
    DefaultLayout = RDLC;
    PreviewMode = PrintLayout;
    RDLCLayout = './Report/Report 50004 - Posted Armada list2.rdlc';

    dataset
    {
        dataitem("Posted Penjualan Header"; "Posted Penjualan Header")
        {
            RequestFilterFields = "No. Faktur", "Tanggal Transaksi", "Kode Armada";
            PrintOnlyIfDetail = true;
            column(CompanyInformasiPicture; CompanyInformasi.Picture)
            {

            }
            column(filterDateFrom; filterDateFrom)
            {

            }
            column(FilterDateTo; FilterDateTo)
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
                PageGroupNo := 1;

                if filterDateFrom = 0D then
                    filterDateFrom := 0D;
                if FilterDateTo = 0D then
                    filterDateTo := 0D;

                SetRange("Tanggal Transaksi", filterDateFrom, FilterDateTo);
            end;

            trigger OnAfterGetRecord()
            var
                GetTanggal: Record "Posted Penjualan Header";

            begin
                if PrintOnlyOnePerpage then
                    PageGroupNo := PageGroupNo + 1;
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
                    field(New; PrintOnlyOnePerPage)
                    {
                        ApplicationArea = all;
                        Caption = 'New Page per Customer';
                        ToolTip = 'Specifies if each customer''s information is printed on a new page if you have chosen two or more customers to be included in the report.';
                    }
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
    trigger OnInitReport()
    begin
        CompanyInformasi.get;
        CompanyInformasi.CalcFields(Picture);
    end;

    var
        myInt: Integer;
        filterDateFrom: date;
        FilterDateTo: date;
        PrintOnlyOnePerpage: Boolean;
        PageGroupNo: Integer;
        CompanyInformasi: Record "Company Information";

    procedure InsialRequest(setPrintOnlyOnePerpage: Boolean)
    begin
        PrintOnlyOnePerpage := setPrintOnlyOnePerpage;
    end;
}