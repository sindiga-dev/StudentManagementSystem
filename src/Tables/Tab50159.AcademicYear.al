table 50159 AcademicYear
{
    Caption = 'AcademicYear';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; Current; Boolean)
        {
            Caption = 'Current';
            Editable = false;
        }
        field(4; "Closed"; Boolean)
        {
            Caption = 'Closed';
            Editable = false;
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
