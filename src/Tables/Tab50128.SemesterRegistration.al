table 50128 SemesterRegistration
{
    Caption = 'SemesterRegistration';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';


            
        }
        field(2; StudentNo; Code[20])
        {
            Caption = 'StudentNo';
            TableRelation = Customer;
        }
        field(3; StudentName; Text[100])
        {
            Caption = 'StudentName';
        }
        field(4; Course; Code[20])
        {
            Caption = 'Course';
            TableRelation = Course;
        }
        field(5; year; Code[20])
        {
            Caption = 'year';
            TableRelation = CalenderYear;
        }
        field(6; Semester; Code[20])
        {
            Caption = 'Semester';
            TableRelation = Semester;
        }
        field(7; RegistrationDate; Date)
        {
            Caption = 'RegistrationDate';
        }
        field(8; Status; Enum "ABS Blob Access Tier")
        {
            Caption = 'Status';
            // TableRelation = Status;
        }
        field(9; NoSeries; Code[20] )
        {
            Caption = 'NoSeries';
        }
        field(10; Posted; Boolean)
        {
            Caption = 'Posted';
        }
        field(11;PostedBy; Code[20])
        {
            Caption = 'PostedBy';
        }
    
        field(12; AcademicYear; Code[20])
        {
            Caption = 'AcademicYear';
            TableRelation = AcademicYear;
        }

        field(13; Period ; Code[20])
        {
            Caption = 'Period';
            TableRelation = AdmissionPeriod;
        }
        field(14; DatePosted; Date)
        {
            Caption = 'DatePosted';
        }
        field(15; Current; Boolean)
        {
            Caption = 'Current';
        }
        field(16; Closed; Boolean)
        {
            Caption = 'Closed';
        }
    }
    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }
     trigger OnInsert()
        var
            StudMgtSetup: Record "StudentManagementSetup";
            NoseriesMgt: Codeunit "NoSeriesManagement";
        begin
            if "No" = '' then begin
                StudMgtSetup.Get();
                StudMgtSetup.TestField("SemesterRegNos");
                NoSeriesMgt.InitSeries(StudMgtSetup."SemesterRegNos", xRec."NoSeries", 0D, "No", "NoSeries");
    
            end;
    
 
    end;

    // Implement a procedure to get the current admission period in the semester registration where the period will automatically pick the current one.
    procedure GetCurrentAdmissionPeriod(var AdmissionPeriod: Record "AdmissionPeriod")
    begin
        AdmissionPeriod.Reset();
        AdmissionPeriod.SetRange("Current", true);
        AdmissionPeriod.SetFilter("code", '<>%1', No);

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
