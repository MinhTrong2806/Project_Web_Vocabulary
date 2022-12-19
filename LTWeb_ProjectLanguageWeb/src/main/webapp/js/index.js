/** Biểu đồ */
const tag_data = document.querySelectorAll(".data");
const totalData = parseInt(document.querySelector("#dataTotal").value);


for (var i = 0; i < tag_data.length; i++) {
	let dataitem = tag_data[i];
	let numberData = dataitem.getAttribute("data");
	let data = numberData * (100 / totalData);
	let dataHeight = data * (300 / 100);
	console.log('data', dataHeight);
	//	dataitem.style.height = dataHeight+'px';
	//	dataitem.style.marginTop = 300-dataHeight + 'px';
	let animation = setInterval(up, 5);
	let increase = 0;
	function up() {
		if (increase >= dataHeight || increase > 300) {
			dataitem.style.height = increase + 'px';
			dataitem.style.marginTop = 300 - increase + 'px';
			clearInterval(animation);
		} else {
			increase++;
			dataitem.style.height = increase + 'px';
			dataitem.style.marginTop = 300 - increase + 'px';
		}
	}
}



/*Thời gian học*/

const timeReview = document.getElementById("inputTime");
const btnLink = document.getElementById("waiting");
const btnReview = document.getElementById("btn-review");

let toTimeArray = [];
if (timeReview != null) {
	toTimeArray = timeReview.value.split(/[-,:,' ',.]/);
}

if (toTimeArray.length) var countdown = setInterval(time, 10);
console.log(toTimeArray.length);
function time() {
	const dateNow = new Date();
	const yearR = parseInt(toTimeArray[0]);
	const monthR = parseInt(toTimeArray[1]) - 1;
	const dayR = parseInt(toTimeArray[2]);
	const hourR = parseInt(toTimeArray[3]);
	const minuteR = parseInt(toTimeArray[4]);
	const secondR = parseInt(toTimeArray[5]);
	const dateReview = new Date(yearR, monthR, dayR, hourR, minuteR, secondR);
	console.log(dateReview);
	let distance = dateReview - dateNow;
	
	const sec = 1000;
	const min = sec * 60;
	const hour = min * 60;
	const day = hour * 24;
	
	
	const hourText = Math.floor((distance%day)/hour);

	const minutesText = Math.floor((distance%hour)/min);

	const secondsText = Math.floor((distance%min)/sec);

	var timeHTML = document.getElementById("time");

	var h = `${('0' + hourText).slice(-2)}`;
	var m = `${('0' + minutesText).slice(-2)}`;
	var s = `${('0' + secondsText).slice(-2)}`;

	if (distance <= 0) {
		clearInterval(countdown);
		timeHTML.innerHTML = "Learn";
		btnReview.style.backgroundColor = '#58bd2f';
		if (btnLink != null) {
			btnLink.removeEventListener('click', noClick);
		}
		console.log("stop");
	}
	if (distance > 0) {
		if (btnLink != null) {
			btnLink.addEventListener('click', noClick);
		}
		btnReview.style.backgroundColor = '#929b8e';
		timeHTML.innerHTML = h + ":" + m + ":" + s;
	}
}
function noClick(event) {
	event.preventDefault();
}




