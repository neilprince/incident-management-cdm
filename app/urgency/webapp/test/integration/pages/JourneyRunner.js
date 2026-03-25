sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ns/urgency/test/integration/pages/UrgencyList",
	"ns/urgency/test/integration/pages/UrgencyObjectPage"
], function (JourneyRunner, UrgencyList, UrgencyObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ns/urgency') + '/test/flp.html#app-preview',
        pages: {
			onTheUrgencyList: UrgencyList,
			onTheUrgencyObjectPage: UrgencyObjectPage
        },
        async: true
    });

    return runner;
});

