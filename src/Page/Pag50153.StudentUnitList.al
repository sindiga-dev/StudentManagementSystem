page 50153 StudentUnitList
{
    ApplicationArea = All;
    Caption = 'StudentUnitList';
    PageType = List;
    SourceTable = StudentUnit;
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
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(StudentNo; Rec.StudentNo)
                {
                    ToolTip = 'Specifies the value of the StudentNo field.', Comment = '%';
                }
            }
        }
    }
}
