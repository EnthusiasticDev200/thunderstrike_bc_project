enum 50101 "Race Status"
{
    Extensible = true;
    value(0; upcoming) { Caption = 'Upcoming'; }
    value(1; completed) { Caption = 'Completed'; }
}


table 50100 "Race Event"
{
    Caption = 'Race Event';
    //LookupPageId = "Race Event Lookup"; 
    DataClassification = CustomerContent;

    fields
    {
        field(1; RaceID; Integer)
        {
            Caption = 'Race ID';
            AutoIncrement = true;

        }
        field(2; "Race Name"; Text[10])
        {
            Caption = 'Race Name';
        }
        field(3; Date; Date)
        {
            Caption = 'Date';

        }
        field(4; "Location"; Text[20])
        {
            Caption = 'Location';
        }
        field(5; "Circuit"; Text[15])
        {
            Caption = 'Circuit';

        }
        field(6; Status; enum "Race Status")
        {
            Caption = 'Status';
        }


    }


    keys
    {
        key(PK; RaceId)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}