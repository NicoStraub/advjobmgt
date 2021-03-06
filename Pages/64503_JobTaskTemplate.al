page 64503 "Job Task Template"
{
    PageType = Card;
    SourceTable = "Job Task Template Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    
    layout
    {
        area(content)
        {
            group("Job Task Template")
            {
                field("Job Taks Template"; "Job Task Template")
                {
                    ApplicationArea = All;
                    
                }
            }
            repeater(Lines)
            {
                field(Description;Description)
                {
                    
                }
                field("WIP Method";"WIP Method")
                {

                }
            }
        }

    }
    
    actions
    {
        area(processing)
        {
            action("Apply Template")
            {
                ApplicationArea = All;
    
                trigger OnAction()
                begin
                    Report.RunModal(64500);
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}