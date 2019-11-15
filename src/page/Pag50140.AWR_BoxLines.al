page 50140 "AWR_Box Lines"
{

    PageType = ListPart;
    SourceTable = "AWR_Box line";
    Caption = 'Box Lines';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
