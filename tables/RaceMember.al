enum 50110 "Role"{
    value(0; "driver") { Caption = 'Driver';}
    value(1; "mechanic") { Caption = 'Mechanic';}
    value(2; "engineer") { Caption = 'Engineer';}
    value(3; "pit crew") { Caption = 'Pit Crew';}
}

table 50111 "Team Member"
{
    Caption = ' Team Member ';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Team Member ID"; Integer)
        {
            Caption = 'Team Member ID';
        }

        field(2; "Name"; Text[50])
        {
            Caption = 'Name';
        }

        field(3; "Role"; enum Role)
        {
            Caption = 'Role';
        }

        field(4; "Phone Number"; Text[20])
        {
            Caption = 'Phone Number';
        }

        field(5; "Email"; Text[20])
        {
            Caption = 'Email';
        }

        field(6; "Address"; Text[50])
        {
            Caption = 'Address';
        }

    }
    
    keys
    {
        key(PK; "Team Member ID")
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