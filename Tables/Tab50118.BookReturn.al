table 50118 "Book Return"
{
    Caption = 'Book Return';
    DataClassification = ToBeClassified;
    LookupPageId = "Book Returns";
    DrillDownPageId = "Book Returns";

    fields
    {
        field(1; "Patron Id"; Code[20])
        {
            Caption = 'Patron No';
            TableRelation = Patron;
            trigger OnValidate()
            var
                Patrons: Record Patron;
            begin
                Patrons.Reset();
                if Patrons.Get("Patron Id") then begin
                    "Patron Id" := Patrons."Patron Id";

                end;
            end;
        }
        field(2; "Book ID"; Code[20])
        {
            Caption = 'Book ID';
            TableRelation = Book;
            trigger OnValidate()
            var
                Books: Record Book;
            begin
                Books.Reset();
                if Books.Get("Book ID") then begin
                    "Book ID" := Books."Book ID";
                end;
            end;

        }

        field(3; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Returned,NotReturned;
            OptionCaption = 'Returned,NotReturned';
        }
        field(4; "Return Date"; DateTime)
        {
            Caption = 'Return Date';
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Patron ID", "Book ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        "Return Date" := CurrentDateTime;
    end;

    trigger OnDelete()
    var
        myInt: Integer;
    begin
        if Confirm('Are you sure you want to delete?') then
            exit;
    end;
}
