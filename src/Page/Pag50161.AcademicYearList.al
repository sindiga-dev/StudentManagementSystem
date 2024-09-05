page 50161 AcademicYearList
{
    ApplicationArea = All;
    Caption = 'AcademicYearList';
    PageType = List;
    SourceTable = AcademicYear;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(Current; Rec.Current)
                {
                    ToolTip = 'Specifies the value of the Current field.', Comment = '%';
                    Editable = false;
                }
                field(Closed; Rec.Closed)
                {
                    ToolTip = 'Specifies the value of the Closed field.', Comment = '%';
                    Editable = false;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(SetCurrent)
            {
                ApplicationArea = All;
                Caption = 'SetCurrent';
                Image =  Check;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.SetCurrent();
                end;

            }
        
        }
    }
}
