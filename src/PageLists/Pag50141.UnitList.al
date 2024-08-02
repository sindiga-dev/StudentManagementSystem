page 50141 UnitList
{
    ApplicationArea = All;
    Caption = 'UnitList';
    PageType = List;
    SourceTable = CourseUnit;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Course; Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(NoOfHours; Rec.NoOfHours)
                {
                    ToolTip = 'Specifies the value of the NoOfHours field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
            }
        }
    }
}
