page 50166 SemesterRegistrationLineList
{
    ApplicationArea = All;
    Caption = 'SemesterRegistrationLineList';
    PageType = List;
    SourceTable = SemesterRegistrationLine;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(DocumentNo; Rec.DocumentNo)
                {
                    ToolTip = 'Specifies the value of the DocumentNo field.', Comment = '%';
                }
                field(LineNumber; Rec.LineNumber)
                {
                    ToolTip = 'Specifies the value of the LineNumber field.', Comment = '%';
                }
                field(Unit; Rec.Unit)
                {
                    ToolTip = 'Specifies the value of the Unit field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
    }
}
