page 50156 StudentChargeList
{
    ApplicationArea = All;
    Caption = 'StudentChargeList';
    PageType = List;
    SourceTable = StudentCharge;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(No;Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field(Course;Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field(Year;Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(Semester;Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(DocumentDate;Rec.DocumentDate)
                {
                    ToolTip = 'Specifies the value of the DocumentDate field.', Comment = '%';
                }
                field(Status;Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                
            }
        }
    }
}
