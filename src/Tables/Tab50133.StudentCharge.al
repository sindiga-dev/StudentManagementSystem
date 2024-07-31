table 50133 StudentCharge
{
    Caption = 'StudentCharge';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
        }
        field(2; Course; Code[20])
        {
            Caption = 'Course';
        }
        field(3; Year; Code[20])
        {
            Caption = 'Year';
        }
        field(4; Semester; Code[20])
        {
            Caption = 'Semester';
        }
        field(5; DocumentDate; Date)
        {
            Caption = 'DocumentDate';
        }
        field(6; Status; Enum "ABS Blob Access Tier")
        {
            Caption = 'Status';
        }
        field(7; NoSeries; Code[20])
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
