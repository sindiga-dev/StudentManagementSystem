page 50153 StudentUnitList
{
    ApplicationArea = All;
    Caption = 'StudentUnitList';
    PageType = List;
    SourceTable = StudentUnit;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(StudentNo;Rec.StudentNo)
                {
                    ToolTip = 'Specifies the value of the StudentNo field.', Comment = '%';
                }
                field(Course;Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field(Year;Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(Semester;Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(Unit;Rec.Unit)
                {
                    ToolTip = 'Specifies the value of the Unit field.', Comment = '%';
                }
                field(Description;Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }

            }
        }
    }
}
