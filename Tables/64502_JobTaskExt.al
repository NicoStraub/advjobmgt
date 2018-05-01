tableextension 64502 JobTaskExt extends "Job Task"
{
    fields
    {
        field(64500;"Accounting Method";Option)
        {
            CaptionML = DEU='Abrechnungsmodus',ENU='Accounting Method';
            OptionMembers = " ","Time and Material","Flat-Rate";
            OptionCaptionML = DEU=' ,Verbrauch,Pauschal',ENU=' ,Time and Material,Flat-Rate';
        }
    }
}