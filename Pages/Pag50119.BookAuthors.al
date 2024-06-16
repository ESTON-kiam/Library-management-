page 50119 "Book Authors"
{
    Caption = 'Book Authors';
    PageType = List;
    SourceTable = "Book Author";
    CardPageId = "Book Author";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Author ID"; Rec."Author ID")
                {
                    ApplicationArea = All;
                    TableRelation = Author;
                    trigger OnValidate();
                    var
                        Author: Record "Author";
                    begin
                        Author.Reset();
                        if Author.Get(Rec."Author ID") then begin
                            Rec."First Name" := Author."First Name";
                            Rec."Last Name" := Author."Last Name";
                            Rec."Phone No." := Author."Phone No.";
                            Rec.Email := Author.Email;
                        end;
                    end;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                    Editable = false;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                    Editable = false;
                }
                field("Email"; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                    Editable = false;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';
                    Editable = false;
                }
            }
        }
    }
}
