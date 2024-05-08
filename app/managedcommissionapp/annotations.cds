using CommissionService as service from '../../srv/commissions_srv';
annotate service.CommissionsList with @(
    UI.SelectionFields: [
       STATUS,
       DATE_SUBMITTED,
       COMPANY_CODE,       
       RE_UNIT,
       BUILDING,
       LAND,
       BROKER_NO,
       CONTRACT_NO
    ],
    UI.FieldGroup #ContractDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Company Code',
                Value : COMPANY_CODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Contract No.',
                Value : CONTRACT_NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Building',
                Value : BUILDING,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Land',
                Value : LAND,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RE - UNIT',
                Value : RE_UNIT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : RE_UNIT_DESC,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Broker No.',
                Value : BROKER_NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Broker Name',
                Value : BROKER_NAME,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BP Role',
                Value : BP_ROLE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tranche No.',
                Value : TRANCHE_NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Version',
                Value : TRANCHE_VER,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Commission Base Amt.',
                Value : COMMISSION_BASE_AMT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Commission Rate',
                Value : COMMISSION_RATE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VAT Inc.',
                Value : VAT_INCL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Commission Amount',
                Value : COMMISSION_AMT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Commission Paid',
                Value : COMMISSION_PAID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Withholding Tax',
                Value : WITHHOLDING_TAX,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Commission Net',
                Value : COMMISSION_NET,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Condition Type',
                Value : CONDITION_TYPE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Submitted By',
                Value : SUBMITTED_BY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date Submitted',
                Value : DATE_SUBMITTED,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Approved By',
                Value : APPROVED_BY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date Approved',
                Value : DATE_APPROVED,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AP Doc. No.',
                Value : AP_DOC_NO,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Contracts',
            Label : '{i18n>contractHeader}',
            Target : '@UI.FieldGroup#ContractDetails',
        },
                {
            $Type : 'UI.ReferenceFacet',
            ID : 'Details',
            Label : '{i18n>detailHeader}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>status}',
            Value : STATUS,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '5rem'
            }
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>contractno}',
            Value : CONTRACT_NO,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>companycode}',
            Value : COMPANY_CODE,
        },

        {
            $Type : 'UI.DataField',
            Label : 'Building',
            Value : BUILDING,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Land',
            Value : LAND,
        },
            {
                $Type : 'UI.DataField',
                Label : 'RE - UNIT',
                Value : RE_UNIT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : RE_UNIT_DESC,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Broker No.',
                Value : BROKER_NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Broker Name',
                Value : BROKER_NAME,
            },
            
    ],
);

