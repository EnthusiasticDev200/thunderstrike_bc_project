table 50102 MyProducts
{
    Caption = 'Products';
    LookupPageId = "Product Page";
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;ProductID; Integer)
        {
           Caption = 'ID';
           AutoIncrement = true;
           Editable = false;
           
           trigger OnValidate()
          
           begin
                if ProductId <= 0 then
                    Error('%1 not accepted for id', Rec.ProductID)
           end;
            
        }

        field(2;Name; Text[20])
        {
           Caption = 'Name';
            
        }

        field(4;Quantity; Integer)
        {
           Caption = 'Stock Quantity';
            trigger OnValidate()
            begin
                if Quantity < 1 then
                    Error('Quantity cannot be less than %1', Rec.Quantity); //  REC.qty CURRENT VAL bin inserted; xREC old val b4 modification
            end;
        }

        field(5; "Unit Price"; Integer)
        {
           Caption = 'Unit Price';
           trigger OnValidate()
           
           begin
                if "Unit Price"  < 1000 then
                Error('Price cannot be less than %1', Rec."Unit Price"); // Rec = ${}, && = and
           end;
        }
        field(6; CreatedAt; DateTime)
        {
            Caption = 'Created At'; // default present time
        }
    }
    
    keys
    {
        key(PK; ProductID)
        {
            Clustered = true;
        
        }
    }
    
    
    trigger OnInsert()
    begin
        CreatedAt := CurrentDateTime
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        Message('Product %1 was deleted successfully', xRec.ProductID )
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}