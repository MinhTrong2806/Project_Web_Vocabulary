
const word = document.getElementById("word").innerText;
const audio_word = document.getElementById("audio_word").innerText;
const cardword = document.getElementById("form-word-card");
const detail_word = document.getElementById("detail");

cardword.addEventListener("click", ()=>{
	detail_word.style.display = "block";
	cardword.style.height = "500px";
})

class lessongame{
    constructor(){
        this.ui = new ui();
        this.currentWord = 0;
        this.mouse = 0;
        this.correctAnswer = 0;
        this.wrongAnswer = 0;
        this.wordSound = new Audio('./audio_word/'+audio_word)
        this.lesson();
    }
    lesson(){
		this.wordSound.play();
		this.ui.showScreen('form-1');
		
		this.ui.audioBtnClick(()=>{
			this.wordSound.playbackRate = 1;
			this.wordSound.play();
		})
		
		this.ui.audioSlowBtnClick(()=>{
			this.wordSound.playbackRate = 0.5;
			this.wordSound.play();
		})

        this.ui.onStartBtnClick(() => {
            this.mouse++;
            if(this.mouse==1){
                //chuyen qua input 
                this.ui.showScreenNew('form-1','form-2');
            }else if(this.mouse == 2){
                //kiem tra input
                this.checkAnwser();
                this.ui.showScreenNew('next', 'btn-nextWord');
            }else {
                //quay ve bai hoc moi
                this.mouse = 0;
                this.ui.hideScreen('form-2');
                document.getElementById('answer-card').style.display = 'none';
                document.getElementById('answer-card').style.backgroundColor = 'rgb(1, 255, 51)';
                document.getElementById('form-input').value = '';
                if(this.currentWord<=8){
                    this.ui.showScreen('form-1');
                    this.currentWord++;
                }else{
                    console.log('Hoan thanh khoa hoc');
                    console.log('Dap an dung :' + this.correctAnswer);
                    console.log('Dap an sai :' + this.wrongAnswer);
                }
            }
        })
    }
	
	
	
    checkAnwser(){
        const answer = document.getElementById('form-input').value;
        const answer_div = document.getElementById('answer-card');
        if(answer.toLowerCase() == word.toLowerCase()){
            this.correctAnswer++;
            answer_div.style.backgroundColor = '#23ac38';
            answer_div.style.display = 'block';
        }else{
            this.wrongAnswer++;
            answer_div.style.backgroundColor = 'red';
            answer_div.style.display = 'block';
        };
    }
    

    
}
var game = new lessongame();
