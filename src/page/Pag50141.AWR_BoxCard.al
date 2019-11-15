page 50141 "AWR_Box Card"
{

    PageType = Card;
    SourceTable = "AWR_Box Header";
    Caption = 'Box Card';


    layout
    {
        area(content)
        {
            group(General)
            {
                field("Box No."; "Box No.")
                {
                    ApplicationArea = All;
                }
                field("Shipment Date"; "Shipment Date")
                {
                    ApplicationArea = All;
                }
                field("Receive Date"; "Receive Date")
                {
                    ApplicationArea = All;
                }
                field("Box Ready"; "Box Ready")
                {
                    ApplicationArea = All;
                }
                field(Delivered; Delivered)
                {
                    ApplicationArea = All;
                }
            }
            group(Lines)
            {
                part("Box Lines"; "AWR_Box Lines")
                {
                    ApplicationArea = All;
                    SubPageLink = "Box No." = field("Box No.");
                }
            }
        }
    }

}
