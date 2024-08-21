page 50145 SemesterRegistrationList
{
    ApplicationArea = All;
    Caption = 'SemesterRegistrationList';
    PageType = List;
    SourceTable = SemesterRegistration;
    UsageCategory = Lists;
    
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
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field(NoSeries; Rec.NoSeries)
                {
                    ToolTip = 'Specifies the value of the NoSeries field.', Comment = '%';
                }
                field(RegistrationDate; Rec.RegistrationDate)
                {
                    ToolTip = 'Specifies the value of the RegistrationDate field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field(StudentName; Rec.StudentName)
                {
                    ToolTip = 'Specifies the value of the StudentName field.', Comment = '%';
                }
                field(StudentNo; Rec.StudentNo)
                {
                    ToolTip = 'Specifies the value of the StudentNo field.', Comment = '%';
                }
            }
        }
    }
}
