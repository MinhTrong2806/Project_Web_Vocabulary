/**
 * 
 */
const levels = document.querySelectorAll(".level");
const datas = document.querySelectorAll(".form-word");
 for(var i = 0; i < levels.length; i++){
	var levelItem = levels[i];
	
	levelItem.onclick = function(){
		setOld();
		this.children[0].style.fontSize = "20px";
		this.children[0].style.fontWeight = "bold";
		this.children[1].style.display = "block";
		this.children[2].style.marginTop = "-2px";
		this.children[2].style.height = "10px";

		if(this.id == "level-1"){
			datas[0].style.display = "block";
		}
		
		switch(this.id) {
		  case "level-1":
		    datas[0].style.display = "block";
		    break;
		  case "level-2":
		   datas[1].style.display = "block";
		    break;
		  case "level-3":
		    datas[2].style.display = "block";
		    break;
		  case "level-4":
		    datas[3].style.display = "block";
		    break;
		  case "level-5":
		    datas[4].style.display = "block";
		    break;
		  default:
		    datas[0].style.display = "block";
		}
	}
}

var setOld = function(){
	for(var i = 0; i < levels.length; i++){
	var levelItem = levels[i];
	var dataItem = datas[i];
	dataItem.style.display = "none";
	levelItem.children[0].style.fontSize = "16px";
	levelItem.children[0].style.fontWeight = "300";
	levelItem.children[1].style.display = "none";
	levelItem.children[2].style.height = "5px";
	levelItem.children[2].style.marginTop = "35px";
	}
}

 