import js.html.XMLHttpRequest;
import js.lib.Promise;

class Fetch {
	var cB:Dynamic->Void;
	var param:Dynamic;
	public var xhr:XMLHttpRequest;
	public var url:String;

	public static function go(url:String, options:Dynamic, onLoaded:Dynamic->Void)
	{
		var f:Fetch = new Fetch(url);
		f.param = options;
		f.cB = onLoaded;
		f.load();
		return f.xhr;
	}

	public function  load() {
		xhr.open('POST', url, true);
		xhr.responseType = js.html.XMLHttpRequestResponseType.JSON;
	}

	public function new(url:String) {
		this.url = url;
		xhr  = new XMLHttpRequest();
	}
}