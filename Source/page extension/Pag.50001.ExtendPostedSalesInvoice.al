pageextension 50001 ExtendPostedSalesInvoice extends "Posted Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Print)
        {
            action("Product Label")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Product Label';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Report;


                trigger OnAction()
                begin
                    CurrPage.SETSELECTIONFILTER(Rec);
                    REPORT.RUN(50000, TRUE, FALSE, Rec);
                end;
            }
        }
    }


    var
        myInt: Integer;
}