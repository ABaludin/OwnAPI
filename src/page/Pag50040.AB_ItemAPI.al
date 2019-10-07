page 50040 "AB_Item API"
{
    Caption = 'items', Locked = true;
    ChangeTrackingAllowed = true;
    InsertAllowed = false;
    DelayedInsert = true;
    EntityName = 'item';
    EntitySetName = 'items';
    ODataKeyFields = Id;
    PageType = API;
    APIGroup = 'directions';
    APIPublisher = 'baludin';
    APIVersion = 'v1.0';
    SourceTable = Item;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Id)
                {
                    ApplicationArea = All;
                    Caption = 'Id', Locked = true;
                    Editable = false;
                }
                field(number; "No.")
                {
                    ApplicationArea = All;
                    Caption = 'Number', Locked = true;
                }
                field(displayName; Description)
                {
                    ApplicationArea = All;
                    Caption = 'DisplayName', Locked = true;
                    ToolTip = 'Specifies the Description for the Item.';
                }

                part(picture; "Picture Entity")
                {
                    ApplicationArea = All;
                    Caption = 'picture';
                    EntityName = 'picture';
                    EntitySetName = 'picture';
                    SubPageLink = Id = FIELD(Id);
                }

            }
        }
    }
}

