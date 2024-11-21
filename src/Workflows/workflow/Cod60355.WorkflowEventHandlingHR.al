codeunit 50103 "Workflow Event Handling "
{
    var
        WorkFlowManagement: Codeunit "Workflow Management";
        WorkflowEvent: Codeunit "Workflow Event Handling";
        SemesterRegistrationSendApprovalTxt: Label 'Approval of  Semester Registration document is requested';
        SemesterRegistrationCancelApprovalTxt: Label 'An approval request for  Semester Registration canceled';
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventsToLibrary', '', false, false)]
    local procedure OnAddWorkflowEventsToLibrary()
    begin
        //Semester Registration
        WorkflowEvent.AddEventToLibrary(RunWorkflowOnSendSemesterRegistrationForApprovalCode, Database::"SemesterRegistration", SemesterRegistrationSendApprovalTxt, 0, FALSE);
        WorkflowEvent.AddEventToLibrary(RunWorkflowOnCancelSemesterRegistrationApprovalRequestCode, Database::"SemesterRegistration", SemesterRegistrationCancelApprovalTxt, 0, FALSE);
 
    end;
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowTableRelationsToLibrary', '', false, false)]
    local procedure AddWorkflowWebhookTableRelationsToLibrary()
    var
        ApprovalEntry: Record "Approval Entry";
        WorkflowSetup: Codeunit "Workflow Setup";
    begin
        WorkflowSetup.InsertTableRelation(Database::"SemesterRegistration", 0, DATABASE::"Approval Entry", ApprovalEntry.FieldNo("Record ID to Approve"));
 
    end;
 
    //Semester Registration
    procedure RunWorkflowOnSendSemesterRegistrationForApprovalCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkflowOnSendSemesterRegistrationForApproval'));
    end;
 
    procedure RunWorkflowOnCancelSemesterRegistrationApprovalRequestCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkflowOnCancelSemesterRegistrationApprovalRequest'));
    end;
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Management", 'OnSendSemesterRegForApproval', '', false, false)]
    procedure RunWorkflowOnSendSemesterRegistrationForApproval(VAR SemReg: Record "SemesterRegistration")
    var
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendSemesterRegistrationForApprovalCode, SemReg);
    end;
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Management", 'OnCancelSemesterRegApprovalRequest', '', false, false)]
    procedure RunWorkflowOnCancelEmployeeApprovalRequest(VAR SemReg: Record "SemesterRegistration")
    var
        SemRegRec: Record "SemesterRegistration";
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelSemesterRegistrationApprovalRequestCode(), SemReg);
        SemRegRec.Reset();
        SemRegRec.SetRange("No", SemReg."No");
        if SemRegRec.FindFirst() then begin
            SemRegRec."Status" := SemRegRec."Status"::Open;
            SemRegRec.Modify();
        end;
    end;
 
}