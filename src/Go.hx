package src;
import react.apollo.ApolloProvider;
import graphql.ASTDefs.DocumentNode;
import graphql.parser.Parser;
import haxe.Log;
import js.Browser;
import js.Cookie;
import js.html.DivElement;
import me.cunity.debug.Out;
import react.ReactDOM;
import react.ReactMacro.jsx;
import me.cunity.debug.Out;

@:graphql(allMandQuery, '../gql/all-mandators.gql')
@:graphql(allEndReasons, '../gql/allEndReasons.gql')
class  Go{
	//var allMandQuery:DocumentNode;

	public static function main() {
		Log.trace = Out._trace;
		trace('Hi');
		/*var g:Go = new Go();
	} 

	public function new() {*/
	
		//var client:DefaultClient = new DefaultClient('https://ql.pitverwaltung.de/graphql');
		var client:DefaultClient = new DefaultClient('http://localhost:888/graphql');
		//var haxe
		//trace(client);
		trace(allMandQuery);
		trace(allMandQuery.definitions[0]);
		var ss:Dynamic = Reflect.field(allMandQuery.definitions[0],'selectionSet');
		trace(ss.selections[0].selectionSet.selections[0]);
		//trace(allMandQuery.definitions[0].selectionSet.selections);
		client.query({query:allMandQuery,fetchResults:true}).then(function (result) {
			//trace(result);
		}, function (error) {
			trace(error);			
		});

		client.query({query:allEndReasons,fetchResults:true}).then(function (result) {
			//trace(result);
			//trace(result.edges);
		}, function (error) {
			trace(error);			
		});		

		render(createRoot(), client);
	}	
	
	static function createRoot():DivElement
	{
		var root:DivElement = Browser.document.createDivElement();
		root.className = 'rootBox';
		Browser.document.body.appendChild(root);
		return root;
	}

	static function render(root:DivElement, client:DefaultClient)
	{

		var app = ReactDOM.render(jsx(
			<ApolloProvider client={client} >
				<App/>
			</ApolloProvider>
		), root);	
		
		trace('GO');
		
		#if (debug && react_hot)
		trace('calling ReactHMR.autoRefresh');
		ReactHMR.autoRefresh(app);
		#end
	}	

}