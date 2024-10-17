page 50146 "SemesterRegistrationCard"
{
    ApplicationArea = All;
    Caption = 'SemesterRegistrationCard';
    PageType = Card;
    SourceTable = "SemesterRegistration";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                }
                field(StudentNo; Rec."StudentNo")
                {
                    ToolTip = 'Specifies the value of the StudentNo field.';
                }
                field(StudentName; Rec."StudentName")
                {
                    ToolTip = 'Specifies the value of the StudentName field.';
                    Editable = false;
                }
                field(Course; Rec.Course)
                {
                    ToolTip = 'Specifies the value of the Course field.';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.';
                }
                field(RegistrationDate; Rec."RegistrationDate")
                {
                    ToolTip = 'Specifies the value of the RegistrationDate field.';
                }
                field(Period; Rec."AdmissionPeriod")
                {
                    ToolTip = 'Specifies the value of the Period field.';
                    Editable = false;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field(Posted; Rec.Posted)
                {
                    ToolTip = 'Specifies the value of the Posted field.';
                }
                field(PostedBy; Rec."PostedBy")
                {
                    ToolTip = 'Specifies the value of the PostedBy field.';
                }
                field(DatePosted; Rec."DatePosted")
                {
                    ToolTip = 'Specifies the value of the DatePosted field.';
                }
                field(AcademicYear; Rec."AcademicYear")
                {
                    ToolTip = 'Specifies the value of the AcademicYear field.';
                    Editable = false;
                }
            }
            part(Lines; "SemesterRegistrationLineList")
            {
                ApplicationArea = All;
                Caption = 'Lines';
                SubPageLink = "DocumentNo"=FIELD("No");
                
            }
        }
    }
 actions
    {
        area(Processing)
 
        {
            group(Approvals)
            {
                action("SendApprovalRequest")
                {
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    ToolTip = 'Executes the  Send Approval Request action';
                    ApplicationArea = All;
                    //visible = (Rec.Status = Rec.Status::Pending);
                    Caption = ' Send Approval Request';
 
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Approvals Mgmt.";
                    begin
                        //ApprovalMgt.SendApprovalRequestFromRecord(Rec.RecordId);
                        message('The SendApprovalRequest was  Successful');
 
 
                    end;
                }
                action("Cancel Approval Request")
                {
                    Image = CancelApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    ToolTip = 'Executes the Cancel Approval Request action';
                    ApplicationArea = All;
                    //visible = (Rec.Status = Rec.Status::Pending);
                    Caption = 'Cancel Approval Request';
 
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalMgt.CanCancelApprovalForRecord(rec.RecordId);
                        Message('cancle of the approval was Successful');
 
                    end;
                }
                group(Approval)
                {
                    action("Approve")
                    {
                        Image = Approval;
                        Promoted = true;
                        PromotedCategory = Category4;
                        PromotedIsBig = true;
                        ToolTip = 'Executes the Approval action';
                        ApplicationArea = All;
                        //visible = (Rec.Status = Rec.Status::Pending);
                        Caption = 'Approval';
 
                        trigger OnAction()
                        var
                            ApprovalMgt: Codeunit "Approvals Mgmt.";
                        begin
                            ApprovalMgt.ApproveRecordApprovalRequest(Rec.RecordId);
                            Message('The Approval Record was Successful.');
                        end;
                    }
                    action("Reject")
                    {
                        Image = Reject;
                        Promoted = true;
                        PromotedCategory = Category4;
                        PromotedIsBig = true;
                        ToolTip = 'Executes Reject action';
                        ApplicationArea = All;
                        //visible = (Rec.Status = Rec.Status::Pending);
                        Caption = 'Reject';
 
                        trigger OnAction();
                        var
                            ApprovalMgt: Codeunit "Approvals Mgmt.";
                        begin
                            ApprovalMgt.RejectRecordApprovalRequest(Rec.RecordID);
                            Message('Approval request rejected successfully.');
                        end;
                    }
                }
                action("Delegate")
                {
                    Image = Delegate;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    ToolTip = 'Executes Delagate action';
                    ApplicationArea = All;
                    //visible = (Rec.Status = Rec.Status::Pending);
                    Caption = 'Delagate';
 
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalMgt.DelegateRecordApprovalRequest(Rec.RecordId);
                        Message('Approval request delegated successfully.');
                        // Refresh the page and perform other UI updates as needed
                        CurrPage.UPDATE;
                    end;
                }
                action("Comment")
                {
                    Image = Comment;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    ToolTip = 'Executes the Comment';
                    ApplicationArea = All;
                    //visible = (Rec.Status = Rec.Status::Pending);
                    Caption = 'Comment';
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalMgt.GetApprovalComment(Rec);
                        Message('comment was posted successfully');
                    end;
                }
 
                action("ViewApprovals")
                {
                    Image = Approvals;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    ToolTip = 'Executes the  View Approval';
                    ApplicationArea = All;
                    // visible = (Rec.Status = Rec.Status::Pending);
                    Caption = 'ViewApprovalRequest';
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Approvals Mgmt.";
                    begin
                        // ApprovalMgt.ApproveApprovalRequests(Rec.RecordId);// check on the view of the viewApprovals.
                        Message('Viewing of the Approvals');
                    end;
                }
            }
            group(Function)
            {
                action("Submit")
                {
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ToolTip = 'Executes the  Submit';
                    ApplicationArea = All;

                    Caption = 'SubmitRequest';
 
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Approvals Mgmt.";
                    begin
                        //ApprovalMgt.SubmitRecordForApproval(Rec.RecordId);
                        Message('The Submit was Successful');
                    end;
                }
                action("Re-open")
                {
                    Image = Cancel;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ToolTip = 'Executes the  Re-open Approval';
                    ApplicationArea = All;
                    // visible = (Rec.Status = Rec.Status::Pending);
                    Caption = 'Reopen Request';
 
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Approvals Mgmt.";
                    begin
                        //ApprovalMgt.reopenRecord
 
                    end;
                }
            }
        }
 
    }
}


  

    

