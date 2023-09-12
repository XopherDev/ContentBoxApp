/**
* A widget that shows you a 'hello world'
*/
component extends="contentbox.models.ui.BaseWidget" singleton{



	function init(){
		// Widget Properties
		setName( "Online Booking Processing" );
		setVersion( "1.0.0" );
		setDescription( "An online booking app" );
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
var mydate = y['date'];
var mytime = y['time'];
var myName = y['inputItem'];
//    writeDump(#y['inputItem']#);


        /*if(isDefined("#prc.cbtheme#")) {
            fileWrite(expandPath("c:\dev\myFile.txt"), "#prc.cbtheme#");
        }*/
        //fileAppend(expandPath("c:\dev\myFile.txt"), "#z#");

        //cfhttp(method="GET", charset="utf-8", url="https://jsonplaceholder.typicode.com/posts", result="result") {
        //}
		var oauthObj = createObject("component", "zchris.oauth2.oauth2");
		var gc = createObject("component", "zchris.CF-GoogleCal-V3.googlecalendarv3").init(oauth2: application.oauth2);
		//var gc = createObject("component", "zchris.oauth2.oauth2");


		var startDateTime = parseDateTime(mydate & 'T' & mytime, "yyyy-MM-dd'T'HH:nn");
		var endDateTime = parseDateTime(mydate & 'T' & mytime, "yyyy-MM-dd'T'HH:nn");
		var timeZone = "America/Phoenix";

		//writeDump(serialize(gc));
		//writeDump(oauthObj.getTokenStruct())
		try {
			var qCal = gc.CreateEvent(calendarid: 'firebirdmma%40gmail.com', 
										summary: "Entry from DojoBoard.net", 
										start: startDateTime, 
										end: endDateTime, 
									timeZone: "#timeZone#");
									
		saveContent variable="rString"{
			//writeOutput( "<h#arguments.titleLevel#>Hi, I'm Chris.</h#arguments.titleLevel#>" );
            //writeOutput("<br>#form.inputItem#, context=#z#");
            //writeDump(prc);
            //writeDump( application.oauth2.GetLoginURL() );
			//writeDump(application.oauth2);
			//writeDump(application.oauth2.GetAccess_token());
			//writeDump(startDateTime);
			writeOutput("Thank you, #myName#, for submitting a calling time. We look forward to talkig to you soon.");
			writeOutput("Check out <a href=""#qCal.htmlLink#"" target=""_new"">the calendar</a>.");
			//writeDump(qCal);
		}
		}
		catch (any e) {
			
		saveContent variable="rString"{
			//writeOutput( "<h#arguments.titleLevel#>Hi, I'm Chris.</h#arguments.titleLevel#>" );
            //writeOutput("<br>#form.inputItem#, context=#z#");
            //writeDump(prc);
            //writeOutput("Error: " & e.message);
			writeDump(e);
			writeOutput("I'm sorry, an error occurred during you submission. Please call us at 987-654-3210 to set you time. Thank you.");
		}
		}





		return rString;
	}

}