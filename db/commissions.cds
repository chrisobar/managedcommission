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
    key STATUS: String(15) @Common.Label : 'Processing Type';
    key COMPANY_CODE: CoCode @Common.Label : 'Company Code';
    key CONTRACT_NO: ContractNo @Common.Label : 'Contract No.';
    LIST: Composition of many TrancheDetails on LIST.CONTRACT_NO = $self;    
    BUILDING: Building @Common.Label : 'Building';
    LAND: Land @Common.Label : 'Land';
    RE_UNIT: String(10) @Common.Label : 'Project';
    RE_UNIT_DESC: String(30) @Common.Label : 'Project Desc.';
    BROKER_NO: BrokerNo @Common.Label : 'Broker No.';
    BROKER_NAME: BrokerName @Common.Label : 'Broker Name';
    BP_ROLE: String(15) @Common.Label : 'BP Role';
    TRANCHE_NO: TrancheNo @Common.Label : 'Tranche No.';
    TRANCHE_VER: String(2) @Common.Label : 'Tranche Ver.';
    COMMISSION_BASE_AMT: AmtUnit @Common.Label : 'Commission Base Amount';
    COMMISSION_RATE: AmtUnit @Common.Label : 'Commission Rate';
    VAT_INCL: String(2) @Common.Label : 'VAT Inclusive';
    COMMISSION_AMT: AmtUnit @Common.Label : 'Commission Amount';
    COMMISSION_PAID: AmtUnit @Common.Label : 'Commission Paid';
    WITHHOLDING_TAX: AmtUnit @Common.Label : 'Withholding Tax';
    COMMISSION_NET: AmtUnit @Common.Label : 'Commission Net';
    CONDITION_TYPE: AmtUnit @Common.Label : 'Condition Type';
    SUBMITTED_BY: UserId @Common.Label : 'Submitted By';
    DATE_SUBMITTED: Date @Common.Label : 'Run Date';
    APPROVED_BY: UserId @Common.Label : 'Approved By';
    DATE_APPROVED: Date @Common.Label : 'Date Approved';
    AP_DOC_NO: String(10) @Common.Label : 'AP Doc. No.';
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