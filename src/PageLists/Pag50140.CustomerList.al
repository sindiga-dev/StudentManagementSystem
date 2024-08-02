page 50140 CustomerList
{
    ApplicationArea = All;
    Caption = 'CustomerList';
    PageType = List;
    SourceTable = Customer;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the customer''s address. This address will appear on all sales documents for the customer.';
                }
                field("Address 2"; Rec."Address 2")
                {
                    ToolTip = 'Specifies additional address information.';
                }
                field(AdmissionNo; Rec.AdmissionNo)
                {
                    ToolTip = 'Specifies the value of the AdmissionNo field.', Comment = '%';
                }
                field(AdmissionPeriod; Rec.AdmissionPeriod)
                {
                    ToolTip = 'Specifies the value of the AdmissionPeriod field.', Comment = '%';
                }
                field(Birthdate; Rec.Birthdate)
                {
                    ToolTip = 'Specifies the value of the Birthdate field.', Comment = '%';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the customer''s city.';
                }
                field(Contact; Rec.Contact)
                {
                    ToolTip = 'Specifies the name of the person you regularly contact when you do business with this customer.';
                }
                field(KCSEGrade; Rec.KCSEGrade)
                {
                    ToolTip = 'Specifies the value of the KCSEGrade field.', Comment = '%';
                }
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.', Comment = '%';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the customer''s email address.';
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field(Image; Rec.Image)
                {
                    ToolTip = 'Specifies the picture of the customer, for example, a logo.';
                }
            }
        }
    }
}
