page 50127 "Role center Headlines"
{
    Caption = 'Role center Headlines';
    PageType = HeadlinePart;

    layout
    {
        area(content)
        {
            group(control1)
            {
                ShowCaption = false;
                Visible = true;
                field(HeadLine; hdltxt)
                {
                    ApplicationArea = all;
                    Editable = false;
                    Caption = 'Headline Text';
                }
            }
            group(control2)
            {
                ShowCaption = false;
                Visible = true;
                field(Headline1; hdltxt1)
                {
                    ApplicationArea = all;
                    Editable = false;
                    Caption = 'Headline Text1';
                }
            }
        }
    }

    var
        hdltxt: Text[100];
        hdltxt1: Text[100];

    procedure UpdateHeadlines()
    var
        CurrentTime: Time;
    begin
        CurrentTime := Time;

        if CurrentTime < 120000T then begin
            hdltxt := 'Good Morning';
            hdltxt1 := 'Start your day with a good book!';
        end
        else if CurrentTime < 180000T then begin
            hdltxt := 'Good Afternoon';
            hdltxt1 := 'Take a break and read a book!';
        end
        else begin
            hdltxt := 'Good Evening';
            hdltxt1 := 'Relax with a book this evening!';
        end;
    end;

    trigger OnOpenPage();
    begin
        UpdateHeadlines();
    end;
}
