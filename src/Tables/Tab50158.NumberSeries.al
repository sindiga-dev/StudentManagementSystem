table 50158 NumberSeries
{
    Caption = 'Number Series';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3; StartingNo; Code[20])
        {
            Caption = 'Starting Number';
            DataClassification = ToBeClassified;
        }
        field(4; LastNo; Code[20])
        {
            Caption = 'Last Number';
            DataClassification = ToBeClassified;
        }
        field(5; Increment; Integer)
        {
            Caption = 'Increment';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}
