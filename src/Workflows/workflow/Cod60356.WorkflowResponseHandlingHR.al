codeunit 50168 "WorkflowResponse"
{
 
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnAddWorkFlowResponsePredecessorsToLibrary', '', false, false)]
    local procedure OnAddWorkFlowResponsePredecessorsToLibrary(ResponseFunctionName: Code[128])
    var
        WorkFlowResponse: Codeunit "Workflow Response Handling";
        WorkflowEventHandling: Codeunit "Workflow Event Handling ";
 
    begin
        case ResponseFunctionName of
            WorkFlowResponse.SetStatusToPendingApprovalCode:
                begin
                    //semester registration
                    WorkFlowResponse.AddResponsePredecessor(WorkFlowResponse.SetStatusToPendingApprovalCode, WorkflowEventHandling.RunWorkflowOnSendSemesterRegistrationForApprovalCode());
 
                end;
            WorkFlowResponse.CreateApprovalRequestsCode:
                begin
                    //Semester Registration
                    WorkFlowResponse.AddResponsePredecessor(WorkFlowResponse.CreateApprovalRequestsCode, WorkflowEventHandling.RunWorkflowOnSendSemesterRegistrationForApprovalCode());
 
                end;
            WorkFlowResponse.SendApprovalRequestForApprovalCode:
                begin
                    //Semester Registration
                    WorkFlowResponse.AddResponsePredecessor(WorkFlowResponse.SendApprovalRequestForApprovalCode, WorkflowEventHandling.RunWorkflowOnSendSemesterRegistrationForApprovalCode());
 
                end;
            WorkFlowResponse.OpenDocumentCode:
                begin
                    //Semester Registration
                    WorkFlowResponse.AddResponsePredecessor(WorkFlowResponse.OpendocumentCode, WorkflowEventHandling.RunWorkflowOnCancelSemesterRegistrationApprovalRequestCode());
 
                end;
            WorkFlowResponse.CancelAllApprovalRequestsCode:
                begin
                    //Semester Registration
                    WorkFlowResponse.AddResponsePredecessor(WorkFlowResponse.CancelAllApprovalRequestsCode, WorkflowEventHandling.RunWorkflowOnCancelSemesterRegistrationApprovalRequestCode());
 
                end;
        end;
 
    end;
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnReleaseDocument', '', false, false)]
    local procedure OnReleaseDocument(RecRef: RecordRef; var Handled: Boolean)
    var
        WorkflowResponses: Codeunit "Workflow Response";
        SemesterReg: Record "SemesterRegistration";
 
    begin
        case RecRef.NUMBER OF
 
            Database::"SemesterRegistration":
                begin
                    RecRef.setTable(SemesterReg);
                    SemesterReg.Validate(Status, SemesterReg.Status::Approved);
                    SemesterReg.Modify(true);
                    Handled := true;
                end;
        end;
    end;
 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnOpenDocument', '', false, false)]
    local procedure OnOpenDocument(RecRef: RecordRef; var Handled: Boolean)
    var
        VarVariant: Variant;
        WorkflowResponses: Codeunit "Workflow Response";
    begin
        VarVariant := RecRef;
        case RecRef.Number of
            Database::"SemesterRegistration":
                begin
                    Handled := true;
                end;
 
        end;
    end;
}
