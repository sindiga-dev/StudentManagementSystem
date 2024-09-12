page 50147 AdmisionPeriodList
{
    ApplicationArea = All;
    Caption = 'AdmisionPeriodList';
    PageType = List;
    SourceTable = AdmissionPeriod;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description;Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(ApplicationDeadline;Rec.ApplicationDeadline)
                {
                    ToolTip = 'Specifies the value of the ApplicationDeadline field.', Comment = '%';
                }
                field(StartDate;Rec.StartDate)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                field(EndDate;Rec.EndDate)
                {
                    ToolTip = 'Specifies the value of the EndDate field.', Comment = '%';
                }


            
                  field(Current; Rec.Current)
                {
                    ToolTip = 'Specifies the value of the Current field.', Comment = '%';
                    Editable = false;

                }
                field(Closed; Rec.Closed)
                {
                    ToolTip = 'Specifies the value of the Closed field.', Comment = '%';
                    //make it non editable
                    Editable = false;
                }
              
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(New)
            {
                ApplicationArea = All;
                Caption = 'SetNew';
                Promoted = true;
                PromotedCategory = Process;
                Image = New;

                
                trigger OnAction()
                begin
                    Rec.SetNew();
                end;

                
            }
        }
    }

}
