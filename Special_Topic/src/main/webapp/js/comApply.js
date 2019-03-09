var nameCheckOK = false,
    pwdCheckOK = false,
    dateCheckOK = false;
/*
$("document").ready(function(){
	
});
*/

$(function(){
	$("#acc").focus(function(){
		alert("Hi");
//		alert($("#acc").text);
	});
});

//Todo

/*
document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("name").addEventListener("input", nameRulesCheck);
    document.getElementById("pwd").addEventListener("input", pwdRulesCheck);
    document.getElementById("date").addEventListener("input", dateCheck);
    submitCheck();
});
*/    

function nameRulesCheck() {
    var checkOK = true;
    var name = document.getElementById("name").value;

    if (name.length >= 2)
        document.getElementById("msgNameErrCounter").style.display = "none";
    else {
        document.getElementById("msgNameErrCounter").style.display = "inline";
        checkOK = false;
    }

    if ((/^[\u4e00-\u9fff]+$/).test(name))
        document.getElementById("msgNameErrChinese").style.display = "none";
    else {
        document.getElementById("msgNameErrChinese").style.display = "inline";
        checkOK = false;
    }

    if (checkOK) {
        document.getElementById("msgNameOK").style.display = "inline";
    }
    else
    document.getElementById("msgNameOK").style.display = "none";
    
    nameCheckOK = checkOK;
    submitCheck();
}

function pwdRulesCheck() {
    var checkOK = true;
    var pwd = document.getElementById("pwd").value;

    if (pwd.length >= 6)
        document.getElementById("msgPwdErrCounter").style.display = "none";
    else {
        document.getElementById("msgPwdErrCounter").style.display = "inline";
        checkOK = false;
    }

    if ((/[A-Z]+/).test(pwd))
        document.getElementById("msgPwdErrUpper").style.display = "none";
    else {
        document.getElementById("msgPwdErrUpper").style.display = "inline";
        checkOK = false;
    }

    if ((/[a-z]+/).test(pwd))
        document.getElementById("msgPwdErrLower").style.display = "none";
    else {
        document.getElementById("msgPwdErrLower").style.display = "inline";
        checkOK = false;
    }

    if ((/[0-9]+/).test(pwd))
        document.getElementById("msgPwdErrNumber").style.display = "none";
    else {
        document.getElementById("msgPwdErrNumber").style.display = "inline";
        checkOK = false;
    }

    if ((/[!@#$%^&*]+/).test(pwd))
        document.getElementById("msgPwdErrSign").style.display = "none";
    else {
        document.getElementById("msgPwdErrSign").style.display = "inline";
        checkOK = false;
    }

    if ((/[ \t]+/).test(pwd)) {
        document.getElementById("msgPwdErrWhiteSpace").style.display = "inline";
        checkOK = false;
    }
    else
        document.getElementById("msgPwdErrWhiteSpace").style.display = "none";

        if (checkOK) {
            document.getElementById("msgPwdOK").style.display = "inline";
        }
        else
        document.getElementById("msgPwdOK").style.display = "none";
        
    pwdCheckOK=checkOK;
    submitCheck();
}

function dateCheck() {
    var date = document.getElementById("date").value;
    var checkOK = true;

    if ((/^\d{4}(\/)(((0)[1-9])|((1)[0-2]))(\/)(((0)[1-9])|[1-2][0-9]|(3)[0-1])$/).test(date)) {
        document.getElementById("msgDateErrFormat").style.display = "none";
        checkDate = new Date(date);
        if (date.substring(8, 10) == checkDate.getDate()) {
            document.getElementById("msgDateErrDay").style.display = "none";
            document.getElementById("msgDateOK").style.display = "inline";
        }
        else {
            document.getElementById("msgDateErrDay").style.display = "inline";
            document.getElementById("msgDateOK").style.display = "none";
            checkOK=false;
        }
    }
    else {
        document.getElementById("msgDateErrFormat").style.display = "inline";
        document.getElementById("msgDateOK").style.display = "none";
        checkOK=false;
    }
    
    dateCheckOK=checkOK;
    submitCheck();
}

function submitCheck() {
    if (nameCheckOK && pwdCheckOK && dateCheckOK)
    document.getElementById("submit").disabled = false;
    else
    document.getElementById("submit").disabled = true;
}
