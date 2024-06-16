page 50110 Book
{
    Caption = 'Book';
    PageType = Card;
    SourceTable = Book;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book ID field.';
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Title field.';
                }
                field(ISNB; Rec.ISNB)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ISNB field.';
                }
                field(Genre; Rec.Genre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Genre field.';
                }
                field(status; Rec.status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the status field.';
                }
                field("Publication Year"; Rec."Publication Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Publication Year field.';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = Basic, Suite;
                }
                field("Created At"; Rec."Created At")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = Basic, Suite;
                }

            }
            // part(Authors; "Book Authors")
            // {
            //     ApplicationArea = Basic, Suite;
            //     SubPageLink = "Book ID" = field("Book ID");
            // }
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
        if Rec.Status = Rec.Status::Available then
            IsAvailable := true else begin
            IsAvailable := false;
            if Rec.Status = Rec.Status::lost then
                IsLost := true else
                IsLost := false;
            if Rec.Status = Rec.Status::Borrowed then
                IsBorrowed := true else
                IsBorrowed := false;
        end;

    end;

    var
        IsAvailable, IsLost, IsBorrowed : Boolean;
}
