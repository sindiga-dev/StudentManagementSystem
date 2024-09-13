page 50157 StudentChargeLineList
{
    ApplicationArea = All;
    Caption = 'StudentChargeLineList';
    PageType = List;
    SourceTable = StudentChargeLine;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(DocumentNo;Rec.DocumentNo)
                {
                    ToolTip = 'Specifies the value of the DocumentNo field.', Comment = '%';
                }
                field(StudentNo;Rec.StudentNo)
                {
                    ToolTip = 'Specifies the value of the StudentNo field.', Comment = '%';
                }
                field(ActivityCode;Rec.ActivityCode)
                {
                    ToolTip = 'Specifies the value of the ActivityCode field.', Comment = '%';
                }
                field(Description;Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Amount ";Rec."Amount ")
                {
                    ToolTip = 'Specifies the value of the Amount  field.', Comment = '%';
                }

            }
        }
    }
}
