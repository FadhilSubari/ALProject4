table 50004 "Posted Penjualan Header"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No. Faktur"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Kode Armada"; Code[20])
        {
            TableRelation = Armada;
        }
        field(3; "Tanggal Transaksi"; date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Total Amount"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Penjualan Line".Amount where("No. Faktur" = field("No. Faktur")));
            Editable = false;
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