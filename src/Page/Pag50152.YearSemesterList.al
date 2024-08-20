page 50152 YearSemesterList
{
    ApplicationArea = All;
    Caption = 'YearSemesterList';
    PageType = List;
    SourceTable = YearSemester;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
            }
        }
    }
}
