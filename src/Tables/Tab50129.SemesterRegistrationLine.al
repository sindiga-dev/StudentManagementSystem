table 50129 SemesterRegistrationLine
{
    Caption = 'SemesterRegistrationLine';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; DocumentNo; Code[20])
        {
            Caption = 'DocumentNo';
        }
        field(2; LineNumber; Integer)
        {
            Caption = 'LineNumber';
        }
        field(3; Unit; Code[20])
        {
            Caption = 'Unit';
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; DocumentNo, LineNumber)
        {
            Clustered = true;
        }
    }
}
