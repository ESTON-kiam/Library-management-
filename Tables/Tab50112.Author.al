table 50112 Author
{
    Caption = 'Author';
    DataClassification = ToBeClassified;
    LookupPageId = Authors;
    DrillDownPageId = Authors;

    fields
    {
        field(1; "Authors No."; Code[20])
        {
            Caption = 'Authors ID.';
            Editable = false;
        }
        field(2; "First Name"; Text[15])
        {
            Caption = 'First Name';
        }
        field(3; "Last Name"; Text[15])
        {
            Caption = 'Last Name';
        }
        field(333; "No Series"; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(4; Email; Text[100])
        {
            Caption = 'Email';
        }
        field(5; "Phone No."; Integer)
        {
            Caption = 'Phone No.';
        }
    }
    keys
    {
        key(PK; "Authors No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "First Name", "Last Name")
        {

        }
    }
    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        if Rec."Authors No." = '' then begin
            noseries.InitSeries('AUTHOR', xRec."Authors No.", 0D, "Authors No.", "No Series");
        end;
    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin

    end;

    trigger OnDelete()
    var
        myInt: Integer;
    begin

    end;
}
