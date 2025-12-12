page 50108 "Car Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Car;
    
    layout
    {
        area(Content)
        {
            repeater("Car Page")
            {
                field(CarId; Rec.CarId)
                {
                    ToolTip = 'Specifies a unique identifier for a given car';
                }

                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the name of the car';
                }

                field(Colour; Rec.Colour)
                {
                    ToolTip = 'Specifies the colour of the car';
                }

                field("Production Year"; Rec."Production Year")
                {
                    ToolTip = 'Specifies a unique identifier for a given car', Locked = true;
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}