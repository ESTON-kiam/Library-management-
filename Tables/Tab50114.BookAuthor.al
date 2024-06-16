table 50114 "Book Author"
{
    Caption = 'Book Author';
    DataClassification = ToBeClassified;
    LookupPageId = "Book Authors";
    DrillDownPageId = "Book Authors";

    fields
    {
        field(1; "Author ID"; Code[20])
        {
            Caption = 'Author ID';
            TableRelation = Author;
            trigger OnValidate()
            var
                Patrons: Record Author;
            begin
                Patrons.Reset();
                if Patrons.Get("Author ID", "First Name", "Last Name", Email) then begin
                    "Author ID" := Patrons."Authors No.";
                    "First Name" := Patrons."First Name";
                    "Last Name" := Patrons."Last Name";
                    "Email" := Patrons.Email;
                end;
            end;
        }
        field(2; "First Name"; Text[100])
        {
            Caption = 'First Name';
            TableRelation = Author."First Name";
        }
        field(3; "Last Name"; Text[100])
        {
            Caption = 'Last Name';
            TableRelation = Author."Last Name";
        }

        field(4; Email; Text[40])
        {
            Caption = 'Email';
            TableRelation = Author.Email;
        }
        field(5; "Phone No."; Integer)
        {
            Caption = 'Phone No.';
        }
        field(6; "Book ID"; Code[50])
        {
            Caption = 'Book ID';
            TableRelation = Book."Book ID";
        }
    }
    keys
    {
        key(PK; "Author ID", "Book ID")
        {
            Clustered = true;
        }
    }
}
