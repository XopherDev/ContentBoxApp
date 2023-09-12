<cfparam name="args.sidebar" default="true">
<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <!--- Page Includes --->#cb.quickView("_pageIncludes")#
    <!--- ContentBoxEvent --->#cb.event("cbui_beforeHeadEnd")#
    </head>
    <body>
    <!--- ContentBoxEvent --->#cb.event("cbui_afterBodyStart")#
    <!--- Header --->#cb.quickView(view='_header')#
    <!--- ContentBoxEvent --->#cb.event("cbui_beforeContent")#
    <!--- Main View ---><!--- #cb.mainView(args=args)# --->


	<!--- CT - I added this following to process a submitted page --->
	<cfset bodyHeaderStyle = "">
	<cfset bodyHeaderH1Style = "">
	<cfif cb.themeSetting( 'overrideHeaderColors' )>
		<cfif len( cb.themeSetting( 'overrideHeaderBGColor' ) )>
			<cfset bodyHeaderStyle = bodyHeaderStyle & 'background-color: ' & cb.themeSetting( 'overrideHeaderBGColor' ) & ';'>
		</cfif>
		
		<cfif len( cb.themeSetting( 'overrideHeaderTextColor' ) )>
			<cfset bodyHeaderH1Style = bodyHeaderH1Style & 'color: ' & cb.themeSetting( 'overrideHeaderTextColor' ) & ';'>
		</cfif>
	</cfif>	
	<div id="body-header" style="#bodyHeaderStyle#">
		<div class="container">
			<!--- Title --->
			<div class="underlined-title">
				<h1 style="#bodyHeaderH1Style#">#prc.page.getTitle()#</h1>
				<div class="text-divider5">
					<span></span>
				</div>
			</div>
		</div>
	</div>


<!--- Body Main --->
<section id="body-main">
	<div class="container">
    <div class="col-sm-12">
        You entered: <cfoutput>#rc.inputItem#</cfoutput>
					
				  
    </div>
    </div>
</section>




    <!--- ContentBoxEvent --->#cb.event("cbui_afterContent")#
    <!--- Footer --->#cb.quickView(view='_footer')#
    <!--- ContentBoxEvent --->#cb.event("cbui_beforeBodyEnd")#
    </body>
    </html>
</cfoutput>

<!---
<cfdump var="#rc#"/>
--->