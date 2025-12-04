page 50101 "My Customer Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyCustomer;
    
    layout
    {
        area(Content)
        {
            repeater(" Customer List")
            {
                field(CustomerId; Rec.CustomerId)
                {
                    
                }

                field(Name; Rec.Name)
                {
                    
                }

                field(Username; Rec.Username)
                {
                    
                }

                field(Email; Rec.Email)
                {
                    
                }

                field("Phone Number"; Rec."Phone Number")
                {
                    
                }

                field(CreatedAt; Rec.CreatedAt)
                {
                    
                }

    
            }
        }
    }
    
}