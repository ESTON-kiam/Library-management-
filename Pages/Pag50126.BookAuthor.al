page 50126 "Book Author"
{
    Caption = 'Book Author';
    PageType = Card;
    SourceTable = "Book Author";


    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Author ID"; Rec."Author ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author ID field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';
                }
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book ID field.', Comment = '%';
                }
            }
        }
    }
}
