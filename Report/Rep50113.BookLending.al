report 50113 BookLending
{
    Caption = 'BookLending';
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/BookLending.RDL';
    dataset
    {
        dataitem(BookLending; "Book Lending")
        {
            column(logo; Company.Picture) { }
            column(CompanyName; Company.Name) { }
            column(CompanyAddress; Company.Address) { }
            column(CompanyEMail; Company."E-Mail") { }
            column(CompanyPhone; Company."Phone No.") { }
            column(CompanyHomePage; Company."Home Page") { }
            column(LendingNo; "Lending No")
            {
            }
            column(Descrption; Descrption)
            {
            }

            column(PatronNo; "Patron No.")
            {
            }
            column(PatronName; "Patron Name")
            {
            }
            column(PatronEmail; "Patron Email")
            {
            }
            column(PatronPhoneNO; "Patron Phone NO.")
            {
            }
            column(Status; Status)
            {
            }
            column(LendingDate; "Lending Date")
            {
            }
            column(IssuedBy; "Issued By")
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
