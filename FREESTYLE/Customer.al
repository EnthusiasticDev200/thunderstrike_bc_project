enum 50100 Membership{
    value(0; None){ }
    value(1; Bronze) { Caption = 'Bronze';}
    value(2; Silver) { Caption = 'Silver';}
    value(3; Gold) { Caption = 'Gold';}
}

table 50101 "MyCustomer"
{
    Caption = 'Customer';
    LookupPageId = "My Customer Page"; // 
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;CustomerId; Integer)
        {
            Caption = 'Id';    
            AutoIncrement = true;
            Editable = false;        
        }

        field(2; Name; Text[50])
        {
            Caption = 'Name';            
        }

        field(3; Username; Text[10])
        {
            Caption = 'Username';            
        }

        field(4; Email; Text[20])
        {
            Caption = 'Email';            
        }

        field(5; "Phone Number"; Text[20])
        {
            Caption = 'Phone Number';            
        }

        field(6; CreatedAt; DateTime)
        {
            Caption = 'Created At';
        }
    }
    
    keys
    {
        key(PK; CustomerId)
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
        CreatedAt := CurrentDateTime;
        Message('Customer account created successfully')
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        Message('Customer with %1 has been deleted successfully', xRec.CustomerId)
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}