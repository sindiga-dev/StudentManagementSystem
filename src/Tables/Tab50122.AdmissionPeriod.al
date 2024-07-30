table 50122 AdmissionPeriod
{
    Caption = 'AdmissionPeriod';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "code"; Code[20])
        {
            Caption = 'code';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; ApplicationDeadline; Code[20])
        {
            Caption = 'ApplicationDeadline';
        }
        field(4; StartDate; Date)
        {
            Caption = 'StartDate';
        }
        field(5; EndDate; Date)
        {
            Caption = 'EndDate';
        }
        field(6; AcademicYear; Code[20])
        {
            Caption = 'AcademicYear';
        }
    }
    keys
    {
        key(PK; "code")
        {
            Clustered = true;
        }
    }
}
