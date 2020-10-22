table 50003 MasterCs
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; IdMaster; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; MasterName; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; IdMaster)
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