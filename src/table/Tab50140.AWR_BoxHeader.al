table 50140 "AWR_Box Header"
{
    Caption = 'Box Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Box No."; Code[20])
        {
            Caption = 'Box No.';
            DataClassification = CustomerContent;
        }

        field(3; "Box Ready"; Boolean)
        {
            Caption = 'Box Ready';
            DataClassification = CustomerContent;
        }
        field(4; Delivered; Boolean)
        {
            Caption = 'Delivered';
            DataClassification = CustomerContent;
        }
        field(5; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
            DataClassification = CustomerContent;
        }
        field(6; "Receive Date"; Date)
        {
            Caption = 'Receive Date';
            DataClassification = CustomerContent;
        }
        field(7; "Sales Order No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Sales Order No.';
            TableRelation = "Sales Header"."No." where("Document Type" = filter(Order));
        }
        field(8; "External partner sent"; Boolean)
        {
            Caption = 'External partner sent';
            DataClassification = CustomerContent;
        }
        field(9; "Sent date"; Date)
        {
            Caption = 'Sent date';
            DataClassification = CustomerContent;
        }


    }
    keys
    {
        key(PK; "Box No.")
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    var
        BoxLine: Record "AWR_Box line";
    begin
        BoxLine.SetRange("Box No.", "Box No.");
        if BoxLine.FindSet() then
            BoxLine.DeleteAll(true);
    end;
}
