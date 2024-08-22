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
                field(AcademicYear; Rec.AcademicYear)
                {
                    ToolTip = 'Specifies the value of the AcademicYear field.', Comment = '%';
                }
                field(ApplicationDeadline; Rec.ApplicationDeadline)
                {
                    ToolTip = 'Specifies the value of the ApplicationDeadline field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(EndDate; Rec.EndDate)
                {
                    ToolTip = 'Specifies the value of the EndDate field.', Comment = '%';
                }
                field(StartDate; Rec.StartDate)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
            }
        }
    }
}
