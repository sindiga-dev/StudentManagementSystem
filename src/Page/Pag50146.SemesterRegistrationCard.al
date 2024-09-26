page 50146 SemesterRegistration
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
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                }
                field(StudentNo; Rec.StudentNo)
                {
                    ToolTip = 'Specifies the value of the StudentNo field.';
                }
                field(StudentName; Rec.StudentName)
                {
                    ToolTip = 'Specifies the value of the StudentName field.';
                    Editable = false;
                }
                field(Course; Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.';
                }
                field(year; Rec.year)
                {
                    ToolTip = 'Specifies the value of the year field.';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.';
                }
                field(RegistrationDate; Rec.RegistrationDate)
                {
                    ToolTip = 'Specifies the value of the RegistrationDate field.';
                }
                field(Period; Rec.AdmissionPeriod)
                {
                    ToolTip = 'Specifies the value of the Period field.';
                    Editable = false;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                }
         
                field(Posted; Rec.Posted)
                {
                    ToolTip = 'Specifies the value of the Posted field.';
                }
                field(PostedBy; Rec.PostedBy)
                {
                    ToolTip = 'Specifies the value of the PostedBy field.';
                }
                field(DatePosted; Rec.DatePosted)
                {
                    ToolTip = 'Specifies the value of the DatePosted field.';
                }
                field(AcademicYear; Rec.AcademicYear)
                {
                    ToolTip = 'Specifies the value of the AcademicYear field.';
                    Editable = false;
                }

            }
        }
    }
    

    
}
