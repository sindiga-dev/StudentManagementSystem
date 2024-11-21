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
                LastRegistration: Record "SemesterRegistration";
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

                    // Determine the next semester and year
                    if LastRegistration.GetLastRegistration(StudentNo) then begin
                        "year" := GetNextYear(LastRegistration."year", LastRegistration.Semester);
                        "Semester" := GetNextSemester(LastRegistration.Semester);
                    end else begin
                        "year" := 'Year 1';
                        "Semester" := GetFirstSemester();
                    end;
                end;
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
        field(15; CurrentSemester; Code[20])
        {
            Caption = 'CurrentSemester';
        }
        field(16; CurrentYear; Code[20])
        {
            Caption = 'CurrentYear';
        }
    }

    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }
    
    // Implement Number series
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

    procedure GetLastRegistration(StudentNo: Code[20]): Boolean
    var
        LastRegistration: Record "SemesterRegistration";
    begin
        LastRegistration.Reset();
        LastRegistration.SetRange("StudentNo", StudentNo);
        if LastRegistration.FindLast() then begin
            Rec := LastRegistration;
            exit(true);
        end;
        exit(false);
    end;

    procedure GetNextYear(CurrentYear: Code[20]; CurrentSemester: Code[20]): Code[20]
    var
        NextYear: Code[20];
    begin
        // Logic to determine the next year based on the current year and semester
        // For example, if the current semester is the final semester of the year, increment the year
        if IsFinalSemester(CurrentSemester) then begin
            // NextYear := Format(1 + Evaluate(CurrentYear));
        end else begin
            NextYear := CurrentYear;
        end;
        exit(NextYear);
    end;

    procedure GetNextSemester(CurrentSemester: Code[20]): Code[20]
    var
        NextSemester: Code[20];
    begin
        // Logic to determine the next semester based on the current semester
        // For example, if the current semester is Sem 1, the next semester is Sem 2
        // If the current semester is the final semester, the next semester is the first semester of the next year
        if IsFinalSemester(CurrentSemester) then begin
            NextSemester := GetFirstSemester();
        end else begin
            NextSemester := GetFollowingSemester(CurrentSemester);
        end;
        exit(NextSemester);
    end;

    procedure IsFinalSemester(Semester: Code[20]): Boolean
    begin
        // Logic to determine if the given semester is the final semester of the year
        // This can be based on predefined rules or configurations
        exit(Semester = 'Sem 2'); // Example logic
    end;

    procedure GetFirstSemester(): Code[20]
    begin
        // Logic to get the first semester of the year
        exit('Sem 1'); // Example logic
    end;

    procedure GetFollowingSemester(CurrentSemester: Code[20]): Code[20]
    begin
        // Logic to get the following semester based on the current semester
        if CurrentSemester = 'Sem 1' then begin
            exit('Sem 2');
        end else begin
            exit('Sem 1');
        end;
    end;
}