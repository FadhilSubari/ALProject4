page 50012 "Posted Penjualan ArmadaSub"
{
    PageType = ListPart;
    SourceTable = "Posted Penjualan Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    Caption = 'Lines Posted';
    layout
    {
        area(Content)
        {
            repeater(MyGroup)
            {
                field(Deskripsi; Rec.Deskripsi)
                {
                    ApplicationArea = all;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = all;
                }
                field("Harga Satuan"; Rec."Harga Satuan")
                {
                    ApplicationArea = all;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = all;

                }
            }
        }
    }
}