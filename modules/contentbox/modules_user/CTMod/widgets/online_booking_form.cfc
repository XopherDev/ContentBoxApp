/**
* A widget that shows you a 'hello world'
*/
component extends="contentbox.models.ui.BaseWidget" singleton{
/*
```
<cfif structKeyExists(URL, 'code')>
	<!---
		We have the code from the authentication, 
		so let's obtain the access token.
	--->
	<cfset authResponse = application.oauth2.getAccessToken(code = URL.code) />
	<cfif authResponse.success>
		<cflocation url="index.cfm" addtoken="false">
	<cfelse>
		<!---
			Failure to authenticate.
			Handle this however you want to.
		--->
		failed authentication.
	</cfif>
</cfif>
```
*/



	function init(){
		// Widget Properties
		setName( "Online Booking Form" );
		setVersion( "1.0.0" );
		setDescription( "An online booking app form" );
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


var authResponse="";

if( structKeyExists(URL, 'code') ) {
    authResponse = application.oauth2.getAccessToken(code = URL.code);

    if( authResponse.success ) {
        location("http://127.0.0.1:56213/online-booking");
    }
    else {
        
    }
}


		var oauthObj = createObject("component", "zchris.oauth2.oauth2");
		var gc = createObject("component", "zchris.CF-GoogleCal-V3.googlecalendarv3").init(oauth2: oauthObj);


if( application.oauth2.isAuth() ) {
		saveContent variable="rString"{
    writeDump(oauthObj.getTokenStruct());
    writeOutput(now());
    writeOutput(application.oauth2.GetAccess_token());
    //application.oauth2.RevokeAccess();
    writeOutput("
  <style>
    /* Basic styling for the form */
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }
    h2 {
      text-align: center;
    }
    label {
      display: block;
      margin-top: 10px;
    }
    input[type=""text""],
    input[type=""email""],
    input[type=""tel""],
    input[type=""date""],
    input[type=""time""] {
      width: 100%;
      padding: 5px;
      font-size: 16px;
    }
    input[type=""submit""] {
      margin-top: 20px;
      padding: 10px 20px;
      font-size: 16px;
      background-color: ##4CAF50;
      color: white;
      border: none;
      cursor: pointer;
    }
    input[type=""submit""]:hover {
      background-color: ##45a049;
    }
  </style>

<h3>Here is where booking is done online.</h3>

  <h2>Book a Call</h2>
  <form method=""post"" action=""online-booking-done"">
    <label for=""name"">Name:</label>
    <input type=""text"" id=""inputItem"" name=""inputItem"" required>

    <label for=""phone"">Phone:</label>
    <input type=""tel"" id=""phone"" name=""phone"" required>

    <label for=""email"">Email:</label>
    <input type=""email"" id=""email"" name=""email"" required>

    <label for=""date"">Date:</label>
    <input type=""date"" id=""date"" name=""date"" required>

    <label for=""time"">Time Range:</label>
    <input type=""time"" id=""time"" name=""time"" required>

    <input type=""submit"" value=""Book Call"">
  </form>
");
		}    
}
else {

    saveContent variable="rString"{
        //writeDump( application.oauth2.getLoginURL() );
    writeOutput("
  <style>
    .box {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .box div {
        width: 200px;
        height: 100px;
        text-align:center;
    }
  </style>");

        writeOutput( "<div class=""box"">
  <div>
    <strong>Click the link to</strong>
    <h3><a href=""#application.oauth2.getLoginURL()#"">Authenticate with Google</a></h3>
    </div>
</div>" );
        writeOutput( "email: tempemlfordemo@gmail.com<br />" );
        writeOutput( "pw: d##asdJk848@^^8.WW5" );

        if( application.oauth2.isRefresh()) {
            writeOutput( "<a href=""refresh.cfm"">Refresh Token!" );
        } 		
    
    }

}


		return rString;
	}

}