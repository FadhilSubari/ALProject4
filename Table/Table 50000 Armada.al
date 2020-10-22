table 50000 Armada
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Kode; code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Nama; text[100])
        {

        }
        field(3; Bobot; Decimal)
        {

        }
        field(4; Satuan; Code[10])
        {

        }
    }

    keys
    {
        key(PK; Kode)
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
        fieldgroup(DropDown; Kode, Nama)
        {
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