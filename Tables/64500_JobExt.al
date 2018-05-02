tableextension 64500 Jobext extends Job
{
    fields
    {
           field(64500;"Accounting Method";Option)
        {
            CaptionML=DEU='Abrechnungsmethode',ENU='Accounting Method';
            OptionMembers = "Time and Material","Flat-Rate";
            OptionCaptionML=ENU='Time and Material,Falt-Rate',DEU='nach Verbrauch,pauschal';
            trigger OnValidate();
            begin
                IF "Accounting Method" = "Accounting Method"::"Flat-Rate" then
                    "Recurring Invoicing" := true;
            end;
        }
        field(64501;"Recurring Invoicing";Boolean)
        {
            InitValue = false;
            CaptionML=DEU='Wiederkehrende Abrechnung',ENU='Recurring Invoicing';
        }
        field(64502;"Invoicing Cycle";Code[20])
        {
            CaptionML=DEU='Abrechnungszyklus',ENU='Invoicing Cycle';
            trigger OnValidate();
            var 
                InvCycle: Record "Invoicing Cycle";

            begin
                if ("Invoicing Cycle" <> '') AND ("Begin Invoicing" <> 0D) then begin
                    InvCycle.Get("Invoicing Cycle");
                    "Date Next Invoice" := CalcDate(InvCycle."Date Formula Invoicing","Begin Invoicing");    
                end; 
            end;
        }
        field(64503;"Begin Invoicing";Date)
        {
            CaptionML = DEU='Beginn Abrechnung',ENU='Begin Invoicing';
            trigger OnValidate();
            begin
                
            end;
        }
        field(64504;"Date Last Invoice";Date)
        {
            CaptionML = DEU='Datum letzte Abrechnung',ENU='Date last Invoice';
        }
        field(64505;"Date Next Invoice";Date)
        {
            CaptionML= DEU='Datum nächste Abrechnung',ENU='Date next Invoice';
        }
        field(64506;"Duration Contract";DateFormula)
        {
            CaptionML=DEU='Laufzeit Vertrag',ENU='Duration Contract';
        }
    }
    
    var
        myInt : Integer;
}