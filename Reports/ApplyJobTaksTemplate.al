report 64500 "Apply Job Task Template"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = where(Number=const(1));
            trigger OnPreDataItem();
            begin
                IF IncreaseTaskNo = 0 then 
                    Error(Text001);                
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
        ToJob: Record Job;
        Text001: TextConst ENU='Increase Job Task No. must contain a value',DEU='Aufgabennr. erhöhen um muss einen Wert enthalten';

        JobTemplate: Record "Job Task Template";
}