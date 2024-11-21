codeunit 50101 "Approvals Management"
{
    var
        WorkFlowManagement: Codeunit "Workflow Management";
        WorkflowEventHandling: Codeunit "Workflow Event Handling ";
        NoWorkFlowEnabledErr: TextConst ENU = 'No Approval WorkFlow for this record type is enabled';
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnBeforeApprovalEntryInsert', '', false, false)]
    local procedure OnBeforeApprovalEntryInsert(ApprovalEntry: Record "Approval Entry"; ApprovalEntryArgument: Record "Approval Entry")
    var
        StepInstance: Record "Workflow Step Instance";
        WorkflowStepArgument: Record "Workflow Step Argument";
    begin
        if StepInstance.Get(ApprovalEntry."Workflow Step Instance ID") then;
        if WorkflowStepArgument.Get(StepInstance.Argument) then;
        ApprovalEntry."Document No." := WorkflowStepArgument."Workflow User Group Code";
    end;
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnApproveApprovalRequest', '', false, false)]
    local procedure OnApproveApprovalRequest(VAR ApprovalEntry: Record "Approval Entry")
    var
        WorkflowResponses: Codeunit "Workflow Response";
        NextApprovalEntry: Record "Approval Entry";
    begin
        IF MinimumApprovalsReached(ApprovalEntry) THEN BEGIN
            NextApprovalEntry.SETCURRENTKEY("Table ID", "Document Type", "Document No.");
            NextApprovalEntry.SETRANGE("Table ID", ApprovalEntry."Table ID");
            NextApprovalEntry.SETRANGE("Document Type", ApprovalEntry."Document Type");
            NextApprovalEntry.SETRANGE("Document No.", ApprovalEntry."Document No.");
            NextApprovalEntry.SETFILTER(Status, '%1|%2', NextApprovalEntry.Status::Created, NextApprovalEntry.Status::Open);
            NextApprovalEntry.SETRANGE("Sequence No.", ApprovalEntry."Sequence No.");
            IF NextApprovalEntry.FindFirst() THEN
                REPEAT
                    NextApprovalEntry.VALIDATE(Status, NextApprovalEntry.Status::Approved);
                    NextApprovalEntry.MODIFY(TRUE);
                UNTIL NextApprovalEntry.NEXT = 0;
        END;
    end;
 
    local procedure MinimumApprovalsReached(ApprovalEntry: Record "Approval Entry"): Boolean
    var
        LastApprovalEntry: Record "Approval Entry";
        NoOfApprovals: Integer;
        MinimumApprovers: Integer;
    begin
        LastApprovalEntry.RESET;
        LastApprovalEntry.SETCURRENTKEY("Table ID", "Document Type", "Document No.");
        LastApprovalEntry.SETRANGE("Table ID", ApprovalEntry."Table ID");
        LastApprovalEntry.SETRANGE("Document Type", ApprovalEntry."Document Type");
        LastApprovalEntry.SETRANGE("Document No.", ApprovalEntry."Document No.");
        LastApprovalEntry.SETRANGE("Sequence No.", ApprovalEntry."Sequence No.");
        LastApprovalEntry.SETFILTER(Status, '=%1', LastApprovalEntry.Status::Approved);
        NoOfApprovals := LastApprovalEntry.COUNT;
 
    end;
 
    //semester registration
    procedure CheckSemesterRegApprovalsWorkflowEnabled(var SemReg: Record "SemesterRegistration"): Boolean
 
    begin
        if not IsSemesterRegApprovalsWorkflowEnabled(SemReg) then
            Error(NoWorkflowEnabledErr);
        exit(true);
    end;
 
    procedure IsSemesterRegApprovalsWorkflowEnabled(var SemReg: Record "SemesterRegistration"): Boolean
 
    begin
        exit(WorkflowManagement.CanExecuteWorkflow(SemReg, WorkflowEventHandling.RunWorkflowOnSendSemesterRegistrationForApprovalCode));
    end;
 
    [IntegrationEvent(false, false)]
 
    procedure OnSendSemesterRegForApproval(var SemReg: Record "SemesterRegistration")
 
    begin
    end;
 
    [IntegrationEvent(false, false)]
 
    procedure OnCancelSemesterRegApprovalRequest(var SemReg: Record "SemesterRegistration")
 
    begin
    end;
 
 
 
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnSetStatusToPendingApproval', '', false, false)]
    local procedure OnSetStatusToPendingApproval(RecRef: RecordRef; var Variant: Variant; var IsHandled: Boolean)
    var
        SemRge: Record "SemesterRegistration";
        StudCharg: Record "StudentCharge";
        StudP: Record "StudentPayment";
 
    begin
        case RecRef.Number of
            Database::"SemesterRegistration":
                begin
                    RecRef.SetTable(SemRge);
                    SemRge.Validate("Status", SemRge."Status"::"Pending");
                    SemRge.Modify(true);
                    Variant := SemRge;
                    IsHandled := true;
                end;
 
 
        end;
    end;
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnRejectApprovalRequest', '', false, false)]
    local procedure RejectApproval(var ApprovalEntry: Record "Approval Entry")
    var
        RecRef: RecordRef;
        SemReg: Record "SemesterRegistration";
        StudCharg: Record "StudentCharge";
        StudP: Record "StudentPayment";
    begin
        RecRef.Get(ApprovalEntry."Record ID to Approve");
        case
            RecRef.Number of
            Database::"SemesterRegistration":
                begin
                    RecRef.SetTable(SemReg);
                    SemReg."Status" := SemReg."Status"::Open;
                    SemReg.Modify(true);
                end;
            Database::"StudentCharge":
                begin
                    RecRef.SetTable(StudCharg);
                    // StudCharg.Status := SemReg.Status::Open;
                    StudCharg.Modify(true);
                end;
 
        end;
    end;
}