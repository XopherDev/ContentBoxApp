component {


// Module Properties
this.title                       = "MySecrets";
this.author                = "Ortus Solutions, Corp";
this.webURL                = "http://www.ortussolutions.com";
this.description           = "This is a secrets module";
this.version               = "1.0";

// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
this.viewParentLookup      = true;

// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
this.layoutParentLookup = true;

// Module Entry Point
this.entryPoint                  = "mysecrets";


function configure(){
      // parent settings
      parentSettings = {
      };
      // module settings - stored in modules.name.settings
      settings = {
      };
      // Layout Settings
      layoutSettings = {
             defaultLayout = ""
      };
      // datasources
      datasources = {
      };
      // web services
      webservices = {
      };
      // SES Routes
      routes = [
             // Module Entry Point
             {pattern="/", handler="home",action="index"},
             // Convention Route
             {pattern="/:handler/:action?"}
      ];
      // Custom Declared Points
      interceptorSettings = {
             customInterceptionPoints = ""
      };
      // Custom Declared Interceptors
      interceptors = [
      ];
      // Binder Mappings
      // binder.map( "Alias" ).to( "#moduleMapping#.model.MyService" );
}


/** Fired when the module is registered and activated.
*/
function onLoad(){
    // Let's add ourselves to the main menu in the Modules section
    var menuService = controller.getWireBox().getInstance( "AdminMenuService@cb" );
    // Add Menu Contribution
    menuService.addSubMenu(topMenu=menuService.MODULES,name="mySecrets",label="my Secrets",href="#menuService.buildModuleLink('mySecrets','home')#" );
}

/**
* Fired when the module is activated by ContentBox
*/
function onActivate(){
}

/** Fired when the module is unregistered and unloaded
*/
function onUnload(){
    // Let's remove ourselves to the main menu in the Modules section
    var menuService = controller.getWireBox().getInstance( "AdminMenuService@cb" );
    // Remove Menu Contribution
    menuService.removeSubMenu(topMenu=menuService.MODULES,name="mySecrets" );
}

/**
* Fired when the module is deactivated by ContentBox
*/
function onDeactivate(){
}


}