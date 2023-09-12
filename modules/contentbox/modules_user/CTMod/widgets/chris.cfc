/**
* A widget that shows you a 'hello world'
*/
component extends="contentbox.models.ui.BaseWidget" singleton{



	function init(){
		// Widget Properties
		setName( "Christopher" );
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
        //var event 			= getRequestContext();
        //var prc 			= event.getPrivateCollection();
        //var cbSettings 		= event.getPrivateValue( name="cbtheme" );

var x = getRequestContext();
var y = x.getContext();
var z = y['inputItem'];
//    writeDump(#y['inputItem']#);


        /*if(isDefined("#prc.cbtheme#")) {
            fileWrite(expandPath("c:\dev\myFile.txt"), "#prc.cbtheme#");
        }*/
        fileAppend(expandPath("c:\dev\myFile.txt"), "#z#");

		saveContent variable="rString"{
			writeOutput( "<h#arguments.titleLevel#>Hi, I'm Chris.</h#arguments.titleLevel#>" );
            writeOutput("<br>#form.inputItem#, context=#z#");
            //writeDump(prc);
		}

		return rString;
	}

}