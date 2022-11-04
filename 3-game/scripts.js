function alloff(){
    $(".dot").attr("visibility","hidden");
}
function p1reroll(){
    $(".p1").attr("visibility","hidden");
}
function p2reroll(){
    $(".p2").attr("visibility","hidden");
}
function deciderreroll(){
    $(".dec").attr("visibility","hidden");
}
$(document).ready(function(){
    alloff();
});
var player1lives=6;
var player2lives=6;
var decidernum;
var die1;
var die2;
var userInput;

function playerDie1(){
    p1reroll();
    var num=Math.floor(Math.random()*6+1);
    die1=num;
    if(num==1){
        $(dot1).attr("visibility","visible");
    }else if(num==2){
        $(dot4).attr("visibility","visible");
        $(dot7).attr("visibility","visible");
    }else if(num==3){
        $(dot4).attr("visibility","visible");
        $(dot7).attr("visibility","visible");
        $(dot1).attr("visibility","visible");
    }else if(num==4){
        $(dot4).attr("visibility","visible");
        $(dot7).attr("visibility","visible");
        $(dot6).attr("visibility","visible");
        $(dot5).attr("visibility","visible");
    }else if(num==5){
        $(dot4).attr("visibility","visible");
        $(dot7).attr("visibility","visible");
        $(dot6).attr("visibility","visible");
        $(dot5).attr("visibility","visible");
        $(dot1).attr("visibility","visible");
    }else{
        $(dot2).attr("visibility","visible");
        $(dot3).attr("visibility","visible");
        $(dot4).attr("visibility","visible");
        $(dot5).attr("visibility","visible");
        $(dot6).attr("visibility","visible");
        $(dot7).attr("visibility","visible");
    }
    return num;
}
function playerDie2(){
    p2reroll()
    var num=Math.floor(Math.random()*6+1);
    die2=num;
    if(num==1){
        $(dot12).attr("visibility","visible");
    }else if(num==2){
        $(dot42).attr("visibility","visible");
        $(dot72).attr("visibility","visible");
    }else if(num==3){
        $(dot42).attr("visibility","visible");
        $(dot72).attr("visibility","visible");
        $(dot12).attr("visibility","visible");
    }else if(num==4){
        $(dot42).attr("visibility","visible");
        $(dot72).attr("visibility","visible");
        $(dot62).attr("visibility","visible");
        $(dot52).attr("visibility","visible");
    }else if(num==5){
        $(dot42).attr("visibility","visible");
        $(dot72).attr("visibility","visible");
        $(dot62).attr("visibility","visible");
        $(dot52).attr("visibility","visible");
        $(dot12).attr("visibility","visible");
    }else{
        $(dot22).attr("visibility","visible");
        $(dot32).attr("visibility","visible");
        $(dot42).attr("visibility","visible");
        $(dot52).attr("visibility","visible");
        $(dot62).attr("visibility","visible");
        $(dot72).attr("visibility","visible");
    }
    return num;
}
function deciderDice(){
    var num=Math.floor(Math.random()*6+1);
    decidernum=num;
    alloff();
    if(num==1){
        $(dot13).attr("visibility","visible");
    }else if(num==2){
        $(dot43).attr("visibility","visible");
        $(dot73).attr("visibility","visible");
    }else if(num==3){
        $(dot43).attr("visibility","visible");
        $(dot73).attr("visibility","visible");
        $(dot13).attr("visibility","visible");
    }else if(num==4){
        $(dot43).attr("visibility","visible");
        $(dot73).attr("visibility","visible");
        $(dot63).attr("visibility","visible");
        $(dot53).attr("visibility","visible");
    }else if(num==5){
        $(dot43).attr("visibility","visible");
        $(dot73).attr("visibility","visible");
        $(dot63).attr("visibility","visible");
        $(dot53).attr("visibility","visible");
        $(dot13).attr("visibility","visible");
    }else{
        $(dot23).attr("visibility","visible");
        $(dot33).attr("visibility","visible");
        $(dot43).attr("visibility","visible");
        $(dot53).attr("visibility","visible");
        $(dot63).attr("visibility","visible");
        $(dot73).attr("visibility","visible");
    }
    return num;
}

function player1Roll(){
    playerDie1();
    if(die1*2!=decidernum){
        if(die1!=decidernum){
            player1lives=player1lives-1;
            $("#p1lives").text("Player 1: "+player1lives+" Lives.");
        }
    }else{
        player1lives=player1lives+2; 
    }
    $("#p1lives").text("Player 1: "+player1lives+" Lives.");
    lifeCheck();
}
function player2Roll(){
    playerDie2();
    if(die2*2!=decidernum){
        if(die2!=decidernum){
            player2lives=player2lives-1;
            $("#p2lives").text("Player 2: "+player2lives+" Lives.");
        }
    }else{
        player2lives=player2lives+2; 
    }
    $("#p2lives").text("Player 2: "+player2lives+" Lives.");
    lifeCheck();
}

function lifeCheck(){
    if(player1lives<=0){
        alert("User 2 Wins!")
    }
    if(player2lives<=0){
        alert("User 1 Wins!")
    }
}