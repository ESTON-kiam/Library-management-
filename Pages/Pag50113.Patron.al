page 50113 Patrons
{
    Caption = 'Patron';
    PageType = List;
    SourceTable = Patron;
    CardPageId = patron;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Patron Id"; Rec."Patron Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Id field.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Last  Name"; Rec."Last  Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last  Name field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field("Date Of Birth"; Rec."Date Of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Of Birth field.';
                }

            }
        }
    }
}
