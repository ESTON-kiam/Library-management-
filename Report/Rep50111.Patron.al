report 50111 Patron
{
    ApplicationArea = All;
    Caption = 'Patron';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/Patron.RDL';
    dataset
    {

        dataitem(Patron; Patron)
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
            column(FirstName; "First Name")
            {
            }
            column(LastName; "Last  Name")
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(Email; Email)
            {
            }
            column(DateOfBirth; "Date Of Birth")
            {
            }
            column(Modifieldby; "Modifield by")
            {
            }
            column(ModifieldDatetIME; "Modifield Date tIME")
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
