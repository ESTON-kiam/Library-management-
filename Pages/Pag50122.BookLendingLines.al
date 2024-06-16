page 50122 "Book Lending Lines"
{
    Caption = 'Book Lending Lines';
    PageType = ListPart;
    SourceTable = "Book Lending Line";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Book No."; Rec."Book No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book No. field.';
                }
                field("Book Title"; Rec."Book Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book Title field.';
                }
                field(ISNB; Rec.ISNB)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ISNB field.';
                }
                field("Lending No."; Rec."Lending No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending No. field.';
                }
            }
        }
    }
}
