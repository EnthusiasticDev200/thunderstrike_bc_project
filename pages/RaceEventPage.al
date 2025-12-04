page 50110 "Race Event Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Race Event";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                // table columns
                field(RaceId; Rec.RaceId)
                {
                }

                field("Race Name"; Rec."Race Name")
                {
                }

                field(Date; Rec.Date)
                {
                }

                field(Location; Rec.Location)
                {
                }

                field(Circuit; Rec.Circuit)
                {
                }

                field(Status; Rec.Status)
                {
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