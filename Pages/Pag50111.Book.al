page 50111 Books
{
    Caption = 'Book';
    PageType = List;
    SourceTable = Book;
    CardPageId = Book;

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
            }
        }
    }
}
