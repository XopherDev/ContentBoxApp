<cfcomponent output="false">

<!--- Application settings --->
<cfset this.name = "CF-GoogleCal-V3-Examples" />
<cfset this.sessionManagement = true />
<cfset this.sessionTimeout = createTimeSpan(0,2,30,0) />


			<!--- CHANGE ME --->
			<!--- Fill in your own client_id, client_secret and scope --->
            <cfset application.zzz = "753988967177-o6n8k2sqo2lla5g2k77fj6gpsuep6sn5.apps.googleusercontent.com" />
			<cfset application.oauth2 = new zchris.oauth2.oauth2(
				client_id 		=   '753988967177-o6n8k2sqo2lla5g2k77fj6gpsuep6sn5.apps.googleusercontent.com',
				client_secret 	= 	'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',
				redirect_uri	=	'http://127.0.0.1:56213/online-booking',
				scope           =   'https://www.googleapis.com/auth/calendar',
				state			=	'',
				access_type		=	'offline', <!--- Use offline for refresh tokens --->
				approval_prompt	=	'force'
			) />



	<cffunction name="onApplicationStart" 
				access="public" 
				returntype="boolean"
				output="false"
				hint="Fires when the application is first created.">

			<!--- remove previous access and struct --->
			<cftry>		
			<cfset application.oauth2.revokeAccess()>
			<cfcatch>
			</cfcatch>
			</cftry>



		<cfreturn true />
	</cffunction>
 
	<cffunction
		name="onRequestStart"
		access="public"
		returntype="boolean"
		output="false"
		hint="Fires at first part of page processing.">
		
			<cfif structKeyExists(URL, 'reinit')>
				<cfset onApplicationStart() />
			</cfif>
	
		<cfreturn true />
	</cffunction>
 <cfset application.mix = "xxx" />

</cfcomponent>