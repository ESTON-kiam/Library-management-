page 50115 Authors
{
    Caption = 'Authors';
    PageType = List;
    SourceTable = Author;
    CardPageId = Author;

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
