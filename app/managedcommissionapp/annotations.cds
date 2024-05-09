using CommissionService as service from '../../srv/commissions_srv';

annotate service.CommissionsList with @(
    UI.SelectionFields            : [
        STATUS,
        DATE_SUBMITTED,
        COMPANY_CODE,
        RE_UNIT,
        BUILDING,
        LAND,
        BROKER_NO,
        CONTRACT_NO
    ],
    UI.FieldGroup #ContractDetails: {
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
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'Contracts',
        Label : '{i18n>contractHeader}',
        Target: '@UI.FieldGroup#ContractDetails',
    },

    ],
    UI.LineItem                   : [

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
