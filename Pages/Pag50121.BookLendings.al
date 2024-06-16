page 50121 "Book Lendings"
{
    Caption = 'Book Lendings';
    PageType = List;
    SourceTable = "Book Lending";
    CardPageId = "Book Lending";

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
        }
    }
}
