table 50130 StudentUnit
{
    Caption = 'StudentUnit';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; StudentNo; Code[20])
        {
            Caption = 'StudentNo';
        }
        field(2; Course; Code[20])
        {
            Caption = 'Course';
            TableRelation = Course;
        }
        field(3; Year; Code[20])
        {
            Caption = 'Year';
            TableRelation = CalenderYear;
        }
        field(4; Semester; Code[20])
        {
            Caption = 'Semester';
            TableRelation = Semester;
        }
        field(5; Unit; Date)
        {
            Caption = 'Unit';
        }
        field(6; Description; Text[100])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; StudentNo, Course,Year,Semester)
        {
            Clustered = true;
        }
    }
}
