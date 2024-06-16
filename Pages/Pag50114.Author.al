page 50114 Author
{
    Caption = 'Author';
    PageType = Card;
    SourceTable = Author;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Authors No."; Rec."Authors No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Authors No. field.';
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
            }
        }
    }
}
