pageextension 50000 ExtendItemCard_50000 extends "Item Card"
{
    layout
    {
        addafter("Service Item Group")
        {
            field("Top Color"; "Top Color")
            {
                ApplicationArea = All;
            }
            field("Top Finish"; "Top Finish")
            {
                ApplicationArea = All;
            }
            field("Side Color"; "Side Color")
            {
                ApplicationArea = All;
            }
            field("Side Finish"; "Side Finish")
            {
                ApplicationArea = All;
            }
            field("Print Text"; "Print Text")
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