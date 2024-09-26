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
                trigger OnValidate()
                var
                    Period: Record "AdmissionPeriod";
                    AcademicYears: Record "AcademicYear";
                    StudentRec: Record "Customer";

                begin
                    if StudentRec.Get(StudentNo) then begin
                     "StudentName" := StudentRec.Name;
                     Course := StudentRec.Course;
                     // Retrieve the current academic year using the GetCurrent() method
                    AcademicYears := AcademicYears.GetCurrent();
                    if AcademicYears.Code <> '' then begin
                        "AcademicYear" := AcademicYears.Code; 
                    end else begin
                        Error('No current academic year found.');
                    end;
                     
                     "AdmissionPeriod" := Period.GetCurrentAdmissionPeriod("AcademicYear");

                     end
                      
                end;
          
            
            
        }
        field(3; StudentName; Text[100])
        {
            Caption = 'StudentName';
            TableRelation = Customer;
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
        field(8; Status; Enum "StatusEnum")
        {
            Caption = 'Status';
            
        }
        field(9; NoSeries; Code[20])
        {
            Caption = 'NoSeries';
        }
        field(10; Posted; Boolean)
        {
            Caption = 'Posted';
        }
        field(11; PostedBy; Code[20])
        {
            Caption = 'PostedBy';
        }
        field(12; AcademicYear; Code[20])
        {
            Caption = 'AcademicYear';
            TableRelation = AcademicYear;
        }
        field(13; AdmissionPeriod; Code[20])
        {
            Caption = 'Period';
            TableRelation = AdmissionPeriod;
        }
        field(14; DatePosted; Date)
        {
            Caption = 'DatePosted';
        }
    }

    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }
    
    //Implement Number series
     trigger OnInsert()
    var
        StudMgtSetup: Record "StudentManagementSetup";
        NoSeriesMgt: Codeunit "NoSeriesManagement";
        AdmissionPeriodRec: Record "AdmissionPeriod";
    begin
        if "No" = '' then begin
            StudMgtSetup.Get();
            StudMgtSetup.TestField("SemesterRegNos");
            NoSeriesMgt.InitSeries(StudMgtSetup."SemesterRegNos", xRec."NoSeries", 0D, "No", "NoSeries");
        end;
    end;

     procedure GetCurrentAdmissionPeriod(var Year: Code[20]): Code[20]
    var
        AdmissionPeriod: Record "AdmissionPeriod";
 
    begin
        AdmissionPeriod.Reset();
        AdmissionPeriod.SetRange(Current, true);
        if AdmissionPeriod.FindFirst() then begin
            Exit(AdmissionPeriod.Code);
        end;
    end;




}
