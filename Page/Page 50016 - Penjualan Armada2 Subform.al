page 50016 "Penjualan Armada2 Subform"
{
    PageType = ListPart;
    AutoSplitKey = true;
    DelayedInsert = true;
    SourceTable = "Penjualan Line2";
    Caption = 'Lines';

    layout
    {
        area(Content)
        {
            repeater(Lines2)
            {
                field("Deskripsi"; Rec."Deskripsi")
                {
                    ApplicationArea = All;
                }
                field("Quantity"; Rec."Quantity")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Harga Satuan"; Rec."Harga Satuan")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}