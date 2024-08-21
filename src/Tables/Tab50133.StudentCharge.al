table 50133 StudentCharge
{
    Caption = 'StudentCharge';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
        }
        field(2; Course; Code[20])
        {
            Caption = 'Course';
            TableRelation = Course;
        }
        field(3; Year; Code[20])
        {
            Caption = 'Year';
            TableRelation = CalenderYear;
        }
        field(4; Semester; Code[20])
        {
            Caption = 'Semester';
            TableRelation = Semester;
        }
        field(5; DocumentDate; Date)
        {
            Caption = 'DocumentDate';
        }
        field(6; Status; Enum "ABS Blob Access Tier")
        {
            Caption = 'Status';
        }
        field(7; NoSeries; Code[20])
        {
            Caption = 'NoSeries';
        }
    }
    keys
    {
        key(PK; No)
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
                StudMgtSetup.TestField("StudentPaymentNos");
                NoSeriesMgt.InitSeries(StudMgtSetup."StudentPaymentNos", xRec."NoSeries", 0D, No, "NoSeries");
    
            end;
    
 
    end;
}
