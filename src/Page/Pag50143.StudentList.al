page 50143 StudentList
{
    ApplicationArea = All;
    Caption = 'StudentList';
    PageType = List;
    SourceTable = Customer;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(FirstName; Rec.FirstName)
                {
                    ToolTip = 'Specifies the value of the FirstName field.', Comment = '%';
                }
                field(OtherName; Rec.OtherName)
                {
                    ToolTip = 'Specifies the value of the OtherName field.', Comment = '%';
                }
                field(Surname; Rec.Surname)
                {
                    ToolTip = 'Specifies the value of the Surname field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the customer''s name.';
                }
                field(Birthdate; Rec.Birthdate)
                {
                    ToolTip = 'Specifies the value of the Birthdate field.', Comment = '%';
                }
                field(Course; Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field(AdmissionPeriod; Rec.AdmissionPeriod)
                {
                    ToolTip = 'Specifies the value of the AdmissionPeriod field.', Comment = '%';
                }
                field(CustomerType; Rec.CustomerType)
                {
                    ToolTip = 'Specifies the value of the CustomerType field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field(KCSEGrade; Rec.KCSEGrade)
                {
                    ToolTip = 'Specifies the value of the KCSEGrade field.', Comment = '%';
                }
                field(idNo; Rec.idNo)
                {
                    ToolTip = 'Specifies the value of the idNo field.', Comment = '%';
                }
                field(BirthCertificateNumber; Rec.BirthCertificateNumber)
                {
                    ToolTip = 'Specifies the value of the BirthCertificateNumber field.', Comment = '%';
                }
                field(AdmissionNo; Rec.AdmissionNo)
                {
                    ToolTip = 'Specifies the value of the AdmissionNo field.', Comment = '%';
                }
                field(MobileNo; Rec.MobileNo)
                {
                    ToolTip = 'Specifies the value of the MobileNo field.', Comment = '%';
                }
            }
        }
    }
}
