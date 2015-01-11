JsOsaDAS1.001.00bplist00�Vscript_M(function (global) {
	var app = Application.currentApplication();
	app.includeStandardAdditions = true;	

	var path = app.pathTo(this).toString();
	var basename = path.match(/[^/]+$/).toString();

	global.log = function () {
	  var args = [].map.call(arguments, ObjC.deepUnwrap);
		args.unshift(basename + ':');		
  	console.log.apply(console, args);
	  $.NSLog(args.join(' '));
	};
	
	global.log.clear = log.bind(null, '\x1b[H\x1b[2J');

	var main;
	try {
		// Loads a single JS file matching the basename of this script, minus the extension.
		// Reduced from: https://github.com/dtinth/JXA-Cookbook/wiki/Importing-Scripts
		main = $.NSFileManager.defaultManager.contentsAtPath(path.replace(/app$/, 'js'));
	  eval(ObjC.unwrap($.NSString.alloc.initWithDataEncoding(main, $.NSUTF8StringEncoding)));
	} catch (error) {
		log(error);
	}
}(this));                              c jscr  ��ޭ