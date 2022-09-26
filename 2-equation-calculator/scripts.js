

function velocity() {
    var num1 = parseInt(document.getElementById("Distance1").value);
    var num2 = parseInt(document.getElementById("Time1").value);

    var result = num1 / num2;

    document.getElementById("velocityResult").innerHTML = result;
}

function acceleration() {
    var num1 = parseInt(document.getElementById("Length1").value);
    var num2 = parseInt(document.getElementById("Time2").value);

    var result = num1 / (num2*num2);

    document.getElementById("accelerationResult").innerHTML = result;
}

function density() {
    var num1 = parseInt(document.getElementById("Mass1").value);
    var num2 = parseInt(document.getElementById("Length2").value);

    var result = num1/(num2*num2*num2);

    document.getElementById("densityResult").innerHTML = result;
}
function area() {
    var num1 = parseInt(document.getElementById("Length3").value);
    var num2 = parseInt(document.getElementById("Width1").value);

    var result = num1*num2;

    document.getElementById("areaResult").innerHTML = result;
}
function volume() {
    var num1 = parseInt(document.getElementById("Length4").value);
    var num2 = parseInt(document.getElementById("Width2").value);
    var num3 = parseInt(document.getElementById("Height1").value);

    var result = num1*num2*num3;

    document.getElementById("volumeResult").innerHTML = result;
}