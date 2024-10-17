tableextension 50106 student extends Customer
{
    fields
    {
        field(50106; FirstName; Text[30])
        {
            Caption = 'FirstName';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                UpdateFullName();
            end;
        }
        field(50107; OtherName; Text[30])
        {
            Caption = 'OtherName';
            DataClassification = ToBeClassified;

            // trigger OnValidate()
            // begin
            //     UpdateFullName();
            // end;  
        }
        field(50108; Surname; Text[30])
        {
            Caption = 'Surname';
            DataClassification = ToBeClassified;

            trigger OnValidate()
                begin
                    "FullName":="FirstName" +' '+ "OtherName" + ' ' + "Surname" 
                
                end;
      
        }
        field(50109; FullName; Text[100]) // Adjusted length to accommodate the full name
        {
            Caption = 'FullName';
            DataClassification = ToBeClassified;
        

        }
        field(50110; Birthdate; Date)
        {
            Caption = 'Birthdate';
            DataClassification = ToBeClassified;
        }
        field(50111; Course; Code[20])
        {
            Caption = 'Course';
            DataClassification = ToBeClassified;
            TableRelation = "Course";
        }
        field(50112; AdmissionPeriod; Code[20])
        {
            Caption = 'AdmissionPeriod';
            DataClassification = ToBeClassified;
            TableRelation = "AdmissionPeriod";
        }
        field(50113; CustomerType; Enum "StudentTableEnum")
        {
            Caption = 'CustomerType';
            DataClassification = ToBeClassified;
        }
        field(50114; Gender; Enum "GenderEnum")
        {
            Caption = 'Gender';
            DataClassification = ToBeClassified;
        }
        field(50115; KCSEGrade; Code[20])
        {
            Caption = 'KCSEGrade';
            DataClassification = ToBeClassified;
        }
        field(50116; idNo; Code[20])
        {
            Caption = 'idNo';
            DataClassification = ToBeClassified;
        }
        field(50117; BirthCertificateNumber; Code[20])
        {
            Caption = 'BirthCertificateNumber';
            DataClassification = ToBeClassified;
        }
        field(50118; AdmissionNo; Code[20])
        {
            Caption = 'AdmissionNo';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50119; MobileNo; Code[20])
        {
            Caption = 'MobileNo';
            DataClassification = ToBeClassified;
        }
    }

    procedure UpdateFullName()
    begin
        FullName := FirstName + ' ' + OtherName;
    end;

    //implement a procedure to get current year and semester.

    procedure GetCurrentYearAndSemester(var Year: Integer; var Semester: Integer)

    begin
        Year := 2021;
        Semester := 1;
    end;

    
}
