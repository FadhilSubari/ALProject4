pageextension 50002 "Item List" extends "Item List"
{
    layout
    {
        addafter(Description)
        {
            field("Berat Bersih"; Rec."Berat Bersih")
            {
                ApplicationArea = all;
            }
        }
    }
}