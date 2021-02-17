tableextension 50001 ExtendNoSeries extends "No. Series"
{
    fields
    {
        field(50000; "Related Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Related Series';
            TableRelation = "No. Series";
        }
    }

    var
        myInt: Integer;
}