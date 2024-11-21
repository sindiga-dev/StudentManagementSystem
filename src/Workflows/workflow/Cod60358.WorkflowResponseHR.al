codeunit 50167 "Workflow Response"
{
    var
        HRSetup: Record "Human Resources Setup";
        HRMgt: Codeunit "Workflow Management";
 
    //Semester Registration
    procedure SemRegRelease(var SemReg: Record "SemesterRegistration")
    var
        SemRegRec: Record "SemesterRegistration";
    begin
        SemRegRec.Reset();
        SemRegRec.SetRange("No", SemReg."No");
        if SemRegRec.FindFirst() then begin
            SemRegRec."Status" := SemRegRec."Status"::Approved;
            // SemRegRec.ActivateSemester Registration(SemRegRec);
            SemRegRec.Modify();
        end;
    end;
 
 
}
 