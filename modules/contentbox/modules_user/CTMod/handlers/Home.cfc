/**
* ContentBox - A Modular Content Platform
* Copyright since 2012 by Ortus Solutions, Corp
* www.ortussolutions.com/products/contentbox
* ---
* Sample
*/
component{
	property name="cbHelper" inject="CBHelper@cb";

/**
* Prepare a ContentBox UI request. This sets ups settings, theme, etc. This method is usually called
* automatically for you on the UI module. However, you can use it a-la-carte if you are building
* ajax or module extensions
* @layout An optional layout to set for you in the request, taken from the chosen theme
*/
CBHelper function prepareUIRequest( string layout );



	function index(event,rc,prc){
        // Tell ColdBox to use the ContentBox theme
        cbHelper.prepareUIRequest('pages');
		event.setView( "home/index" );
	}

    function index2(event,rc,prc) {
        // Tell ColdBox to use the ContentBox theme
        cbHelper.prepareUIRequest('pages');
        /*cfdump (var="#prc#" );
        cfabort();*/
        event.setView( "home/index2" );
    }

}





