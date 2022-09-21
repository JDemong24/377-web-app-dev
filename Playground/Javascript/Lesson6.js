function printSquares() {
    var items = "";

    var i = 1;
    while (i <= 10) {
        items += "<li>" + Math.pow(i, 2) + "</li>";
        i++;
    }

    document.getElementById("squares").innerHTML = items;
}

function guessName() {
    var guess = prompt("What's my name?");
    var count = 1;

    while (guess != "Bob") {
        guess = prompt("That's not it! Try again.");
        count++;
    }

    alert("You got it! It took you " + count + " guesses.");
}

function powersOfTwo(){
    var items = "";

    var i=0;
    while (i < 10) {
        items += "<li>" + Math.pow(2,i) + "</li>";
        i++;
    }
    document.getElementById("powersTwo").innerHTML = items;
}
    
function numGuess(){
    var guess=prompt("What's the number?");
    var secret = Math.floor(Math.random() * 100) + 1

    while(guess!=secret){
        if(guess<secret){
            guess = prompt("that's too low! What's the number?");
        }
        if(guess>secret){
            guess = prompt("that's too high! What's the number?");
        }
    }
    alert("You got it! the number was "+secret+".");
}