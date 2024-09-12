page 50144 StudentCard
{
    ApplicationArea = All;
    Caption = 'StudentCard';
    PageType = Card;
    SourceTable = Customer;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                    Editable = false;
                }
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
                field(FullName; Rec.FullName)
                {
                    ToolTip = 'Specifies the value of the FullName field.', Comment = '%';
                    Editable = false;
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
                    //validate the mobile number make sure it is 10 to 15 digits long and contains symbols and numbers only
                    trigger OnValidate()

                    begin
                        if (STRLEN(Rec.MobileNo) < 10) then
                            ERROR('Mobile number must be at least 10 digits long');
                        if (STRLEN(Rec.MobileNo) > 15) then
                            ERROR('Mobile number must be at most 15 digits long');
                    end;

                    
         
                }
            }
        }
    }
}
