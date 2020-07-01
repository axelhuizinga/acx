package src;

import react.apollo.Query;


import react.ReactComponent;
import react.ReactMacro.jsx;

class Child extends ReactComponent{
	override function render():ReactFragment {
		return jsx(
			<div>Hello World</div>
		);
		
	}
	
}