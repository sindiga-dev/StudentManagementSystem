table 50128 SemesterRegistration
{
    Caption = 'SemesterRegistration';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
        }
        field(2; StudentNo; Code[20])
        {
            Caption = 'StudentNo';
            TableRelation = Customer;
        }
        field(3; StudentName; Text[100])
        {
            Caption = 'StudentName';
        }
        field(4; Course; Code[20])
        {
            Caption = 'Course';
            TableRelation = Course;
        }
        field(5; year; Code[20])
        {
            Caption = 'year';
            TableRelation = CalenderYear;
        }
        field(6; Semester; Code[20])
        {
            Caption = 'Semester';
            TableRelation = Semester;
        }
        field(7; RegistrationDate; Date)
        {
            Caption = 'RegistrationDate';
        }
        field(8; Status; Enum "ABS Blob Access Tier")
        {
            Caption = 'Status';
            // TableRelation = Status;
        }
        field(9; NoSeries; Integer )
        {
            Caption = 'NoSeries';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}
