page 50141 addtwo
{
    ApplicationArea = All;
    Caption = 'addtwo';
    PageType = Card;
    
    layout
    {
        area(Processing)
        {
            action(Addition)
            {
                Application = All;
                trigger OnAction()
                begin
                    MyCode.run();
                end;

            }

        }
    }
    var
        // MyCode: Codeunit "MyNewwwCodeUnit";
}
