page 64501 "List"
{
    PageType = List;
    SourceTable = "Invoicing Cycle";
    
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code;Code)
                {
                    
                }
                field(Description;Description)
                {

                }
                field("Date Formula Invoicing";"Date Formula Invoicing")
                {

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
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}