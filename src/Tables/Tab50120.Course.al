table 50120 Course
{
    Caption = 'Course';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[20])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3; MinimumGrade; Code[20])
        {
            Caption = 'MinimumGrade';
            TableRelation = "Grade";
        }
        field(4; NoOfYears; Integer)
        {
            Caption = 'NoOfYears';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
