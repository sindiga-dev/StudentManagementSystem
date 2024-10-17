page 50166 SemesterRegistrationLineList
{
    ApplicationArea = All;
    Caption = 'SemesterRegistrationLineList';
    PageType = ListPart;
    SourceTable = SemesterRegistrationLine;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
 
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
