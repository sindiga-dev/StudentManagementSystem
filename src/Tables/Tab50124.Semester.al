table 50124 Semester
{
    Caption = 'Semester';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[20])
        {
            Caption = 'Description';
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
