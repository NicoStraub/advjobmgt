pageextension 64500 JobExt extends "Job Card"
{
    layout
    {
        addafter(General)
        {
            group("Invoicing Details")
            {
                CaptionML=DEU='Abrechnungsdetails',ENU='Invoicing Details';
                field("Accounting Method";"Accounting Method")
                {
                    Importance = Promoted;
                }
                field("Recurring Invoicing";"Recurring Invoicing")
                {
                    trigger OnValidate();
                    begin
                        If Not "Recurring Invoicing" then begin
                            "Invoicing Cycle" := '';
                            "Accounting Method" := "Accounting Method"::"Flat-Rate";
                            CurrPage.Update;
                        end;
                    end;
                }
                field("Invoicing Cycle";"Invoicing Cycle")
                {
                    Enabled = "Recurring Invoicing";
                    TableRelation = "Invoicing Cycle";
                }
                field("Begin Invoicing";"Begin Invoicing")
                {
                    Enabled = "Recurring Invoicing";
                }
                field("Date Last Invoice";"Date Last Invoice")
                {
                    Enabled = "Recurring Invoicing";
                    Editable = false;
                }
                field("Date Next Invoice";"Date Next Invoice")
                {
                    Enabled = "Recurring Invoicing";
                    Editable = false;
                }
                field("Duration Contract";"Duration Contract")
                {
                    Enabled = "Recurring Invoicing";
                }              
            }
        }
    }
    actions
    {
        addlast("&Job")
        {
            action("ShowTemplates")
            {
                CaptionML = DEU='Vorlagen anzeigen',ENU='Show Templates';
                ApplicationArea = "#All";
                Promoted = true;
                PromotedIsBig = true;
                Image = Template;
                trigger OnAction();
                begin
                    Page.RunModal(Page::"Job Task Template List")    
                end;
            }
        }
    }
}