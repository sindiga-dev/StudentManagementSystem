table 50132 CourseActivity
{
    Caption = 'CourseActivity';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Course; Code[20])
        {
            Caption = 'Course';
            TableRelation = Course;
        }
        field(2; Year; Code[20])
        {
            Caption = 'Year';
            TableRelation = CalenderYear;
        }
        field(3; Semester; Code[20])
        {
            Caption = 'Semester';
            TableRelation = Semester;
        }
        field(4; Activity; Code[20])
        {
            Caption = 'Activity';
            TableRelation = Activity;
        }
        field(5; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
        }
    }
    keys
    {
        key(PK; Course, Year, Semester, Activity)
        {
            Clustered = true;
        }
    }
}
