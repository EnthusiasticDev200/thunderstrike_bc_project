enum 50104 PaymentMethod{
    value(0; Cash) { Caption = 'Cash';}
    value(1; Transfer) { Caption = 'Transfer';}
    value(2; Card) { Caption = 'Card';}
}

table 50103 MyOrders
{
    Caption = 'Orders';
    LookupPageId = "My Order Page";
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;OrderId; Integer)
        {
            Caption = 'Id';
            AutoIncrement = true;
            Editable = false;

            trigger OnValidate()
            
            begin
                if OrderId <= 0 then
                    Error('id cannot be a negative number')    
            end;
        }

        field(2;CustomerId; Integer)
        {
            Caption = 'Customer Id';
            trigger OnLookup()
            var
                Customer: Record MyCustomer; // ref customer tables as FK
            begin
                // page.RunModal loks up cus FK and returns all fk fields, if exists, customerId in myOrder = cus.CusID
                if Page.RunModal(0, Customer) = Action::LookupOK then 
                    Rec.CustomerId := Customer.CustomerId
            end;
        }

        field(3; ProductId; Integer)
        {
            Caption = 'ProductId';

           trigger OnLookup()
           var
                Product: Record MyProducts;
           begin
                if Page.RunModal(0, Product) = Action::LookupOK then
                    Rec.ProductId := Product.ProductId;
                    Rec.Price := Product."Unit Price";
                    Rec.Amount := Rec.Price * Rec.Quantity //update amount when product changes
           end;
        }

        field(4; Quantity; Integer)
        {
            Caption = 'Quantity';
            trigger OnValidate()
                begin
                    if Quantity < 1 then
                        Error('Quantity cannot be of value %1', Rec.Quantity);
                    Rec.Amount := Rec.Price * Rec.Quantity // auto recalculate amount when qty changes
                end;
        }

        field(5; Price; Integer)
        {
            Caption = 'Price';
            Editable = false;

        }


        field(6; Amount; Integer)
        {
            Caption = 'Amount'; // unit price from product x quanity
            Editable = false;
            trigger OnValidate()
            begin
                if Amount < 0 then 
                    Error('Amount cannot be a negative number');
            end;

        }
        
        field(7; Payment; enum PaymentMethod)
        {
        }

        field(8; CreatedAt; DateTime)
        {
           Caption = 'Created At';
        }
    }
    
    keys
    {
        key(PK; OrderId)
        {
            Clustered = true;
        }
    }
    
    trigger OnInsert()
    begin
        CreatedAt := CurrentDateTime;
        Message('Order created!');
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        Message('Order account %1 deleted successfully', xRec.OrderId ); // xRec = prevState of current record
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}