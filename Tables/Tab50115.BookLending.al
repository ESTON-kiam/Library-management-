table 50115 "Book Lending"
{
    Caption = 'Book Lending';
    DataClassification = ToBeClassified;
    LookupPageId = "Book Lendings";
    DrillDownPageId = "Book Lendings";
    fields
    {
        field(1; "Lending No"; Code[50])
        {
            Caption = 'Lending No';
            Editable = false;
        }
        field(2; Descrption; Text[100])
        {
            Caption = 'Descrption';
        }
        field(333; "No Series"; Code[20])
        {
            TableRelation = "No. Series";
        }

        field(3; "Patron No."; Code[40])
        {
            Caption = 'Patron No.';
            TableRelation = Patron."Patron Id";
            trigger OnValidate()
            var
                Patrons: Record Patron;
            begin
                Patrons.Reset();
                if Patrons.Get("Patron No.") then begin
                    "Patron Name" := Patrons."First Name" + ' ' + Patrons."Last  Name";
                    "Patron Email" := Patrons.Email;
                    "Patron Phone NO." := Patrons."Phone No."
                end;


            end;
        }
        field(4; "Patron Name"; Text[100])
        {
            Caption = 'Patron Name';
            Editable = false;
        }
        field(5; "Patron Email"; Text[100])
        {
            Caption = 'Patron Email';
            Editable = false;
        }
        field(6; "Patron Phone NO."; Integer)
        {
            Caption = 'Patron Phone NO.';
            Editable = false;
        }
        field(7; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Open,Pending,Approved,Issued,Posted,Closed;
            Editable = false;
        }
        field(8; "Lending Date"; DateTime)
        {
            Caption = 'Lending Date';
            Editable = false;
        }
        field(9; "Issued By"; Code[50])
        {
            Caption = 'Issued By';
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Lending No", "Patron No.")
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
        "Lending Date" := CurrentDateTime;
        "Issued By" := UserId;
        if Rec."Lending No" = '' then begin
            noseries.InitSeries('LEND', xRec."Lending No", 0D, "Lending No", "No Series");
        end;
    end;
}
