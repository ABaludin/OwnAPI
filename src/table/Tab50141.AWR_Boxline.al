table 50141 "AWR_Box line"
{
    Caption = 'Box line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Box No."; Code[20])
        {
            Caption = 'Box No.';
            DataClassification = CustomerContent;
            TableRelation = "AWR_Box Header"."Box No.";
        }
        field(2; "Box Line No."; Integer)
        {
            Caption = 'Box Line No.';
            DataClassification = CustomerContent;
        }
        field(3; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
        field(4; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            TableRelation = Item."No.";
        }
        field(5; Description; Text[100])
        {
            Caption = 'Description';
            FieldClass = FlowField;
            CalcFormula = lookup (Item.Description where("No." = field("Item No.")));
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Box No.", "Box Line No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        BoxLine: Record "AWR_Box line";
    begin
        if "Box Line No." = 0 then begin
            BoxLine.SetRange("Box No.", "Box No.");
            If BoxLine.FindLast() then
                "Box Line No." := BoxLine."Box Line No." + 1
            else
                "Box Line No." := 1;
        end;
    end;

}
