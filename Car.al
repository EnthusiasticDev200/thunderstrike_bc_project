table 50107 Car
{
    Caption = 'Car';
    DataClassification = CustomerContent;
    
    
    fields
    {
        field(1;CarId; Code[10])
        {
            Caption = 'Id';
            DataClassification = ToBeClassified;
        }

        field(2;Name; Text[10])
        {
            Caption = 'Name';
        }

        field(3;Colour; Code[10])
        {
            Caption = 'Colour';
        }

        field(4;"Production Year"; Date)
        {
            Caption = 'Manufactured Date';
        }


    }
    
    keys
    {
        key(PK; CarId)
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