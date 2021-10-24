//Theme toggle
let bodyChange = document.querySelector('body');
let myButtons = document.querySelector('.themeToggle');
myButtons.addEventListener('click', changeBackground);

function changeBackground(){
    bodyChange.classList.toggle ('bg_dark');
}
