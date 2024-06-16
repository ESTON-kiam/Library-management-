page 50120 "Book Lending"
{
    Caption = 'Book Lending';
    PageType = Document;
    SourceTable = "Book Lending";
    PromotedActionCategories = 'New,Process,Report,Issue,Receive,Approval';
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Lending No"; Rec."Lending No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending No field.';
                }
                field(Descrption; Rec.Descrption)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Descrption field.';
                }

                field("Patron No."; Rec."Patron No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron No. field.';
                }
                field("Patron Name"; Rec."Patron Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Name field.';
                }
                field("Patron Email"; Rec."Patron Email")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Email field.';
                }
                field("Patron Phone NO."; Rec."Patron Phone NO.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Phone NO. field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Lending Date"; Rec."Lending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending Date field.';
                }
                field("Issued By"; Rec."Issued By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Issued By field.';
                }
            }
            part(BLL; "Book Lending Lines")
            {
                ApplicationArea = Basic, suite;
                SubPageLink = "Lending No." = field("Lending No");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Open)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = OpenWorksheet;
                Visible = (not IsPending) and (IsApproved);
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Rec.Status := Rec.Status::Open;
                    Rec.Modify();

                end;
            }
            action(Submit)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = SendApprovalRequest;
                Visible = IsOpen;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Rec.Status := Rec.Status::Pending;
                    Rec.Modify();
                    CurrPage.Update();

                end;
            }
            action("Re-Open")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = ReOpen;
                Visible = IsPending;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Rec.Status := Rec.Status::Open;
                    Rec.Modify();
                    CurrPage.Update();
                end;
            }
            action(Approve)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category6;
                Image = Approve;
                Visible = Rec.Status = Rec.Status::Pending;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Rec.Status := Rec.Status::Approved;
                    Rec.Modify();
                    CurrPage.Close();

                end;
            }
            action(Issue)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category4;
                Image = IssueFinanceCharge;
                Visible = IsApproved;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Rec.Status := Rec.Status::Issued;
                    Rec.Modify();
                    CurrPage.Update();
                    CurrPage.Close();
                end;
            }
            action(Post)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = PostApplication;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Rec.Status := Rec.Status::Posted;
                    Rec.Modify();

                end;
            }
            action(Close)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Closed;
                Visible = Rec.Status = Rec.Status::Approved;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Rec.Status := Rec.Status::Closed;
                    Rec.Modify();

                end;
            }

        }

    }
    trigger OnInit()
    var
        myInt: Integer;
    begin
        SetPageCtrls();
    end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        SetPageCtrls();
    end;

    trigger OnModifyRecord(): Boolean
    var
        myInt: Integer;
    begin
        SetPageCtrls();
    end;

    local procedure SetPageCtrls()
    var
        myInt: Integer;
    begin
        if Rec.Status = Rec.Status::Open then
            IsOpen := true else begin
            IsOpen := false;
            if Rec.Status = Rec.Status::Pending then
                IsPending := true else
                IsPending := false;
            if Rec.Status = Rec.Status::Approved then
                IsApproved := true else
                IsApproved := false;
        end;

    end;

    var
        BookLendingLine: Record "Book Lending Line";
        Books: Record Book;

        IsOpen, IsPending, IsApproved : Boolean;
}
