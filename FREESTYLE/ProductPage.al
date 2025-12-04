page 50100 "Product Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyProducts;
    
    layout
    {
        area(Content)
        {
            repeater("List of Products")
            {
                field(ProductID; Rec.ProductID)
                {
                    
                }

                field(Name; Rec.Name)
                {
                    
                }

                field(Quantity; Rec.Quantity)
                {
                    
                }

                field("Unit Price"; Rec."Unit Price")
                {
                    
                }

                field(CreatedAt; Rec.CreatedAt)
                {
                    
                }
            }
        }
    }
    
}