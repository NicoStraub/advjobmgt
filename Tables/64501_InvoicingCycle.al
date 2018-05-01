table 64501 "Invoicing Cycle"
{
    LookupPageId=64501;
    DrillDownPageId=64501;
    DataCaptionFields=Code,Description;

    fields
    {
        field(1;Code;Code[20])
        {
            NotBlank = true;
            CaptionML = DEU='Code',ENU='Code';
        }
        field(2;Description;Text[50])
        {
            CaptionML = DEU='Beschreibung',ENU='Description';
        }
        field(3;"Date Formula Invoicing";DateFormula)
        {
            CaptionML = DEU='Datumsformel Abrechnung', ENU='Date Formula Invoicing';
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