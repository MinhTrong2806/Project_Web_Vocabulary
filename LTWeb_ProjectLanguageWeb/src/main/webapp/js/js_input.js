/**
 * 
 */
/*const inputs = document.querySelectorAll(".input");
for (var i = 0; i < inputs.length; i++) {
	inputs[i].onkeydown = function(event) {
		let key = parseInt(this.getAttribute("data"));
		let nextkey = key + 1;
		let backkey = key - 1;
		let keyCode = event.key;
		if (keyCode != "Backspace") {
			//viet chu
			if (document.querySelector("#input-" + nextkey) != null) {
				if (document.querySelector("#input-" + nextkey).value == '') {
					if (this.value != "") document.querySelector("#input-" + nextkey).focus();
				}
			}else{
				
			}

		} else if (keyCode == "Backspace") {
			//xoa chu
			if(document.querySelector("#input-" + backkey)!=null){
				if (this.value == "") document.querySelector("#input-" + backkey).focus();
			}
		}
	};
}
*/
