namespace app.commission;

type CoCode     : String(4);
type ContractNo : String(13);
type BrokerNo   : String(10);
type BrokerName : String(30);
type Project    : String(10);
type Land       : String(10);
type Building   : String(10);
type TrancheNo  : String(10);
type UserId     : String(10);
type AmtUnit    : Decimal(15, 2);

entity CommissionsList {
    key STATUS              : String(15) @Common.Label: '{i18n>status1}';
    key COMPANY_CODE        : CoCode     @Common.Label: '{i18n>companyCode}';
    key CONTRACT_NO         : ContractNo @Common.Label: '{i18n>contractNo}';
        LIST                : Composition of many ContractDetails
                                  on LIST.CONTRACT_NO = $self;
        BUILDING            : Building   @Common.Label: '{i18n>building}';
        LAND                : Land       @Common.Label: '{i18n>land}';
        RE_UNIT             : String(10) @Common.Label: '{i18n>project}';
        RE_UNIT_DESC        : String(30) @Common.Label: '{i18n>projectDesc}';
        BROKER_NO           : BrokerNo   @Common.Label: '{i18n>brokerNo}';
        BROKER_NAME         : BrokerName @Common.Label: '{i18n>}brokerName';
        BP_ROLE             : String(15) @Common.Label: '{i18n>bpRole}';
        TRANCHE_NO          : TrancheNo  @Common.Label: '{i18n>trancheNo}.';
        TRANCHE_VER         : String(2)  @Common.Label: '{i18n>trancheVer}';
        COMMISSION_BASE_AMT : AmtUnit    @Common.Label: '{i18n>commBase}';
        COMMISSION_RATE     : AmtUnit    @Common.Label: '{i18n>commRate}';
        VAT_INCL            : String(2)  @Common.Label: '{i18n>vatIncl}';
        COMMISSION_AMT      : AmtUnit    @Common.Label: '{i18n>commAmt}';
        COMMISSION_PAID     : AmtUnit    @Common.Label: '{i18n>commPaid}';
        WITHHOLDING_TAX     : AmtUnit    @Common.Label: '{i18n>withTax}';
        COMMISSION_NET      : AmtUnit    @Common.Label: '{i18n>commNet}';
        CONDITION_TYPE      : String(4)  @Common.Label: '{i18n>condType}';
        SUBMITTED_BY        : UserId     @Common.Label: '{i18n>submittedBy}';
        DATE_SUBMITTED      : Date       @Common.Label: '{i18n>submittedDate}';
        APPROVED_BY         : UserId     @Common.Label: '{i18n>approvedBy}';
        DATE_APPROVED       : Date       @Common.Label: '{i18n>approvedDate}';
        AP_DOC_NO           : String(10) @Common.Label: '{i18n>apdocNo}';
}

entity ContractDetails {
    key COMPANY_CODE              : CoCode;
    key CONTRACT_NO               : Association to CommissionsList;
        BUYER_NAME                : String(20);
        BUILDING                  : Building;
        LAND                      : Land;
        RE_UNIT_DESC              : String(30);
        BROKER_NAME               : BrokerName;
        COMMISSION_BASE_AMT       : AmtUnit;
        COMMISSION_RATE           : AmtUnit;
        COMMISSION_RATE_IN_MONTHS : AmtUnit;
        TOTAL_CONTRACT_PRICE      : AmtUnit;
        PAID_AMT                  : AmtUnit;
        PAID_PERCTG               : Decimal(5, 2);
// LIST : Composition of many

}

entity TrancheDetails {
    key TRANCHE_NO : TrancheNo
}

entity DocumentaryRequirements {
    key SUBMISSION_CODE : String(10) @Common.Label: 'Submission Code';
        DESCRIPTION     : String(50) @Common.Label: 'Description';
        STATUS          : String(15) @Common.Label: 'Status'
}
