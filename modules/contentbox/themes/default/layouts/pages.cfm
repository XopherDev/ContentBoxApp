<cfparam name="args.sidebar" default="true">
<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    
<cfscript>

//fileAppend("c:\temp2\cc.txt", "pages.cfm I'm in (pages.cfm):  #chr(10)##chr(13)#");
//fileAppend("c:\temp2\cc.txt", "pages.cfm rc._securedURL: #serialize(rc)#  #chr(10)##chr(13)#");
    //rc._securedURL = cgi.script_name;
        
    //rc._securedURL = "#prc.currentRoutedURL#";
    //writeDump(#prc.cbtheme#)
    //writeDump(#rc#)
    //writeDump(#prc.currentRoutedURL#)
</cfscript>
    <head>
    <!--- Page Includes --->#cb.quickView("_pageIncludes")#
    <!--- ContentBoxEvent --->#cb.event("cbui_beforeHeadEnd")#
    </head>
    <body>
    <!--- ContentBoxEvent --->#cb.event("cbui_afterBodyStart")#
    <!--- Header --->#cb.quickView(view='_header')#
    <!--- ContentBoxEvent --->#cb.event("cbui_beforeContent")#
    <!--- Main View --->#cb.mainView(args=args)#
    <!--- ContentBoxEvent --->#cb.event("cbui_afterContent")#
    <!--- Footer --->#cb.quickView(view='_footer')#
    <!--- ContentBoxEvent --->#cb.event("cbui_beforeBodyEnd")#
    </body>
    </html>
</cfoutput>
<!---
<cfdump var="#rc.inputItem#" />
--->
<cfscript>
var x = getRequestContext();
var y = x.getContext();
    //writeDump(#y['inputItem']#);
    //writeDump(x);

    //writeDump(#x.getContextValue(name='inputItem')#)
</cfscript>
