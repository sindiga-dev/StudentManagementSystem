page 50158 "Student Management Setup"
{
    ApplicationArea = All;
    Caption = 'Student Management Setup';
    PageType = Card;
    SourceTable = StudentManagementSetup;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                
                field(SemesterRegNos; Rec.SemesterRegNos)
                {
                    ToolTip = 'Specifies the value of the SemesterRegNos field.', Comment = '%';
                }
                field(StudentChargeNos; Rec.StudentChargeNos)
                {
                    ToolTip = 'Specifies the value of the StudentChargeNos field.', Comment = '%';
                }
                field(StudentPaymentNos; Rec.StudentPaymentNos)
                {
                    ToolTip = 'Specifies the value of the StudentPaymentNos field.', Comment = '%';
                }
            }
        }
    }
}
