table 50125 CourseYear
{
    Caption = 'CourseYear';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Course; Code[20])
        {
            Caption = 'Course';
            TableRelation = Course;
        }
        field(2; Year; Code[20])
        {
            Caption = 'Year';
            TableRelation = "CalenderYear";

            trigger OnValidate()
            var
                Year: Record "CalenderYear";
            begin
                begin
                    if not Year.Get(Year) then
                        Error('Year does not exist');
                end;
            end;
            
        }
        field(3; Semester; Code[20])
        {
            Caption = 'Semester';
        }
        field(4; Priority; Integer)
        {
            Caption = 'Priority';
        }
    }
    keys
    {
        key(PK; Course,Year,Semester)
        {
            Clustered = true;
        }
    }
//  Limit  the number of years for the course registration, set the specific year limit for particular course, do research on filters and implement the logic

    trigger OnInsert()
    var
        CourseRec: Record "Course";
        CourseYear: Record "CourseYear";
        YearError: Label 'The maximum number of years for the course %1 is %2';
    begin
        CourseRec.Get(Course);
        CourseYear.Reset();
        CourseYear.SetRange(Course,Course);
        CourseYear.SetFilter(Year,'<>%1',Year);
        if CourseYear.Count + 1 > CourseRec."NoOfYears" then begin
            Error(YearError, Course, CourseRec."NoOfYears");
        end;
       
    end;    
  


}
