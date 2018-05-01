table 64503 "Job Task Template"
{

    fields
    {
        field(1;Code;Code[20])
        {
            NotBlank = true;
        }
        field(2;Description;Text[50])
        {
            CaptionML = DEU='Beschreibung',ENU='Description';
        }
        field(3;"Accounting Method";Option)
        {
            OptionMembers = "Time and Material","Flat-Rate";
            OptionCaptionML=ENU='Time and Material,Falt-Rate',DEU='nach Verbrauch,pauschal';
        }
    }

    keys
    {
        key(PK;Code)
        {
            Clustered = true;
        }
    }
    
    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}