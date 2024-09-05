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
            TableRelation = "CalenderYear";
        }
        field(7; "Current"; Boolean)
        {
            Caption = 'Current';
        }
        field(8; Closed; Boolean)
        {
            Caption = 'Closed';
        }
    }
    keys
    {
        key(PK; "code")
        {
            Clustered = true;
        }
    }

    procedure SetNew()
    var
        AdmissionPeriod: Record "AdmissionPeriod";
        // Text000: Label 'AdmissionPeriod %1 not found.';
    begin
        AdmissionPeriod.Reset();
        AdmissionPeriod.SetRange("Current", true);
        AdmissionPeriod.SetFilter(code, '<>%1', code);

        if AdmissionPeriod.FindFirst() then
        begin
            AdmissionPeriod.Current := false;
            AdmissionPeriod.Closed := true;
            AdmissionPeriod.Modify();
        end;
        Closed := false;
        Current := true;
    end;
}

