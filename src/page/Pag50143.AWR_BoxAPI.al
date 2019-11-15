page 50143 "AWR_Box API"
{
    Caption = 'Boxes', Locked = true;
    ChangeTrackingAllowed = true;
    DelayedInsert = true;
    EntityName = 'box';
    EntitySetName = 'boxes';
    PageType = API;
    APIGroup = 'ntd19';
    APIPublisher = 'baludin';
    APIVersion = 'v1.0';
    SourceTable = "AWR_Box Header";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(boxNo; "Box No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(boxReady; "Box Ready")
                {
                    ApplicationArea = All;
                }
                field(delivered; Delivered)
                {
                    ApplicationArea = All;
                }

                field(shipmentDate; "Shipment Date")
                {
                    ApplicationArea = All;
                }
                field(receiveDate; "Receive Date")
                {
                    ApplicationArea = All;
                }

                part(boxLines; "AWR_Box Lines")
                {
                    ApplicationArea = All;
                    Caption = 'boxLines';
                    EntityName = 'boxLine';
                    EntitySetName = 'boxLines';
                    SubPageLink = "Box No." = FIELD("Box No.");
                }

            }
        }
    }
}

