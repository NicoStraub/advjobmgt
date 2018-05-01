page 64502 "Job Task Template List"
{
    PageType = List;
    SourceTable = "Job Task Template";
    CaptionML = DEU='Projektaufgaben Vorlagen Liste',ENU='Job Task Template List';
    Editable = true;
    InsertAllowed = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                    
                }
                field(Description;Description)
                {
                    ApplicationArea = All;
                }
                field("Accounting Method";"Accounting Method")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            
        }
    }
    
    actions
    {
        area(processing)
        {
            action("Show Template Lines")
            {
                ApplicationArea = All;
                Image = InteractionTemplate;
                CaptionML = DEU='Vorlagenzeilen anzeigen',ENU='Show Template Lines';
    
                trigger OnAction();
                var JTTLines: Record 64504;
                begin
                    JTTLines.SetRange("Job Task Template",Rec.code);
                    Page.RunModal(Page::"Job Task Template",JTTLines);
                end;
            }
        }
    }
}