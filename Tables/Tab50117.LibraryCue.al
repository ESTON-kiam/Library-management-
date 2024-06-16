table 50117 "Library Cue"
{
    Caption = 'Library Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
        }
        field(2; Books; Integer)
        {
            Caption = 'Books';
            FieldClass = FlowField;
            CalcFormula = count(Book);
        }
        field(3; Patron; Integer)
        {
            Caption = 'Patrons';
            FieldClass = FlowField;
            CalcFormula = count(Patron);
        }
        field(4; Lending; Integer)
        {
            Caption = 'Lending';
            FieldClass = FlowField;
            CalcFormula = count("Book Lending");
        }
        field(5; "Book Authors"; Integer)
        {
            Caption = 'Book Author';
            FieldClass = FlowField;
            CalcFormula = count("Book Author");
        }
        field(6; Author; Integer)
        {
            Caption = 'Author';
            FieldClass = FlowField;
            CalcFormula = count(Author);
        }
        field(7; "Available Books"; Integer)
        {
            Caption = 'Available Books';
            FieldClass = FlowField;
            CalcFormula = count(Book where(status = const(Available)));
        }
        field(8; "Book Returns"; Integer)
        {
            Caption = 'Books Returned';
            FieldClass = FlowField;
            CalcFormula = count("Book Return" where(status = const(Returned)));
        }
        field(9; " Books Lended"; Integer)
        {
            Caption = 'Lending No.';
            FieldClass = FlowField;
            CalcFormula = count("Book Lending Line");
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}
