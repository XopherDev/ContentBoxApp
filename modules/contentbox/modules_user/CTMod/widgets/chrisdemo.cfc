/**
* A widget that shows you a 'hello world'
*/
component extends="contentbox.models.ui.BaseWidget" singleton{



	function init(){
		// Widget Properties
		setName( "ChristopherDemo" );
		setVersion( "1.0.0" );
		setDescription( "A chris world widget" );
		setAuthor( "chris" );
		setAuthorURL( "chris.tessay.net" );
        setIcon( "info" );
        
		return this;
	}

	/**
	 * Give you a nice welcome in Spanish
	 * @titleLevel The H{level} to use, by default we use H2
	 */
	any function renderIt( string titleLevel="1" ){
		var rString	= "";
        var event 			= getRequestContext();
        var prc 			= event.getPrivateCollection();
        //var cbSettings 		= event.getPrivateValue( name="cbtheme" );

//var x = getRequestContext();
//var y = x.getContext();
//var z = y['inputItem'];
//    writeDump(#y['inputItem']#);
// writeDump(now());


        /*if(isDefined("#prc.cbtheme#")) {
            fileWrite(expandPath("c:\dev\myFile.txt"), "#prc.cbtheme#");
        fileAppend(expandPath("c:\dev\myFile.txt"), "#z#");

		saveContent variable="rString"{
			writeOutput( "<h#arguments.titleLevel#>Hi, I'm Chris.</h#arguments.titleLevel#>" );
            writeOutput("<br>#form.inputItem#, context=#z#");
            //writeDump(prc);
		}
        }*/
rString = "::" & serialize( prc["META"] ) & chr(10);
rString = rString & "::" & serialize( prc["currentLayout"] ) & chr(10);
rString = rString & "::" & serialize( prc["CBENTRYPOINT"] ) & chr(10);
rString = rString & "::" & serialize( prc["currentRoutedURL"] ) & chr(10);
rString = rString & "::" & serialize( prc["layoutmodule"] ) & chr(10);
rString = rString & "::" & serialize( prc["currentView"] ) & chr(10);
rString = rString & "::" & serialize( prc["CBROOT"] ) & chr(10);
rString = rString & "::" & serialize( prc["currentRouteName"] ) & chr(10);
rString = rString & "::" & serialize( prc["layoutoverride"] ) & chr(10);
rString = rString & "::" & serialize( prc["CBTHEMERECORD"] ) & chr(10);
rString = rString & "::" & serialize( prc["currentRoutedModule"] ) & chr(10);
rString = rString & "::" & serialize( prc["CBWIDGETROOT"] ) & chr(10);
rString = rString & "::" & serialize( prc["CBSETTINGS"] ) & chr(10);
rString = rString & "::" & serialize( prc["COMMENTSCOUNT"] ) & chr(10);
//rString = rString & "::" & serialize( prc["CONTENTCACHEDATA"] ) & chr(10);
rString = rString & "::" & serialize( prc["cbox_incomingContextHash"] ) & chr(10);
rString = rString & "::" & serialize( prc["currentRoute"] ) & chr(10);
rString = rString & "::" & serialize( prc["CBADMINENTRYPOINT"] ) & chr(10);
rString = rString & "::" & serialize( prc["COMMENTS"] ) & chr(10);
//rString = rString & "::" & serialize( prc["OCURRENTAUTHOR"] ) & chr(10);
//rString = rString & "::" & serialize( prc["CBTHEME"] ) & chr(10);
//rString = rString & "::" & serialize( prc["CBTHEMEROOT"] ) & chr(10);
//rString = rString & "::" & serialize( prc["currentViewArgs"] ) & chr(10);
//rString = rString & "::" & serialize( prc["PAGE"] ) & chr(10);
//rString = rString & "::" & serialize( prc["viewModule"])  & chr(10);
		return rString;
	}

}