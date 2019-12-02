JsOsaDAS1.001.00bplist00�Vscript_�app = Application.currentApplication();
app.includeStandardAdditions = true;

ObjC.import("Cocoa");

function alert(text, informationalText) {
  var options = {};
  if (informationalText) options.message = informationalText;
  app.displayAlert(text, options);
}

function quotedForm(s) { 
  return "'" + s.replace(/'/g, "'\\''") + "'"
}

function open_file(p) {
  //Application("Finder").open(p);
	$.NSWorkspace.sharedWorkspace.openFile(p);

	//app.doShellScript("open " + quotedForm(p));
}

function ls_dir(p) {
	var a = $.NSFileManager.defaultManager.contentsOfDirectoryAtPathError(p, null);
	var rv = [];
	for (var i = 0; i < a.count; i++) {
		var name = ObjC.unwrap(a.objectAtIndex(i));
		if (name.charAt(0) !== '.') {
			rv.push(p + "/" + name);
		}
	}
	return rv;
}

function get_env(n) {
	var v = $.NSProcessInfo.processInfo.environment.objectForKey(n);
	return ObjC.unwrap(v);
}

function path_dirname(p) {
	var a = p.split('/');
	a.pop();
	var rv = a.join('/');
	if (!rv) return "/";
	else return rv;
}

function path_basename(p) {
	var a = p.split('/');
	if (a.length > 1) return a.pop();
	else return p;
}

function path_basename_ext(p) {
	var n = path_basename(p);
	var x = n.lastIndexOf('.');
	if (x > 0) return n.substr(x+1);
	else return "";
}

function path_basename_noext(p) {
	var n = path_basename(p);
	var x = n.lastIndexOf('.');
	if (x > 0) return n.substr(0, x);
	else return n;
}

function path_is_package(p) {
	return $.NSWorkspace.sharedWorkspace.isFilePackageAtPath(p);
}

function file_exists(p) {
	var isdir = Ref();
	var rv = $.NSFileManager.defaultManager.fileExistsAtPathIsDirectory(p, isdir);

	return (!isdir[0] && rv);
}

function directory_exists(p) {
	var isdir = Ref();
	var rv = $.NSFileManager.defaultManager.fileExistsAtPathIsDirectory(p, isdir);
	return (isdir[0] && rv);
}

function path_exists(p) {
	var isdir = false;
	var rv = $.NSFileManager.defaultManager.fileExistsAtPathIsDirectory(p, isdir);
	return rv;
}

function URL2Path(u) {
	var u = $.NSURL.alloc.initWithString(u);
	return ObjC.unwrap(u.path);
}

function find_wikipage(path, page) {
  var ls = ls_dir(path);
  for (var i = 0; i < ls.length; i++) {
    var it = ls[i];
	var bp = path_basename_noext(it);
	if (bp == page) {
		return it;
	}
  }
  return null;
}

function create_wikipage(path, page) {
  var tx = Application("TextSer");
  tx.createFromTemplate({destination:Path(path), name:page});
}

function open_wikipage(path) {
  open_file(path);
}

function handle_url(args) {
  HOME = get_env("HOME");
  WIKI_REPOSITORY = HOME + "/Documents/WikiBase";

  page = args['URL_HOST'];
	appid = args['APP_ID'];
	Application(appid).activate();
	
  sys = Application("System Events");
  proc = sys.processes.whose({frontmost: true})[0];

  if (proc.name() === "Finder") {
    finder = Application("Finder");
    url = finder.insertionLocation().url();//finder.windows[0].target().url();
	  path = URL2Path(url);
  }
  else {
    bm = Application("BookMarkable");
    bm.bookmarkForemostApplication({hidePanel:true});

    while (bm.working()) {
      delay(0.1);
    }

    url = bm.currentUrl();
	  path = bm.currentPath();
	  if (!path && url && url.indexOf("terminal-") === 0) {
	    path = URL2Path(url);
	  }
  }
  	
  if (!path) path = WIKI_REPOSITORY;
  else {
  	if(file_exists(path) || path_is_package(path)) path = path_dirname(path);
  }
	
  wpath = find_wikipage(path, page);
  if (!wpath) wpath = find_wikipage(WIKI_REPOSITORY, page);

  if (wpath) open_wikipage(wpath);
  else create_wikipage(path, page);
}                              �jscr  ��ޭ