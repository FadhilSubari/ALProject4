table 50007 "Penjualan Header2"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No. Faktur"; Integer)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Kode Armada"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Tanggal Transaksi"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Total Amount"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No. Faktur")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}