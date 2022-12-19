const btncheck = document.getElementById('check');
const card = document.getElementById('answer-card');
btncheck.addEventListener('click', noClick);
btncheck.style.backgroundColor = "#b6b6b6";

/* game */

class game {
	constructor() {
		this.ui = new ui();
		this.game = document.querySelector(".title").getAttribute("id");
		this.answerCurrent = null;
		this.canCheckAnswer = false;
		this.wordSound = document.getElementById('audioWordAnswer');
		this.review();
	}

	review() {

		if (this.game == "gameselect") {
			const btnsoundAnswer = document.querySelector("#btn-sound-answer");
			this.wordSound.play();
			btnsoundAnswer.addEventListener('click', noClick);
			this.ui.showQuestionUnderline();
			this.ui.onClickAnswer((answer) => {
				this.answerCurrent = answer;
				this.ui.setSelectAnwser(answer);
				this.canCheckAnswer = true;
			})

			this.ui.checkBtnClick(() => {
				if (this.canCheckAnswer) {
					this.wordSound.play();
					this.checkAnswerSelect(this.answerCurrent);
					btncheck.removeEventListener('click', noClick);
				}
			})

			btnsoundAnswer.onclick = function() {
				this.wordSound.play();
			}
		}

		if (this.game == "gamefill") {
			const btnsoundAnswer = document.querySelector("#btn-sound-answer");
			btnsoundAnswer.addEventListener('click', noClick);
			this.inputGame();
			document.getElementById('audioWordAnswer').play();
			document.getElementById('check').style.backgroundColor = 'rgb(1, 255, 51)';
			this.ui.checkBtnClick(() => {
				this.wordSound.play();
				this.checkAnswerFill();
				btncheck.removeEventListener('click', noClick);
			});

			btnsoundAnswer.onclick = function() {
				this.wordSound.play();
			}
		}

		if (this.game == "gamelisten") {
			document.getElementById('check').style.backgroundColor = 'rgb(1, 255, 51)';
			const btnsound = document.getElementById('btn-sound');
			const btnsoundslow = document.getElementById('btn-soundSlow');
			const btnsoundAnswer = document.querySelector("#btn-sound-answer");
			btnsoundAnswer.addEventListener('click', noClick);
			btnsound.addEventListener("click", noClick);
			btnsoundslow.addEventListener("click", noClick);
			
			this.wordSound.play();
			
			btnsound.onclick = function() {
				this.wordSound.playbackRate = 1;
				this.wordSound.play();
			}

			btnsoundslow.onclick = function() {
				this.wordSound.playbackRate = .5;
				this.wordSound.play();
			}

			btnsoundAnswer.onclick = function() {
				this.wordSound.playbackRate = 1;
				this.wordSound.play();
			}
			let mouse = 0;
			let input = document.getElementById('inputlisten');
			input.addEventListener("keypress", function(event) {
				if (event.key === "Enter") {
					mouse++;
					event.preventDefault();
					if(mouse == 1){
						this.wordSound.playbackRate = 1;
						this.wordSound.play();
						btncheck.removeEventListener('click', noClick);
						const answer = document.getElementById('inputlisten').value;
						const answerCorrect = document.getElementById('word-anwser').innerText;
						const answerTag = document.getElementById('answer-card');
						if (answer.toLowerCase() == answerCorrect.toLowerCase()) {
							answerTag.style.backgroundColor = '#23ac38';
							answerTag.style.display = 'block';
						} else {
							answerTag.style.backgroundColor = 'red';
							answerTag.style.display = 'block';
						}
					}else if(mouse == 2){
						document.getElementById('check').click();
					}
				}
			})
			this.ui.checkBtnClick(() => {
				document.getElementById('audioWordAnswer').play();
				btncheck.removeEventListener('click', noClick);
				this.checkAnswerListen();
			})
		}
	}

	checkAnswerSelect(answer) {
		const answerSelect = document.querySelector("#answer-" + answer);
		const answerTag = document.getElementById('answer-card');
		if (answerSelect.getAttribute("data") == 1) {
			answerTag.style.backgroundColor = '#23ac38';
			answerTag.style.display = 'block';
		} else {
			answerTag.style.backgroundColor = 'red';
			answerTag.style.display = 'block';
		}
		console.log('data-correct',answerSelect.getAttribute("data-correct"));
		document.getElementById("answerUser").value = answerSelect.getAttribute("data-correct");
	}




	checkAnswerFill() {
		let answer = "";
		let answerCorrect = document.getElementById("word-anwser").innerText;
		const answerTag = document.getElementById('answer-card');
		const inputs = document.querySelectorAll(".input");
		for (var i = 0; i < inputs.length; i++) {
			let input = inputs[i];
			if (input.getAttribute("type") == "text") {
				answer += input.value;
			} else {
				answer += " ";
			}
		}
		if (answer.toLowerCase() == answerCorrect.toLowerCase()) {
			answerTag.style.backgroundColor = '#23ac38';
			answerTag.style.display = 'block';
		} else {
			answerTag.style.backgroundColor = 'red';
			answerTag.style.display = 'block';
		}
		document.getElementById("answerUser").value = answer;
	}

	checkAnswerListen() {
		const answer = document.getElementById('inputlisten').value;
		const answerCorrect = document.getElementById('word-anwser').innerText;
		const answerTag = document.getElementById('answer-card');
		if (answer.toLowerCase() == answerCorrect.toLowerCase()) {
			answerTag.style.backgroundColor = '#23ac38';
			answerTag.style.display = 'block';
		} else {
			answerTag.style.backgroundColor = 'red';
			answerTag.style.display = 'block';
		}
		document.getElementById("answerUser").value = answer;
	}

	inputGame() {
		const inputs = document.querySelectorAll(".fillword");
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
					}
				} else if (keyCode == "Backspace") {
					//xoa chu
					if (document.querySelector("#input-" + backkey) != null) {
						if (this.value == "") document.querySelector("#input-" + backkey).focus();
					}
				}
			};
		}
	}
}



// draggeble 
function onDraggle({ movementX, movementY }) {
	let getStyle = window.getComputedStyle(card);
	let left = parseInt(getStyle.left);
	let top = parseInt(getStyle.top);
	card.classList.remove('pos-bottom');
	card.style.left = `${left + movementX}px`;
	card.style.top = `${top + movementY}px`;
}

card.addEventListener("mousedown", () => {
	card.classList.add('drag');
	card.addEventListener("mousemove", onDraggle)
})

card.addEventListener("mouseup", () => {
	card.classList.remove('drag');
	card.style.left = '0';
	card.removeEventListener("mousemove", onDraggle)
})

// end draggeble

function noClick(event) {
	event.preventDefault();
};


var gameReview = new game();