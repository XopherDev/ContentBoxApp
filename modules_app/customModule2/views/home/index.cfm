<!---
<cfif isDefined('rc.inputItem')>
    <cfset useItem = rc.inputItem />
<cfelse>
    <cfset useItem = 0 />
</cfif>

<cfquery name="showStuff" datasource="ctsitedb">
    select * from cb_contentStore
    where contentid = '#useItem#'
</cfquery>
--->

<h1>Welcome to my cool module page!</h1>
<cfset event = getRequestContext() />
<cfset rc = event.getPrivateCollection() />

<!---
<cfdump var="#rc['currentRoutedURL']#" />
--->



<cfscript>
        cfhttp(method="GET", charset="utf-8", url="https://jsonplaceholder.typicode.com/posts", result="result") {
            
        }
</cfscript>


<Cfdump var="#result#" />


<!---
<cfset prc.mydata = "hi, i'm chris" />
<cfset x = event.getPrivateCollection() />
<cfdump var="#rc#" />
<hr >boop<hr>
<cfdump var="#request#" />
--->




<!---
<cfdump var="#event.getPrivateValue(name='mydata')#" />
--->

<!---
<cfdump var="#showStuff#" />
--->

<cfscript>
 //useful to see wirebox stuff
 //writedump( wirebox.getBinder().getMappings().keyArray() )
</cfscript>
