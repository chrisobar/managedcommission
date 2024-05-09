using app.commission from '../db/commissions';

service CommissionService {
    entity CommissionsList as projection on commission.CommissionsList;
    entity ContractDetails as projection on commission.ContractDetails;

}
