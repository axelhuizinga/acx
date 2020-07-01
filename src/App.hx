package src;

import react.ReactType;
import react.apollo.Query;

import react.ReactComponent;
import react.ReactMacro.jsx;
//import db.Schema.Query;

@:graphql('allContacts','../gql/allContacts.gql')
class App extends ReactComponent{
	override function render():ReactFragment {
		trace(allContacts);
		return jsx('
		<$Query query={allContacts}>
			{renderQuery}
		</$Query>
		');
		
	}

	function renderQuery(result:QueryResult<Any, Any>):ReactFragment {
		if (result.loading) return null;//"Loading...";
		if (result.error != null) return null;//"Error!";
		var qResult:Dynamic = result.data; 
		return jsx(
		<ContactList query={allContacts} list={qResult.allContacts} />);		
	}
}