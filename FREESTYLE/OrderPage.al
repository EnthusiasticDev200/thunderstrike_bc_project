page 50111 "My Order Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration; // try changing to list
    SourceTable = MyOrders;
    
    layout
    {
        area(Content)
        {
            repeater("List of Orders")
            {
                field(OrderId; Rec.OrderId)
                {
                    
                }

                field(CustomerId; Rec.CustomerId)
                {
                    
                }

                field(Item; Rec.ProductId)
                {
                    
                }

                field(Quantity; Rec.Quantity)
                {
                    
                }

                field(Price; Rec.Price)
                {
                    
                }

                field(Amount; Rec.Amount)
                {
                    
                }

                field(Payment; Rec.Payment)
                {
                    
                }

                field(CreatedAt; Rec.CreatedAt)
                {
                    
                }
            }
        }
    }

}