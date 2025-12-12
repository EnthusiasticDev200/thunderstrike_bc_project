pageextension 50101 CustomerPageExt extends "Customer Card"
{
    layout
    {
        addlast(General){
           field(Car; Rec.Car){
                ToolTip = 'Specifies customer car';
           }
        }
    }
    
    
}