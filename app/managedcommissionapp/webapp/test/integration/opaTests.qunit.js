sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'managedcommissionapp/test/integration/FirstJourney',
		'managedcommissionapp/test/integration/pages/CommissionsListList',
		'managedcommissionapp/test/integration/pages/CommissionsListObjectPage',
		'managedcommissionapp/test/integration/pages/TrancheDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, CommissionsListList, CommissionsListObjectPage, TrancheDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('managedcommissionapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCommissionsListList: CommissionsListList,
					onTheCommissionsListObjectPage: CommissionsListObjectPage,
					onTheTrancheDetailsObjectPage: TrancheDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);