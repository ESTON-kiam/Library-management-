table 50110 Book
{
    Caption = 'Book';
    DataClassification = ToBeClassified;
    LookupPageId = Books;
    DrillDownPageId = Books;

    fields
    {
        field(1; "Book ID"; Code[20])
        {
            Caption = 'Book ID';
            TableRelation = "No. Series";
            Editable = false;
        }
        field(2; Title; Text[50])
        {
            Caption = 'Title';
        }
        field(333; "No Series"; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(3; ISNB; Code[50])
        {
            Caption = 'ISNB';
        }
        field(4; Genre; Code[5])
        {
            Caption = 'Genre';
        }
        field(5; status; Option)
        {
            OptionMembers = Available,lost,Borrowed;
            // Editable = false;
        }
        field(6; "Publication Year"; date)
        {

        }
        field(7; Author; code[50])
        {
            TableRelation = Author;
        }
        field(8; "Created At"; Date)
        {
            Editable = false;
        }
        field(9; "Created By"; Code[40])
        {
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }
    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        "Created At" := WorkDate();
        "Created By" := UserId;
        if Rec."Book ID" = '' then begin
            noseries.InitSeries('BOOK', xRec."Book ID", 0D, "Book ID", "No Series");
        end;
    end;

    trigger OnDelete()
    var
        myInt: Integer;

    begin
        if Confirm('Are you sure you want to delete?') then
            exit;
    end;
}
