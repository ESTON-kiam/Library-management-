table 50113 "Library Transaction"
{
    Caption = 'Library Transaction';
    DataClassification = ToBeClassified;
    LookupPageId = "Library Transactions";
    DrillDownPageId = "Library Transactions";

    fields
    {
        field(1; "Transaction ID"; Code[15])
        {
            Caption = 'Transaction ID';
        }
        field(2; Description; Text[200])
        {
            Caption = 'Description';
        }
        field(3; "Patron Id"; Code[25])
        {
            Caption = 'Patron Id';
        }
        field(4; "Employee No."; Code[25])
        {
            Caption = 'Employee No.';
        }
        field(5; "Transaction Date"; DateTime)
        {
            Caption = 'Transaction Date';
        }
        field(6; "Transaction Type "; Option)
        {
            Caption = 'Transaction Type ';
            OptionMembers = Return,Borrow,fine;
        }
    }
    keys
    {
        key(PK; "Transaction ID")
        {
            Clustered = true;
        }
    }
}
