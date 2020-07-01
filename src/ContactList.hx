package src;

import db.Schema.ContactsConnection;
import db.Schema.Contact;
import react.apollo.Query;


import react.ReactComponent;
import react.ReactMacro.jsx;

class ContactList extends ReactComponent{
	override function render():ReactFragment {
		
		trace(props);//result.data.allContacts.edges
		var cRows:Array<ReactFragment> = [];
		var cc:ContactsConnection = props.list;
		for(edge in cc.edges){
			cRows.push(renderContact(edge.node));
		}
		return cRows;
	 
	}
	
	function renderContact(c:Contact):ReactFragment{
		trace (c);
		//trace(Date)
		return jsx('
		<div className="dataRow" key=${c.id}>
			<span >${c.firstName} </span>
			<span >${c.lastName} </span>
			<span >Email: ${c.email} </span>
			<span >id: ${Std.string(c.id)} </span>
			<span >Birthdate: ${Std.string(c.dateOfBirth)} </span>
		</div>');
	}	

	function renderSomething(c:Contact):ReactFragment{
		trace (c);
		return //jsx(
		<div className="dataRow"> 
			<span >${c.firstName}</span>
			<span >${c.lastName}</span>
			<span >${Std.string(c.id)}</span>
		</div>;
		//);
	}
}