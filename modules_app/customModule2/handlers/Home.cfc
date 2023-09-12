/**
 * The main module handler
 */
component{

    // Injection via property
    property name="funkyService" inject="FunkyService@customModuleName";
	property name="cbHelper" inject="CBHelper@cb";



/**
* Prepare a ContentBox UI request. This sets ups settings, theme, etc. This method is usually called
* automatically for you on the UI module. However, you can use it a-la-carte if you are building
* ajax or module extensions
* @layout An optional layout to set for you in the request, taken from the chosen theme
*/
CBHelper function prepareUIRequest( string layout ){};

	/**
	 * Module EntryPoint
	 */
	function index( event, rc, prc ){

		// Tell ColdBox to use the ContentBox theme
    	cbHelper.prepareUIRequest('pages');
		
        prc.datax = funkyService.getFunkyData();
		var mydata = arrayToStruct(prc.datax);

		event.setView( view="home/index", args=mydata );
		
        //event.renderData( data=prc.data, type="xml" );

		//writeDump(cbHelper);

	}

}





