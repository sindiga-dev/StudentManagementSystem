page 50162 SemesterRegistrationList
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
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field(StudentNo; Rec.StudentNo)
                {
                    ToolTip = 'Specifies the value of the StudentNo field.', Comment = '%';
                }
                field(StudentName; Rec.StudentName)
                {
                    ToolTip = 'Specifies the value of the StudentName field.', Comment = '%';
                }
                field(Course; Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field(year; Rec.year)
                {
                    ToolTip = 'Specifies the value of the year field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(RegistrationDate; Rec.RegistrationDate)
                {
                    ToolTip = 'Specifies the value of the RegistrationDate field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field(NoSeries; Rec.NoSeries)
                {
                    ToolTip = 'Specifies the value of the NoSeries field.', Comment = '%';
                }
                field(Posted; Rec.Posted)
                {
                    ToolTip = 'Specifies the value of the Posted field.', Comment = '%';
                }
                field(PostedBy; Rec.PostedBy)
                {
                    ToolTip = 'Specifies the value of the PostedBy field.', Comment = '%';
                }
                field(DatePosted; Rec.DatePosted)
                {
                    ToolTip = 'Specifies the value of the DatePosted field.', Comment = '%';
                }
                field(AcademicYear; Rec.AcademicYear)
                {
                    ToolTip = 'Specifies the value of the AcademicYear field.', Comment = '%';
                }
                field(Period; Rec.AdmissionPeriod)
                {
                    ToolTip = 'Specifies the value of the Period field.', Comment = '%';
                }
                
            }
        }
    }
     actions
    {
        area(Processing)
        {
            action(Post)
            {
                ApplicationArea = All;
                Caption = 'GetCurrentAdmissionPeriod';
                Promoted = true;
                PromotedCategory = Process;
                Image =  Check;

                

             
                

            }
        }
    }
}
