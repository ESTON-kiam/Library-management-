table 50111 Patron
{
    Caption = 'Patron';
    DataClassification = ToBeClassified;
    LookupPageId = Patrons;
    DrillDownPageId = Patrons;

    fields
    {
        field(1; "Patron Id"; Code[20])
        {
            Caption = 'Patron Id';
            Editable = false;
        }
        field(2; "First Name"; Text[10])
        {
            Caption = 'First Name';
        }
        field(3; "Last  Name"; Text[10])
        {
            Caption = 'Last  Name';
        }
        field(333; "No Series"; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(4; "Phone No."; Integer)
        {
            Caption = 'Phone No.';
        }
        field(5; Email; Text[30])
        {
            Caption = 'Email';
        }
        field(6; "Date Of Birth"; Date)
        {
            Caption = 'Date Of Birth';
        }
        field(7; "Modifield by"; Code[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(8; "Modifield Date tIME"; DateTime)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Patron Id")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Patron Id", "First Name", "Last  Name")
        {

        }
    }
    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        if Rec."Patron Id" = '' then begin
            noseries.InitSeries('PATRON', xRec."Patron Id", 0D, "Patron Id", "No Series");
        end;
    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin
        "Modifield by" := UserId;
        "Modifield Date tIME" := CurrentDateTime;
    end;
}
