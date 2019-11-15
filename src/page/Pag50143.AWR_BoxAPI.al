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
                field(address; PostalAddressJSONText)
                {
                    ApplicationArea = All;
                    ODataEDMType = 'POSTALADDRESS';
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

    var
        PostalAddressJSONText: Text;

    trigger OnOpenPage()
    begin
        SetRange("External partner sent", false);
    end;

    trigger OnAfterGetRecord()
    var
        SalesHeader: Record "Sales Header";

    begin
        SalesHeader.Get(SalesHeader."Document Type"::Order, "Sales Order No.");
        GetAddressJSON(SalesHeader);

        "External Partner Sent" := true;
        "Sent date" := Today();
        Modify(false);
    end;

    local procedure GetAddressJSON(SalesHeader: Record "Sales Header")
    var
        GraphMgtComplexTypes: Codeunit "Graph Mgt - Complex Types";
    begin
        with SalesHeader do
            GraphMgtComplexTypes.GetPostalAddressJSON("Sell-to Address", "Sell-to Address 2",
              "Sell-to City", "Sell-to County", "Sell-to Country/Region Code", "Sell-to Post Code", PostalAddressJSONText);
    end;
}

