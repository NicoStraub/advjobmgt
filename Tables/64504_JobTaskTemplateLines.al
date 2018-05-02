table 64504 "Job Task Template Line"
{
    DataCaptionFields = "Job Task Template",Description; 

    fields
    {
        field(1;"Job Task Template";Code[20])
        {
            NotBlank = true;
            TableRelation = "Job Task Template".Code;
        }
        field(2;"Line No.";Integer)
        {
            NotBlank = true;
        }
        field(3;"Description";Text[50])
        {
            CaptionML = DEU='Beschreibung',ENU='Description';
        }
        field(4;"Job Task Type";Option)
        {
            CaptionML = DEU='Projektaufgabenart',ENU='Job Task Typ';
            OptionMembers = "Posting","Heading","Total","Begin-Total","End-Total";
            OptionCaptionML = DEU='Konto,Überschrift,Summe,Von-Summe,Bis-Summe',ENU='Posting,Heading,Total,Begin-Total,End-Total';

        }
        field(5; "WIP-Total"; Option)
        {
            Caption = 'WIP-Total';
            OptionMembers = "","Total","Excluded";
            OptionCaptionML = DEU=' ,Summe,Ausschließlich',ENU=' ,Total,Excluded';
        }
        field(6; "Job Posting Group"; Code[20])
        {
            CaptionML = DEU='Projektbuchungsgruppe',ENU='Job Posting Group';
            TableRelation = "Job Posting Group";
        }
        field(7; "WIP Method"; Code[20])
        {
            CaptionML = DEU='WIP-Methode',ENU='WIP Method';
            TableRelation = "Job WIP Method".Code where(Valid=const(true));
            
        }
    }

    keys
    {
        key(PK;"Job Task Template","Line No.")
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