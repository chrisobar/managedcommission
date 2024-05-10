using CommissionService as service from '../../srv/commissions_srv';

annotate service.CommissionsList with @(
    UI.SelectionFields               : [
        STATUS,
        DATE_SUBMITTED,
        COMPANY_CODE,
        RE_UNIT,
        BUILDING,
        LAND,
        BROKER_NO,
        CONTRACT_NO
    ],
    UI.HeaderInfo                    : {
        TypeName      : '{i18n>capTitle}',
        TypeNamePlural: '{i18n>capTitle}',
        Title         : {Value: '{i18n>capTitle}'}
    },
    UI.FieldGroup #ContractDetails   : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>companyCode}',
                Value: COMPANY_CODE,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>contractNo}',
                Value: CONTRACT_NO,
            },
            // {
            //     $Type: 'UI.DataField',
            //     Label: '{i18n>buyerName}',
            //     Value: BUYER_NAME,
            // },
            {
                $Type: 'UI.DataField',
                Label: 'Building',
                Value: BUILDING,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Land',
                Value: LAND,
            },
            {
                $Type: 'UI.DataField',
                Label: 'RE - UNIT',
                Value: RE_UNIT,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Description',
                Value: RE_UNIT_DESC,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Broker No.',
                Value: BROKER_NO,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Broker Name',
                Value: BROKER_NAME,
            },
        ],
    },
    UI.FieldGroup #BuyerPaymentHeader: {
        $Type: 'UI.FieldGroupType',

        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Total Contract Price',
                Value: COMMISSION_AMT,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Paid Amount',
                Value: COMMISSION_NET,
            },
            {
                $Type: 'UI.DataField',
                Label: '% Paid',
                Value: COMMISSION_PAID,
            },

        ],
    },
    UI.LineItem #trancheHeader       : [
        {
            Label: '{i18n>trancheNo}',
            Value: TRANCHE_NO
        },
        {
            Label: '{i18n>status1}',
            Value: STATUS
        },
        {
            Label: '{i18n>commRate}',
            Value: COMMISSION_RATE
        },
        {
            Label: '{i18n>commAmt}',
            Value: COMMISSION_AMT
        },
        {
            Label: 'Comm Paid Prev-Cont.',
            Value: COMMISSION_PAID
        },
        {
            Label: '{i18n>vatIncl}',
            Value: VAT_INCL
        },
        {
            Label: '{i18n>withTax}',
            Value: WITHHOLDING_TAX
        },
        {
            Label: '{i18n>commNet}',
            Value: COMMISSION_NET
        },
        {
            Label: '{i18n>approvedDate}',
            Value: DATE_APPROVED
        },
        {
            Label: 'AP Journal Entry No.',
            Value: AP_DOC_NO
        },
        {
            Label: 'Payment Doc. No.',
            Value: ''
        }
    ],
    // UI.LineItem #documentaryHeader   : [
    //     {
    //         Label: 'Resubmission Code',
    //         Value: '1001'
    //     },
    //     {
    //         Label: 'Description',
    //         Value: 'test'
    //     },
    //     {
    //         Label: 'Status',
    //         Value: ''
    //     }
    // ],
    UI.Facets                        : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'ContractDetails',
            Label : '{i18n>contractHeader}',
            Target: '@UI.FieldGroup#ContractDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'BuyerPayments',
            Label : '{i18n>buyerPaymentHeader}',
            Target: '@UI.FieldGroup#BuyerPaymentHeader',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'Tranches',
            Label : '{i18n>trancheHeader}',
            Target: '@UI.LineItem#trancheHeader',
        },
    // {
    //     $Type : 'UI.ReferenceFacet',
    //     ID    : 'Documentary',
    //     Label : '{i18n>documentaryHeader}',
    //     Target: 'documentary/@UI.LineItem#documentaryHeader',
    // },
    ],

    UI.LineItem                      : [

        {
            $Type                : 'UI.DataField',
            Label                : '{i18n>status1}',
            Value                : STATUS,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '5rem'
            }
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>contractNo}',
            Value: CONTRACT_NO,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>companyCode}',
            Value: COMPANY_CODE,
        },

        {
            $Type: 'UI.DataField',
            Label: '{i18n>building}',
            Value: BUILDING,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>land}',
            Value: LAND,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>project}',
            Value: RE_UNIT,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>projectDesc}',
            Value: RE_UNIT_DESC,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>brokerNo}',
            Value: BROKER_NO,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>brokerName}',
            Value: BROKER_NAME,
        },

    ],
);
