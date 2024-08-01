table 50134 StudentChargeLine
{
    Caption = 'StudentChargeLine';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; DocumentNo; Code[20])
        {
            Caption = 'DocumentNo';
            TableRelation = StudentCharge;
        }
        field(2; StudentNo; Code[20])
        {
            Caption = 'StudentNo';
            TableRelation = Customer;
        }
        field(3; ActivityCode; Code[20])
        {
            Caption = 'ActivityCode';
            TableRelation = Activity;
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(5; "Amount "; Decimal)
        {
            Caption = 'Amount ';
        }
    }
    keys
    {
        key(PK; DocumentNo, StudentNo, ActivityCode)
        {
            Clustered = true;
        }
    }
}
