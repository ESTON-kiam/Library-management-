report 50114 BookAuthor
{
    ApplicationArea = All;
    Caption = 'BookAuthor';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/BookAuthor.RDL';
    dataset
    {
        dataitem(BookAuthor; "Book Author")
        {
            column(logo; Company.Picture) { }
            column(CompanyName; Company.Name) { }
            column(CompanyAddress; Company.Address) { }
            column(CompanyEMail; Company."E-Mail") { }
            column(CompanyPhone; Company."Phone No.") { }
            column(CompanyHomePage; Company."Home Page") { }
            column(AuthorID; "Author ID")
            {
            }
            column(FirstName; "First Name")
            {
            }
            column(LastName; "Last Name")
            {
            }
            column(Email; Email)
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(BookID; "Book ID")
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
    trigger OnPreReport()
    begin
        company.Get;
        company.CalcFields(Picture);
    end;

    var
        company: Record "Company Information";
}
