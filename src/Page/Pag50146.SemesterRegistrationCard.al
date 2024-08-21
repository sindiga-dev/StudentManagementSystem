page 50146 SemesterRegistrationCard
{
    ApplicationArea = All;
    Caption = 'SemesterRegistrationCard';
    PageType = Card;
    SourceTable = SemesterRegistration;
    UsageCategory = Administration;
    
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
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
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
