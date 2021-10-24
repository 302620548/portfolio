//The Calculatorr
let display='0';
let displayHistory=''
let operator=null;
let firstNumber= null;
let secondNumber= null;
let result= null;

let displayElement=document.querySelector('.display');
let historyElement=document.querySelector('.calc-history');
let buttonsElement=document.querySelector('.buttons');

buttonsElement.addEventListener('click', handleClick);
showDisplay();

function handleClick(event)
{
    const element=event.target;

    switch(element.className)
    {
        case 'btn-number':
            handleNumber(element);
            break;
        case 'btn-operator':
            handleOperator(element);
            break;
        case 'btn-equal':
            handleEqual(element);
            break;
        case 'btn-clear':
            handleClear(element);
            break;
        case 'btn-dot':
            handleDot(element);
            break;
    }
}

function handleNumber(el)
{
    let number=el.innerHTML;

    if(display==='0'){
        display=number;
    }
    else{
        display=display+number;
    }
    showDisplay();
} 

function handleOperator(el) {
    firstNumber = display;
    display = "0";

    operator=el.innerHTML;
    displayHistory=firstNumber;
    showHistory();
    showDisplay();
}

function handleDot(el) {
    let dot=el.innerHTML;
    if (!display.includes('.')) {
        display=display+dot;
    }
    showDisplay();
}

function handleEqual () {  

    secondNumber = display;
    display = "0";

    let one = parseFloat(firstNumber);
    let two = parseFloat(secondNumber);

    if (operator === "+") {
        result = one+two;
    }else if(operator === "−") {
        result = one-two;
    }else if(operator === "x") {
        result = one*two;
    }else if(operator === "/") {
        result = one/two;
    }else {
        window.alert("error")
    }
    display = result;
    showDisplay();
    displayHistory='';
    showHistory();
}

function handleClear () {
    display='0';
    displayHistory=''
    operator= 0;
    firstNumber= 0;
    secondNumber= 0;
    historyElement.innerHTML = 0;
    displayElement.innerHTML = 0;
    showDisplay();
    showHistory();
}

function showDisplay(){
    displayElement.innerHTML=display;
}

function showHistory(){
    historyElement.innerHTML=displayHistory;
}