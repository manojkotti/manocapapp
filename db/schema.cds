namespace myapp;
using { cuid,managed } from '@sap/cds/common';

entity Products:cuid,managed{
        Name  : String(50);
        Price : Decimal(9,2);
        Discount : Integer;
        Stock : Integer;
        Image : LargeBinary @Core.MediaType:'image/jpg';
}

entity Orders:cuid,managed{
    CustomerName : String(30);
    CustomerMobile : String(10);
    StoreName : String(20);
    NetPrice : Decimal(9,2);
    Items : Composition of many OrderItems on Items.Order=$self;
}

entity OrderItems:cuid,managed{
    Order : Association to Orders;
    Product : Association to Products;
    Quantity : Integer;
    UnitPrice : Decimal(9,2);
    Discount : Integer;
    TotalPrice : Decimal(9,2);
}