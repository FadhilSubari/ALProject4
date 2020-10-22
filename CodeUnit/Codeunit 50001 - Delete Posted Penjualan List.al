codeunit 50001 "Delete Posted Penjualan List"
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    procedure DeletePostedPenjualanList()
    var
        PostedPenjualan: Record "Posted Penjualan Header";
    begin
        PostedPenjualan.DeleteAll();
    end;
}