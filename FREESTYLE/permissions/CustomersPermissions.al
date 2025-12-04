permissionset 50100 "Customer Access"{
    Caption = ' Customer Access';
    Assignable = true;

    Permissions = 
        tabledata MyOrders = R,
        page "My Order Page" = X;
        
        
}
