codeunit 50110 "Library Management"
{
    var
        BookLendingLine: Record "Book Lending Line";
        Books: Record Book;
        SuccessMessage: Label 'Operation was successful';

    procedure BookOperations(BookLending: Record "Book Lending"; Status: Option Available,Booked,Issued,"Out-of-order",Received)
    begin

        BookLendingLine.SetRange("Lending No.", BookLending."Lending No");

        if BookLendingLine.FindSet() then begin
            repeat
                // BookLendingLine.Status:=Status;
                BookLendingLine.Modify();

                Books.Reset();
                if Books.Get(BookLendingLine."Book No.") then begin
                    if Status = Status::Received then
                        Books.Status := Books.Status::Available
                    else
                        Books.Status := Status;
                    Books.Modify();
                end;
            until BookLendingLine.Next() = 0;
        end;


        Message(SuccessMessage);
    end;
}
