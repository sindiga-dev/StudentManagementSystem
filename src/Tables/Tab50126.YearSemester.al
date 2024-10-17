table 50126 YearSemester
{
    Caption = 'YearSemester';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Year; Code[20])
        {
            Caption = 'Year';
            TableRelation = "CalenderYear";
        }
        field(2; Semester; Code[20])
        {
            Caption = 'Semester';
            TableRelation = Semester;
        }
        field(3; Description; Text[20])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; Year, Semester)
        {
            Clustered = true;
        }
    }

    //implement a procedure to get current year and semester.

    procedure GetCurrentYearSemester(): Text[50]
    var
        CurrentYearSemester: Record "YearSemester";
    begin
        if CurrentYearSemester.Get(CurrentYearSemester.Year, CurrentYearSemester.Semester) then
            exit(CurrentYearSemester.Description)
        else
            exit('Year Semester not set');
    end;
}
