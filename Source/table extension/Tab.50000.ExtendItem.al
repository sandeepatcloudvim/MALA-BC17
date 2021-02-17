tableextension 50000 ExtendItem_50000 extends Item
{
    fields
    {
        field(50000; "Top Color"; code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Top Color";
        }
        field(50001; "Top Finish"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Gloss,"Silk-Matte",Matte;
            OptionCaption = 'Gloss,Silk-Matte,Matte';
        }
        field(50002; "Side Color"; code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Side Color";
        }
        field(50003; "Side Finish"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Gloss,"Silk-Matte",Matte,"Drawn without coating";
            OptionCaption = 'Gloss,Silk-Matte,Matte,Drawn without coating';
        }
        field(50004; "Print Text"; Text[150])
        {
            DataClassification = CustomerContent;
        }
    }

    var
        myInt: Integer;
}