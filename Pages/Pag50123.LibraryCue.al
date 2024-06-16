page 50123 "Library Cue"
{
    Caption = 'Library Cue';
    PageType = CardPart;
    SourceTable = "Library Cue";

    layout
    {
        area(content)
        {
            cuegroup("Library Stastistics")
            {
                Caption = 'General';
                field(Books; Rec.Books)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Books field.', Comment = '%';
                }
                field(Patron; Rec.Patron)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Patron field.', Comment = '%';
                }
                field(Lending; Rec.Lending)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending field.', Comment = '%';
                }
                field("Book Authors"; Rec."Book Authors")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book Author field.', Comment = '%';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author field.', Comment = '%';
                }
                field("Available Books"; Rec."Available Books")
                {
                    ApplicationArea = all;
                    ToolTip = 'specifies the value of the Author field.', comment = '%';
                }
                field("Book Returns"; Rec."Book Returns")
                {
                    ApplicationArea = All;

                }
                field(" Books Lended"; Rec." Books Lended")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;

}
