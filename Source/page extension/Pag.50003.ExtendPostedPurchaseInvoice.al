pageextension 50003 ExtendPostedPurchaseInvoice extends "Posted Purchase Invoice"
{
    layout
    {
        addafter("Vendor Order No.")
        {
            field("Payment Method Code"; "Payment Method Code")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}