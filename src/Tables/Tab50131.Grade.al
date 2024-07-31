table 50131 Grade
{
    Caption = 'Grade';
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
        field(3; MaxPoints; Integer)
        {
            Caption = 'MaxPoints';
        }
        field(4; MinPoints; Integer)
        {
            Caption = 'MinPoints';
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
