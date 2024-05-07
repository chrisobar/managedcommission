using app.commission from '../db/commissions';

service CommissionService {
    entity CommissionsList as projection on commission.CommissionsList;
    entity TrancheDetails as projection on commission.TrancheDetails;
}