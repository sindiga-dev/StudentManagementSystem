page 50150 CourseYearList
{
    ApplicationArea = All;
    Caption = 'CourseYearList';
    PageType = Card;
    SourceTable = CourseYear;

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
                field(Priority; Rec.Priority)
                {
                    ToolTip = 'Specifies the value of the Priority field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Year)
            {
                Caption = 'Year';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Action;
                RunObject = page "CourseYearList"; // Replace with the actual page ID/name
                RunPageLink = "Course" = field(Course);
            }
        }
    }
}
