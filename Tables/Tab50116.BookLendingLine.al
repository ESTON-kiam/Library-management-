table 50116 "Book Lending Line"
{
    Caption = 'Book Lending Line';
    DataClassification = ToBeClassified;
    LookupPageId = "Book Lending Lines";
    DrillDownPageId = "Book Lending Lines";
    fields
    {
        field(1; "Book No."; Code[50])
        {
            Caption = 'Book No.';
            TableRelation = Book;
            trigger OnValidate()
            var
                Books: Record Book;
            begin
                Books.Reset();
                if Books.Get("Book No.") then begin
                    "Book Title" := Books.Title;
                    ISNB := Books.ISNB;
                end;

            end;
        }
        field(2; "Book Title"; Text[200])
        {
            Caption = 'Book Title';
            Editable = false;
        }
        field(3; ISNB; Code[50])
        {
            Caption = 'ISNB';
            Editable = false;
        }
        field(4; "Lending No."; Code[50])
        {
            Caption = 'Lending No.';
        }
    }
    keys
    {
        key(PK; "Book No.", "Lending No.")
        {
            Clustered = true;
        }
    }
}
