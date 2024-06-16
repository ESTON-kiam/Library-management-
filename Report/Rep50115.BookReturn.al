report 50115 "Book Return"
{
    ApplicationArea = All;
    Caption = 'Book Return';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/Books Return.RDL';
    dataset
    {
        dataitem(BookReturn; "Book Return")
        {
            column(logo; Company.Picture) { }
            column(CompanyName; Company.Name) { }
            column(CompanyAddress; Company.Address) { }
            column(CompanyEMail; Company."E-Mail") { }
            column(CompanyPhone; Company."Phone No.") { }
            column(CompanyHomePage; Company."Home Page") { }
            column(PatronId; "Patron Id")
            {
            }
            column(BookID; "Book ID")
            {
            }
            column(Status; Status)
            {
            }
            column(ReturnDate; "Return Date")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    trigger OnInitReport()
    var
        myInt: Integer;
    begin
        Company.Get;
        Company.CalcFields(Picture);

    end;

    var
        Company: Record "Company Information";
}
