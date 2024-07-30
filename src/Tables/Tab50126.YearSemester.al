table 50126 YearSemester
{
    Caption = 'YearSemester';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Year; Code[20])
        {
            Caption = 'Year';
        }
        field(2; Semester; Code[20])
        {
            Caption = 'Semester';
        }
        field(3; Description; Text[20])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; Year)
        {
            Clustered = true;
        }
    }
}
