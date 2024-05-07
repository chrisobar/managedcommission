namespace app.commission;

type CoCode: String(4);
type ContractNo: String(13);
type BrokerNo: String(10);
type BrokerName: String(30);
type Project: String(10);
type Land: String(10);
type Building: String(10);
type TrancheNo: String(10);
type UserId: String(10);
type AmtUnit: Decimal(15, 2);

entity CommissionsList { 
    key STATUS: String(15);
    key COMPANY_CODE: CoCode;
    key CONTRACT_NO: ContractNo;
    LIST: Composition of many TrancheDetails on LIST.CONTRACT_NO = $self;    
    BUILDING: Building;
    LAND: Land;
    RE_UNIT: String(10);
    RE_UNIT_DESC: String(30);
    BROKER_NO: BrokerNo;
    BROKER_NAME: BrokerName;
    BP_ROLE: String(15);
    TRANCHE_NO: TrancheNo;
    TRANCHE_VER: String(2);
    COMMISSION_BASE_AMT: AmtUnit;
    COMMISSION_RATE: AmtUnit;
    VAT_INCL: String(2);
    COMMISSION_AMT: AmtUnit;
    COMMISSION_PAID: AmtUnit;
    WITHHOLDING_TAX: AmtUnit;
    COMMISSION_NET: AmtUnit;
    CONDITION_TYPE: AmtUnit;
    SUBMITTED_BY: UserId;
    DATE_SUBMITTED: Date;
    APPROVED_BY: UserId;
    DATE_APPROVED: Date;
    AP_DOC_NO: String(10);
}

entity TrancheDetails {
    key COMPANY_CODE: CoCode;
    key CONTRACT_NO: association to CommissionsList;
    BUYER_NAME: String(20);
    BUILDING: Building;
    LAND: Land;
    RE_UNIT_DESC: String(30);
    BROKER_NAME: BrokerName;
    COMMISSION_BASE_AMT: AmtUnit;
    COMMISSION_RATE: AmtUnit;
    COMMISSION_RATE_IN_MONTHS: AmtUnit;
    TOTAL_CONTRACT_PRICE: AmtUnit;
    PAID_AMT: AmtUnit;
    PAID_PERCTG: Decimal(5, 2);
    
}