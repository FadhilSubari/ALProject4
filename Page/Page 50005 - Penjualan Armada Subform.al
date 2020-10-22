page 50005 "Penjualan Armada Subform"
{
    PageType = ListPart;
    SourceTable = "Penjualan Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    Caption = 'Lines';
    layout
    {
        area(Content)
        {
            repeater(MyGroup)
            {
                field("No. Faktur"; Rec."No. Faktur")
                {
                    ApplicationArea = all;
                }
                field(Deskripsi; Rec.Deskripsi)
                {
                    ApplicationArea = all;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = all;
                    trigger OnValidate()

                    begin
                        CurrPage.Update();
                    end;

                }
                field("Harga Satuan"; Rec."Harga Satuan")
                {
                    ApplicationArea = all;
                    trigger OnValidate()

                    begin
                        CurrPage.Update();
                    end;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = all;

                }
            }
        }
    }
}
