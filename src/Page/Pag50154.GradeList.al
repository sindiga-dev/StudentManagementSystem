page 50154 GradeList
{
    ApplicationArea = All;
    Caption = 'GradeList';
    PageType = List;
    SourceTable = Grade;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(MaxPoints; Rec.MaxPoints)
                {
                    ToolTip = 'Specifies the value of the MaxPoints field.', Comment = '%';
                }
                field(MinPoints; Rec.MinPoints)
                {
                    ToolTip = 'Specifies the value of the MinPoints field.', Comment = '%';
                }
            }
        }
    }
}
