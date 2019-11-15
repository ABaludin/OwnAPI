page 50142 "AWR_Box List"
{

    PageType = List;
    SourceTable = "AWR_Box Header";
    Caption = 'Box List';
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "AWR_Box Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Box No."; "Box No.")
                {
                    ApplicationArea = All;
                }
                field("Sales Order No."; "Sales Order No.")
                {
                    ApplicationArea = all;
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
                field("External partner sent"; "External partner sent")
                {
                    ApplicationArea = All;
                }
                field("Sent date"; "Sent date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
