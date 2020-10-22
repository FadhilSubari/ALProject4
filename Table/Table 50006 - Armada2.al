table 50006 Armada2
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Kode; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Nama; text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Bobot; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Satuan; Code[10])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Kode)
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