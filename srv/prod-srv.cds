using { myapp as db } from '../db/schema';

service PrdMgmtSrv{
    @odata.draft.enabled
    entity Products as projection on db.Products;
    entity Orders as projection on db.Orders;
    entity Items as projection on db.OrderItems;
}