table 50135 StudentPayment
{
    Caption = 'StudentPayment';
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
        field(3; Course; Code[20])
        {
            Caption = 'Course';
            TableRelation = Course;
        }
        field(4; Year; Code[20])
        {
            Caption = 'Year';
            TableRelation = CalenderYear;
        }
        field(5; Semester; Code[20])
        {
            Caption = 'Semester';
            TableRelation = Semester;
        }
        field(6; DocumentDate; Date)
        {
            Caption = 'DocumentDate';
        }
        field(7; CreatedBy; Code[20])
        {
            Caption = 'CreatedBy';
        }
        field(8; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(9; NoSeries; Code[20] )
        {
            Caption = 'NoSeries';
        }
    }
    keys
    {
        key(PK; No,StudentNo)
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
