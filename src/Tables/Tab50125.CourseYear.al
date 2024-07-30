table 50125 CourseYear
{
    Caption = 'CourseYear';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Course; Code[20])
        {
            Caption = 'Course';
        }
        field(2; Year; Code[20])
        {
            Caption = 'Year';
        }
        field(3; Semester; Code[20])
        {
            Caption = 'Semester';
        }
        field(4; Priority; Integer)
        {
            Caption = 'Priority';
        }
    }
    keys
    {
        key(PK; Course,Year,Semester)
        {
            Clustered = true;
        }
    }
}
