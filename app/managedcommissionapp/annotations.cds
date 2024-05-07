using CommissionService as service from '../../srv/commissions_srv';
annotate service.CommissionsList with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'STATUS',
                Value : STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COMPANY_CODE',
                Value : COMPANY_CODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CONTRACT_NO',
                Value : CONTRACT_NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BUILDING',
                Value : BUILDING,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LAND',
                Value : LAND,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RE_UNIT',
                Value : RE_UNIT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RE_UNIT_DESC',
                Value : RE_UNIT_DESC,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BROKER_NO',
                Value : BROKER_NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BROKER_NAME',
                Value : BROKER_NAME,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BP_ROLE',
                Value : BP_ROLE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TRANCHE_NO',
                Value : TRANCHE_NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TRANCHE_VER',
                Value : TRANCHE_VER,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COMMISSION_BASE_AMT',
                Value : COMMISSION_BASE_AMT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COMMISSION_RATE',
                Value : COMMISSION_RATE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VAT_INCL',
                Value : VAT_INCL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COMMISSION_AMT',
                Value : COMMISSION_AMT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COMMISSION_PAID',
                Value : COMMISSION_PAID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'WITHHOLDING_TAX',
                Value : WITHHOLDING_TAX,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COMMISSION_NET',
                Value : COMMISSION_NET,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CONDITION_TYPE',
                Value : CONDITION_TYPE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SUBMITTED_BY',
                Value : SUBMITTED_BY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DATE_SUBMITTED',
                Value : DATE_SUBMITTED,
            },
            {
                $Type : 'UI.DataField',
                Label : 'APPROVED_BY',
                Value : APPROVED_BY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DATE_APPROVED',
                Value : DATE_APPROVED,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AP_DOC_NO',
                Value : AP_DOC_NO,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'CONTRACT_NO',
            Value : CONTRACT_NO,
        },
        {
            $Type : 'UI.DataField',
            Label : 'COMPANY_CODE',
            Value : COMPANY_CODE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'STATUS',
            Value : STATUS,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BUILDING',
            Value : BUILDING,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LAND',
            Value : LAND,
        },
    ],
);

