sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ns/customers/test/integration/pages/CustomersList",
	"ns/customers/test/integration/pages/CustomersObjectPage",
	"ns/customers/test/integration/pages/IncidentsObjectPage"
], function (JourneyRunner, CustomersList, CustomersObjectPage, IncidentsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ns/customers') + '/test/flp.html#app-preview',
        pages: {
			onTheCustomersList: CustomersList,
			onTheCustomersObjectPage: CustomersObjectPage,
			onTheIncidentsObjectPage: IncidentsObjectPage
        },
        async: true
    });

    return runner;
});

