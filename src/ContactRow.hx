package src;
import Crm.Contact;
//import Crm.*;

import react.apollo.Query;


import react.ReactComponent;
import react.ReactMacro.jsx;
/*
typedef Contact = {
	nodeId : ID,
	id : BigInt,
	mandator : BigInt,
	?creationDate : Datetime,
	?state : String,
	?useEmail : Bool,
	?companyName : String,
	?coField : String,
	?phoneCode : String,
	?phoneNumber : String,
	?fax : String,
	?title : String,
	?titlePro : String,
	?firstName : String,
	?lastName : String,
	?address : String,
	?address2 : String,
	?city : String,
	?postalCode : String,
	?countryCode : String,
	?gender : String,
	?dateOfBirth : Date,
	?mobile : String,
	?email : String,
	?comments : String,
	editedBy : BigInt,
	?merged : Array<BigInt>,
	?lastLocktime : Datetime,
	?owner : BigInt,
  }*/

class ContactRow extends ReactComponentOfProps<Contact>{
	override function render():ReactFragment {
		return jsx(
			<div>
			
			<span>${props.firstName}</span>
			<span>${props.lastName}</span>
			<span>${props.email}</span>
			<span>${props.creationDate}</span>
			</div>
			
		);
		
	}
	
}