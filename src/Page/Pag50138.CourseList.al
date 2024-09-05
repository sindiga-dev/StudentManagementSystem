page 50137 CourseList
{
    ApplicationArea = All;
    Caption = 'CourseList';
    PageType = List;
    SourceTable = Course;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(MinimumGrade; Rec.MinimumGrade)
                { 
                    ToolTip = 'Specifies the value of the MinimumGrade field.', Comment = '%';
                }
                field(NoOfYears; Rec.NoOfYears)
                {
                    ToolTip = 'Specifies the value of the NoOfYears field.', Comment = '%';
                }
                
            }
        }
    }
}
