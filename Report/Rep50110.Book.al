report 50110 Book
{
    ApplicationArea = All;
    Caption = 'Book';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/Books Report.RDL';
    dataset
    {
        dataitem(Book; Book)
        {
            column(logo; Company.Picture) { }
            column(CompanyName; Company.Name) { }
            column(CompanyAddress; Company.Address) { }
            column(CompanyEMail; Company."E-Mail") { }
            column(CompanyPhone; Company."Phone No.") { }
            column(CompanyHomePage; Company."Home Page") { }
            column(BookID; "Book ID")
            {
            }
            column(Title; Title)
            {
            }
            column(ISNB; ISNB)
            {
            }
            column(Genre; Genre)
            {
            }
            column(status; status)
            {
            }
            column(PublicationYear; "Publication Year")
            {
            }
            column(Author; Author)
            {
            }
            column(CreatedAt; "Created At")
            {
            }
            column(CreatedBy; "Created By")
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
