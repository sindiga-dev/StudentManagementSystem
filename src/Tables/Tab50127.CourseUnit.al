table 50127 CourseUnit
{
    Caption = 'CourseUnit';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Course; Code[20])
        {
            Caption = 'Course';
        }
        field(2; year; Code[20])
        {
            Caption = 'year';
        }
        field(3; Semester; Code[20])
        {
            Caption = 'Semester';
        }
        field(4; Unit; Code[20])
        {
            Caption = 'Unit';
        }
        field(5; Description; Text[20])
        {
            Caption = 'Description';
        }
        field(6; NoOfHours; Integer)
        {
            Caption = 'NoOfHours';
        }
    }
    keys
    {
        key(PK; Course,year,Semester,Unit)
        {
            Clustered = true;
        }
    }
}
