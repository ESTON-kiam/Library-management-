page 50118 "Library Role Center"
{
    Caption = 'Library Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {

            part(RCH; "Role center Headlines")
            {
                ApplicationArea = all;
            }
            part(LC; "Library Cue")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group("Books")
            {
                action("&View Books")
                {
                    ApplicationArea = All;
                    RunObject = Page Books;
                }
                action("&View Authors")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page Authors;
                }
            }
            group("&Patrons")
            {
                action("View Patrons")
                {
                    ApplicationArea = All;
                    RunObject = Page Patrons;
                }
            }
            group("&Book Lending")
            {
                action("View Book Lendings")
                {
                    ApplicationArea = All;
                    RunObject = Page "Book Lendings";
                }
                action("Book lending Lines")
                {
                    ApplicationArea = All;
                    RunObject = Page "Book Lending Lines";
                }
            }
            group("&Book Author")

            {
                action("View Book Authors")
                {
                    ApplicationArea = All;
                    RunObject = Page "Book Authors";
                }
            }
            group("&Returns")
            {
                action("View Book Returns")
                {
                    ApplicationArea = All;
                    RunObject = Page "Book Returns";
                }
            }
            // group("&Eston")
            // {
            //     action("Eston")
            //     {
            //         ApplicationArea = All;
            //         RunObject = Page Books;
            //     }
            // }
            // group("&KIAMA")
            // {
            //     action("Kiama")
            //     {
            //         ApplicationArea = all;
            //     }

            // }
        }

        area(Creation)
        {
            action(Book)
            {
                ApplicationArea = All;
                RunObject = Page Book;
                RunPageMode = Create;
            }
            action(Patron)
            {
                ApplicationArea = All;
                RunObject = Page Patron;
                RunPageMode = Create;
            }
            action(Author)
            {
                ApplicationArea = All;
                RunObject = Page Author;
                RunPageMode = Create;
            }
            action("Book Lending")
            {
                ApplicationArea = All;
                RunObject = Page "Book Lending";
                RunPageMode = Create;
            }
            action("Book Author")
            {
                ApplicationArea = All;
                RunObject = Page "Book Authors";
                RunPageMode = Create;
            }
            group(Reports)
            {
                action("&Book Report")
                {
                    ApplicationArea = All;
                    RunObject = Report Book;
                }
                action("&Patron Report")
                {
                    ApplicationArea = All;
                    RunObject = Report Patron;
                }
                action("&Book Author Report")
                {
                    ApplicationArea = All;
                    RunObject = Report BookAuthor;
                }
                action("&Book Lending Report")
                {
                    ApplicationArea = All;
                    RunObject = Report BookLending;
                }
                action("&Book Return Report")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Report "Book Return";
                }
            }
        }
    }

}