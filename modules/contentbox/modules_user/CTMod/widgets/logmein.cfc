/**
* A widget that shows you a 'hello world'
*/
component extends="contentbox.models.ui.BaseWidget" singleton{


fileAppend("c:\temp2\cc.txt", "I'm in (logmein.cfc):   #chr(10)##chr(13)#");

	function init(){
		// Widget Properties
		setName( "Log Me In" );
		setVersion( "1.0.0" );
		setDescription( "A login form widget" );
		setAuthor( "chris" );
		setAuthorURL( "chris.tessay.net" );
        setIcon( "info" );
        
		return this;
	}

	/**
	 * Give you a nice welcome in Spanish
	 * @titleLevel The H{level} to use, by default we use H2
	 */
	any function renderIt( string titleLevel="1"){
		var rString	= "";
        var event 			= getRequestContext();
        //var event 			= getRequestCollection();
        //var prc 			= event.getPrivateCollection();
        var prc 			= event.getCollection();
        //var cbSettings 		= event.getPrivateValue( name="cbtheme" );

//var x = getRequestContext();
//var y = x.getContext();
//var z = y['_securedURL'];
//    writeDump(#y['inputItem']#);
//writeDump(event.getPrivateValue( name="context._securedURL" ));
//writeDump(event);
//writeDump(getRequestContext());
//writeDump(prc['mydata']);



        /*if(isDefined("#prc.cbtheme#")) {
            fileWrite(expandPath("c:\dev\myFile.txt"), "#prc.cbtheme#");
        }*/
        //fileAppend(expandPath("c:\dev\myFile.txt"), "#z#");

		saveContent variable="rString"{
			//writeOutput( "<h#arguments.titleLevel#>Hi, I'm Chris.</h#arguments.titleLevel#>" );
            //writeOutput("<br>#form.inputItem#, context=#z#");
            //writeDump(prc);
            //<input type="hidden" name="_securedURL" id="securedURL" value="http://127.0.0.1:56213/dojo-hub" />
            //' & rc._secureURL & '
writeOutput('<div>
    <div class="col-md-4" id="login-wrapper">
            <div class="panel-heading">
                <h3 class="panel-title">
                   <i class="fa fa-key"></i> Login
                </h3>
            </div>
            <div class="panel-body">
                <form action="http://127.0.0.1:56213/cbadmin/security/doLogin" name="loginForm" method="POST" novalidate="novalidate" class="form-horizontal" id="loginForm">
					<input type="hidden" name="_securedURL" id="_securedURL" value="#session._mySecURL#">

	                <div class="form-group">
	                    <div class="col-md-12 controls">
	                        <input type="text" name="username" required="required" class="form-control" placeholder="Username" autocomplete="off" id="username" aria-required="true">
	                        <i class="fa fa-user"></i>
	                    </div>
	                </div>
	                <div class="form-group">
	                   <div class="col-md-12 controls">
	                        <input type="password" name="password" required="required" class="form-control" placeholder="Password" autocomplete="off" id="password" aria-required="true">
							
	                        <i class="fa fa-lock"></i>

	                    </div>
	                    <div class="col-md-12">
							<a href="http://127.0.0.1:56213/cbadmin/security/lostPassword" class="help-block">Lost Password?</a>
						</div>
	                </div>
	                <div class="form-group">
	                	<div class="col-md-12">
							<label class="checkbox">
								Remember me for<br>
	                            <select name="rememberMe" class="form-control input-sm" id="rememberMe"><option value="0">this session</option><option value="1">this day</option><option value="7">this week</option><option value="30">this month</option><option value="365">this year</option></select>
							</label>
						</div>
					</div>
	                <div class="form-group">
	                   <div class="col-md-12 text-center">
	                   		<button type="submit" class="btn btn-primary">
	                   			Login
	                   		</button>
	                    </div>
	                </div>

                </form>
            </div>
    </div>
</div>');
		}

		return rString;
	}

}