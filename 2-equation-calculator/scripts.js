function velocity() {
    var num1 = parseInt(document.getElementById("value1").value);
    var num2 = parseInt(document.getElementById("value2").value);

    var result = num1 / num2;

    document.getElementById("result").innerHTML = result;
}

function acceleration() {
    var num1 = parseInt(document.getElementById("value1").value);
    var num2 = parseInt(document.getElementById("value2").value);

    var result = num1 / (num2*num2);

    document.getElementById("result").innerHTML = result;
}

function density() {
    var num1 = parseInt(document.getElementById("value1").value);
    var num2 = parseInt(document.getElementById("value2").value);

    var result = num1/(num2*num2*num2);

    document.getElementById("result").innerHTML = result;
}
function area() {
    var num1 = parseInt(document.getElementById("value1").value);
    var num2 = parseInt(document.getElementById("value2").value);

    var result = num1*num2;

    document.getElementById("result").innerHTML = result;
}
function volume() {
    var num1 = parseInt(document.getElementById("value1").value);
    var num2 = parseInt(document.getElementById("value2").value);
    var num3 = parseInt(document.getElementById("value3").value);

    var result = num1*num2*num3;

    document.getElementById("result").innerHTML = result;
}