codeunit 50169 MyNewwwCodeUnit
{
    trigger OnRun()
    begin
        num1 := 10;
        num2 := 20;
        add(num1, num2);
    end;
    procedure add(num1: Integer; num2: Integer)
    var
        tot:Integer;
        begin
            tot := num1 + num2;
            message('Total sum of two numbers is %1', tot);
        end;

    var
        num1: Integer;
        num2: Integer;

}