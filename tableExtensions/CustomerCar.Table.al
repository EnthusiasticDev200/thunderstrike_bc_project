tableextension 50100 CustomerCarExt extends Customer

{
    fields
    {
        field(50100; Car; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Car';
            TableRelation = Car.CarId;
        }
    }
    
   
}