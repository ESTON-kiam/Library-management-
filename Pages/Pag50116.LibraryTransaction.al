page 50116 "Library Transaction"
{
    Caption = 'Library Transaction';
    PageType = Card;
    SourceTable = "Library Transaction";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Transaction ID"; Rec."Transaction ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction ID field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Patron Id"; Rec."Patron Id")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron Id field.';
                }
                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee No. field.';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Date field.';
                }
                field("Transaction Type "; Rec."Transaction Type ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Type  field.';
                }
            }
        }
    }
}
