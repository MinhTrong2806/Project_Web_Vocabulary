/**
 * 
 */
 
 //click menu item
 
const menu = document.querySelectorAll(".menu-item")

for(var i = 0; i < menu.length; i++){
	menu[i].addEventListener('click', function(){
		this.classList.add("active")
	})
}

function resetBgMenu(){
	for(var i = 0; i < menu.length; i++){
	menu[i].style.backgroundColor = '#f2f2f2';
	}
}
 
// User 
$(function(){

    $(".fa-angle-down").click(function() {
  
      $('.form-user-packet').slideToggle(200);
  
   });
  
});

//Modal Account
const modal = document.getElementById("modalAccount");
const modalContent = document.querySelector('.modal-user-content')
const btnOpenModal = document.getElementById("openmodalAccount");
const btnCloseModal = document.getElementById("close");

//open modal
if(btnOpenModal != null) btnOpenModal.addEventListener("click", showModal)

function showModal (){
	modal.classList.add('open');
}

modal.addEventListener("click", closeModal);


modalContent.addEventListener('click', function(event){
	event.stopPropagation();
})

//Modal Achiements
const modalAchiements = document.getElementById("modalAchievements");
const btnOpenModalAchiements = document.getElementById("openModalAchievements");
const modalAchieContent = document.querySelector('#modal-achie-content');
const btnCloseAchie = document.getElementById("closeAchiement");

//open modal
if(btnOpenModalAchiements != null) btnOpenModalAchiements.addEventListener("click", showModalAchiements)

function showModalAchiements (){
	modalAchiements.classList.add('open');
}
modalAchiements.addEventListener("click", closeModal)

modalAchieContent.addEventListener('click', function(event){
	event.stopPropagation();
})


//Close modal
function closeModal (){
	modalAchiements.classList.remove('open');
	modal.classList.remove('open');
}

btnCloseModal.onclick = function (){
	closeModal();
}

btnCloseAchie.onclick = function (){
	closeModal();
}
