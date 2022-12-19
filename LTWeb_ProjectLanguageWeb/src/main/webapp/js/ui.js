
class ui {
	constructor() {

	}

	showScreen(screenName) {
		let currentScreen = document.getElementById(screenName);
		currentScreen.style.display = 'block';
	}

	showScreenNew(screenHide, screenIns) {
		let screen = document.getElementById(screenHide);
		screen.style.display = 'none';
		let currentScreen = document.getElementById(screenIns);
		currentScreen.style.display = 'block';
	}

	hideScreen(screenHide) {
		let screen = document.getElementById(screenHide);
		screen.style.display = 'none';
	}

	onStartBtnClick(callback) {
		let startBtn = document.getElementById('next');
		startBtn.addEventListener('click', callback);
	}

	audioBtnClick(callback) {
		let audioBtn = document.getElementById('btn-sound');
		audioBtn.addEventListener('click', callback);
	}

	audioSlowBtnClick(callback) {
		let audioSlowBtn = document.getElementById('btn-soundSlow');
		audioSlowBtn.addEventListener('click', callback);
	}

	showQuestionUnderline() {
		let questionTag = document.getElementById('question').innerText;
		let word = document.getElementById('word-anwser').innerText;
		let indexWord = questionTag.indexOf(word);
		let lengthWord = word.length;
		let result1 = questionTag.substring(0, indexWord);
		let result2 = "<span style='text-decoration: underline;'>" + questionTag.substring(indexWord, indexWord + lengthWord) + "</span>";
		let result3 = questionTag.substring(indexWord + lengthWord);
		document.getElementById('question').innerHTML = result1 + result2 + result3;
	}

	checkBtnClick(callback) {
		let checkBtn = document.getElementById('check');
		checkBtn.addEventListener('click', callback);
	}

	onClickAnswer(callback) {
		document.getElementById("answer-1").addEventListener('click', () => callback(1));
		document.getElementById("answer-2").addEventListener('click', () => callback(2));
		document.getElementById("answer-3").addEventListener('click', () => callback(3));
		if (document.getElementById('answer-4') != null) document.getElementById("answer-4").addEventListener('click', () => callback(4));
	}
	setResetAnswer() {
		document.getElementById('answer-1').style.backgroundColor = '#fff';
		document.getElementById('answer-2').style.backgroundColor = '#fff';
		document.getElementById('answer-3').style.backgroundColor = '#fff';
		if (document.getElementById('answer-4') != null) document.getElementById('answer-4').style.backgroundColor = '#fff';
	}
	setSelectAnwser(answer) {
		this.setResetAnswer();
		let answerTag = document.getElementById('answer-' + answer);
		answerTag.style.backgroundColor = 'rgb(1, 255, 51)';
		document.getElementById('check').style.backgroundColor = 'rgb(1, 255, 51)';
	}

	checkEnter() {
		let input = document.getElementById('inputlisten');
		input.addEventListener("keypress", function(event) {
			if (event.key === "Enter") {
				event.preventDefault();
				return true;
			}
		})
	}

}