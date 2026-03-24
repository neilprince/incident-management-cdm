using ProcessorService as service from '../../srv/services';
annotate service.Customers with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'creditCardNo',
                Value : creditCardNo,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Incidents',
            ID : 'Incidents',
            Target : 'incidents/@UI.LineItem#Incidents',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Group Section',
            ID : 'GroupSection',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'General Info in group section',
                    ID : 'GeneralInfoingroupsection',
                    Target : '@UI.FieldGroup#GeneralInfoingroupsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Incidents in group section',
                    ID : 'Incidentsingroupsection',
                    Target : 'incidents/@UI.LineItem#Incidentsingroupsection',
                },
            ],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'lastName',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
    ],
    UI.FieldGroup #GeneralInfoingroupsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : firstName,
                Label : 'firstName',
            },
            {
                $Type : 'UI.DataField',
                Value : lastName,
                Label : 'lastName',
            },
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : 'email',
            },
        ],
    },
);

annotate service.Incidents with @(
    UI.LineItem #Incidents : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : status.descr,
        },
        {
            $Type : 'UI.DataField',
            Value : urgency.descr,
        },
    ],
    UI.LineItem #Incidentsingroupsection : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : status.descr,
        },
        {
            $Type : 'UI.DataField',
            Value : urgency.descr,
        },
    ],
);

