
function calendarPicker(strField, elemName) {   
    var elem = "";    
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id = strField[i].id;
        var patt2 = new RegExp(elemName);
        if (patt2.test(elem_id)) {
            elem = elem_id;
            break;
        }
    }
    var cursX = window.event.screenX;
    var cursY = window.event.screenY;
    var strSpecs = 'width=250,height=220,resizable=no,toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,left=' + cursX + ',top=' + cursY;
    calendarPopup = window.open('DatePicker.aspx?field=' + elem, 'calendarPopup', strSpecs);
}

function donor_email_success_pop(mess) {
    alert(mess);
}

function donor_email_fail_pop(mess) {
    alert(mess);
}

function donation_form_Name_Validator(strField, elemName) {
    var elem = "";
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id = strField[i].id;
        var patt2 = new RegExp(elemName);
        if (patt2.test(elem_id)) {
            elem = elem_id;
            break;
        }
    }
    var sElemValue = document.getElementById(elem).value;
    // Do validation on the element
    var patt1 = /[~\!@#\$%\^\&\*\(\)\+\|\{\}\[\]<>\?\/\\\=\,;]/;
    if (patt1.test(sElemValue)) {
        alert("Please only type your name.");
        document.getElementById(elem).value = "";
        document.getElementById(elem).focus();
    }
}

function donation_form_Phone_Validator(strField, elemName) {
    var elem = "";
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id = strField[i].id;
        var patt2 = new RegExp(elemName);
        if (patt2.test(elem_id)) {
            elem = elem_id;
            break;
        }
    }
    var sElemValue = document.getElementById(elem).value;
    // Do validation on the element
    var patt1 = /[a-zA-Z~\!@#\$%\^\&\*\+\|\{\}\[\]<>\?\/\\\=\,;]/;
    if (patt1.test(sElemValue)) {
        alert("Please only type a phone number.");
        document.getElementById(elem).value = "";
        document.getElementById(elem).focus();
    }
}

function donation_form_Email_Validator(strField, elemName) {
    var elem = "";
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id = strField[i].id;
        var patt2 = new RegExp(elemName);
        if (patt2.test(elem_id)) {
            elem = elem_id;
            break;
        }
    }
    var sElemValue = document.getElementById(elem).value;
    // Do validation on the element
    var patt1 = /[~\!#\$%\^\&\*\+\|\{\}\[\]<>\?\/\\\=\,;]/;
    if (patt1.test(sElemValue)) {
        alert("Please only type an email address.");
        document.getElementById(elem).value = "";
        document.getElementById(elem).focus();
    }
}

function donation_form_Address_Validator(strField, elemName) {
    var elem = "";
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id = strField[i].id;
        var patt2 = new RegExp(elemName);
        if (patt2.test(elem_id)) {
            elem = elem_id;
            break;
        }
    }
    var sElemValue = document.getElementById(elem).value;
    // Do validation on the element
    var patt1 = /[\{\}<>;]/;
    if (patt1.test(sElemValue)) {
        alert("Please only type a street address.");
        document.getElementById(elem).value = "";
        document.getElementById(elem).focus();
    }
}

function donation_form_Comments_Validator(strField, elemName) {
    var elem = "";
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id = strField[i].id;
        var patt2 = new RegExp(elemName);
        if (patt2.test(elem_id)) {
            elem = elem_id;
            break;
        }
    }
    var sElemValue = document.getElementById(elem).value;
    // Do validation on the element
    var patt1 = /[\{\}<>;]/;
    if (patt1.test(sElemValue)) {
        alert("Please only type comments that do not contain these characters, '(', ')', '<', '>', or ';'.");
        document.getElementById(elem).value = "";
        document.getElementById(elem).focus();
    }
}

function donation_form_Date_NoType(strField, elemName) {
    var elem = "";
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id = strField[i].id;
        var patt2 = new RegExp(elemName);
        if (patt2.test(elem_id)) {
            elem = elem_id;
            break;
        }
    }
    document.getElementById(elem).value = "Click to Select";
    alert("Please click the button to select a date.");
}

function recur_date_calandar(strField, yearelemname, elemName) {
    var elem = "";
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id = strField[i].id;
        var patt2 = new RegExp(yearelemname);
        if (patt2.test(elem_id)) {
            elem = elem_id;
            break;
        }
    }
    var curyear = document.getElementById(elem).value;
    var elem2 = "";
    var i = 0;
    var mynum = strField.length;
    for (i = 0; i < mynum; i++) {
        var elem_id2 = strField[i].id;
        var patt2 = new RegExp(elemName);
        if (patt2.test(elem_id2)) {
            elem2 = elem_id2;
            break;
        }
    }
    var cursX = window.event.screenX;
    var cursY = window.event.screenY;
    var strSpecs = 'width=250,height=220,resizable=no,toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,left=' + cursX + ',top=' + cursY;
    calendarPopup = window.open('DatePicker.aspx?field=' + elem2 + '&field2=' + curyear, 'calendarPopup', strSpecs);
}

function recur_populatetextbox(elemName, thedate) {
    window.opener.document.getElementById(elemName).value = thedate;    
    window.close();
}

function recurrdatepop() {   
    var cursX = window.event.screenX;
    var cursY = window.event.screenY;
    var strSpecs = 'width=580,height=350,resizable=no,toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,left=' + cursX + ',top=' + cursY;
    calendarPopup = window.open('../../Recurring_Date.aspx', 'recurrdatepop', strSpecs);
}

function recur_textbox(elemName, thedate) {
    var control = window.opener.document.getElementById(elemName);
    control.value = thedate;
    control.style.visibility = "hidden";    
    window.close();
}

function Calendar_Date_Picker(elemName) {
    var cursX = window.event.screenX;
    var cursY = window.event.screenY;
    var strSpecs = 'width=250,height=220,resizable=no,toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,left=' + cursX + ',top=' + cursY;
    calendarPopup = window.open('../../DatePicker.aspx?field=' + elemName, 'calendarPopup', strSpecs);
}
