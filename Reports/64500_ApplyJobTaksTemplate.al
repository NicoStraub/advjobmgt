report 64500 "Apply Job Task Template"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = Sorting(Number) where(Number=const(1));
            trigger OnPreDataItem();
            begin
                IF IncreaseTaskNo = 0 then 
                    Error(Text001);                
                If ToJob = ' ' then
                    Error(Text002);
            end;
            trigger OnAfterGetRecord();
            begin
                
            end;
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(General)
                {
                    CaptionML = DEU='Allgemein',ENU='General';

                    field(IncreaseTaskNo; IncreaseTaskNo)
                    {
                        ApplicationArea = All;
                        CaptionML = DEU='Aufgabennr. erhöhen um:',ENU='Increase Task No. by:';
                    }
                    field(ToJob;ToJob)
                    {
                        ApplicationArea = All;
                        CaptionML = DEU='Vorlage zu Projekt hinzufügen',ENU='Apply Template to Job';
                        trigger OnLookup(Text : Text) : Boolean;
                        var 
                            JobL: Record Job;
                        begin
                            If page.RunModal(Page::"Job List",JobL) = "Action"::LookupOK then
                                ToJob := JobL."No.";
                        end;
                    }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                        ApplicationArea = All;
    
                    
                }
            }
        }
    }
    var 
        IncreaseTaskNo: Integer;
        ToJob: Code[20];
        JobTemplate: Record "Job Task Template";

        Text001: TextConst ENU='Increase Job Task No. must contain a value',DEU='Aufgabennr. erhöhen um muss einen Wert enthalten';
        Text002: TextConst ENU='You have to specifiy the job where the template is applied to',DEU='Sie müssen das Projekt angeben, bei dem die Vorlage hinzugefügt werden soll.';

}