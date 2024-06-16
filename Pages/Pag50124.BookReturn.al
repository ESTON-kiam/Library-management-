page 50124 "Book Return"
{
    Caption = 'Book Return';
    PageType = Card;
    SourceTable = "Book Return";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Patron No"; Rec."Patron Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron ID field.', Comment = '%';
                }
                field("Book No."; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book No. field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';

                }
                field("Return Date"; Rec."Return Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Return Date field.', Comment = '%';
                }
            }
        }
    }
}
