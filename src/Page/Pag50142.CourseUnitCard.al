page 50142 CourseUnitCard
{
    ApplicationArea = All;
    Caption = 'CourseUnitCard';
    PageType = Card;
    SourceTable = CourseUnit;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
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
