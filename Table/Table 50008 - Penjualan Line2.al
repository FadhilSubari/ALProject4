table 50008 "Penjualan Line2"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No. Faktur"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; Deskripsi; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(5; "Harga Satuan"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Validate(Quantity);
            end;
        }
        field(6; "Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Amount := Quantity * "Harga Satuan";
            end;
        }
    }

    keys
    {
        key(PK; "No. Faktur", "Line No.")
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