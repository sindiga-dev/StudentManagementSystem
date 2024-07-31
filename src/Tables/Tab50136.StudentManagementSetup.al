table 50136 StudentManagementSetup
{
    Caption = 'StudentManagementSetup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; PrimaryKey; Code[10])
        {
            Caption = 'PrimaryKey';
        }
        field(2; SemesterRegNos; Code[20])
        {
            Caption = 'SemesterRegNos';
        }
        field(3; StudentChargeNos; Code[20])
        {
            Caption = 'StudentChargeNos';
        }
        field(4; StudentPaymentNos; Code[20])
        {
            Caption = 'StudentPaymentNos';
        }
    }
    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }
}
