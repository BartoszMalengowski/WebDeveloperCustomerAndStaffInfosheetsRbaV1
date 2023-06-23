function ClassEnabler() {
    // GLOBAL VALUES  
    var statusSpan = document.getElementById("Status_xml_value");
    var statusCurrentValue = statusSpan.innerHTML;
    var actionSpan = document.getElementById("Action_xml_value");
    var actionCurrentValue = actionSpan.innerHTML;

    // PROJECT VALUES
    var enabledClassDateProject = document.querySelectorAll(".ProjectDiv_Enabled_DateInput");
    var enabledClassSelectProject = document.querySelectorAll(".ProjectDiv_Enabled_SelectInput");
    var enabledClassTextInputProject = document.querySelectorAll(".ProjectDiv_Enabled_TextInput");
    var enabledClassTextAreaProject = document.querySelectorAll(".ProjectDiv_Enabled_TextArea");
    var projectDate = document.getElementById("ProjectOrderDate_ID")

    if (statusCurrentValue == "NOWE ZADANIE" ||
        statusCurrentValue == "ZLECONO PROJEKT") {
        projectDate.setAttribute("class", "today ProjectDiv_Enabled_DateInput");
    } else if (statusCurrentValue == "ZLECONO PROOF" ||
        statusCurrentValue == "ZLECONO MATRYCE" ||
        statusCurrentValue == "MATRYCE W PRODUKCJI" ||
        statusCurrentValue == "GOTOWE" ||
        statusCurrentValue == "REZYGNACJA") {
        projectDate.setAttribute("class", "ProjectDiv_Disabled_DateInput");
        projectDate.disabled = "disabled";
    };


    // DATE INPUTS
    for (let i = 0; i < enabledClassDateProject.length; i++) {
        if (statusCurrentValue == "ZLECONO PROOF" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassDateProject[i].setAttribute("class", "ProjectDiv_Disabled_DateInput");
            enabledClassDateProject[i].disabled = "disabled";
        }
    }
    // SELECT INPUTS
    for (let i = 0; i < enabledClassSelectProject.length; i++) {
        if (statusCurrentValue == "ZLECONO PROOF" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassSelectProject[i].setAttribute("class", "ProjectDiv_Disabled_SelectInput");
            enabledClassSelectProject[i].disabled = "disabled";
        }
    }
    // TEXT INPUTS
    for (let i = 0; i < enabledClassTextInputProject.length; i++) {
        if (statusCurrentValue == "ZLECONO PROOF" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextInputProject[i].setAttribute("class", "ProjectDiv_Disabled_TextInput");
            enabledClassTextInputProject[i].disabled = "disabled";
        }
    }
    // TEXT AREA INPUTS
    for (let i = 0; i < enabledClassTextAreaProject.length; i++) {
        if (statusCurrentValue == "ZLECONO PROOF" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextAreaProject[i].setAttribute("class", "ProjectDiv_Disabled_TextArea");
            enabledClassTextAreaProject[i].disabled = "disabled";
        }
    }
    // Potwierdzam powyższe dane i zamawiam przygotowanie projektu do druku:
    if (statusCurrentValue == "ZLECONO PROJEKT" ||
        statusCurrentValue == "ZLECONO PROOF" ||
        statusCurrentValue == "ZLECONO MATRYCE" ||
        statusCurrentValue == "MATRYCE W PRODUKCJI" ||
        statusCurrentValue == "GOTOWE" ||
        statusCurrentValue == "REZYGNACJA") {
        document.getElementById("ProjectOrder_Activator").style.visibility = "hidden";
    }



    //  PROOF VALUES

    var chbx1 = document.getElementById("checkbox_proof1");
    var chbx2 = document.getElementById("checkbox_proof2");
    var chbx3 = document.getElementById("checkbox_proof3");
    var chbx4 = document.getElementById("checkbox_proof4");
    var chbx5 = document.getElementById("checkbox_proof5");
    var chbx6 = document.getElementById("checkbox_proof6");
    var chbx7 = document.getElementById("checkbox_proof7");
    var chbx8 = document.getElementById("checkbox_proof8");
    var chbx9 = document.getElementById("checkbox_proof9");
    var chbx10 = document.getElementById("checkbox_proof10");
    // var p1address = document.getElementById("Proof1_address");
    // var p1country = document.getElementById("Proof1_country")
    // var p2address = document.getElementById("Proof2_address");
    // var p2country = document.getElementById("Proof2_country")
    // var p3address = document.getElementById("Proof3_address");
    // var p3country = document.getElementById("Proof3_country")
    // var p4address = document.getElementById("Proof4_address");
    // var p4country = document.getElementById("Proof4_country")
    // var p5address = document.getElementById("Proof5_address");
    // var p5country = document.getElementById("Proof5_country")
    // var p6address = document.getElementById("Proof6_address");
    // var p6country = document.getElementById("Proof6country")
    // var p7address = document.getElementById("Proof7_address");
    // var p7country = document.getElementById("Proof7_country")
    // var p8address = document.getElementById("Proof8_address");
    // var p8country = document.getElementById("Proof8_country")
    // var p9address = document.getElementById("Proof9_address");
    // var p9country = document.getElementById("Proof9_country")
    // var p10address = document.getElementById("Proof10_address");
    // var p10country = document.getElementById("Proof10_country")

    // jesli wprowadzi adres zrob required dla kraju i checkboxa - na razie nie działa dla proofów 2+ 
    // p1address.oninput = function() {p1()};
    // function p1()  {
    //     chbx1.required = "required"
    //     p1country.required = "required"
    // }
    // p2address.oninput = function() {p2()};
    // function p2()  {
    //     chbx2.required = "required"
    //     p2country.required = "required"
    // }
    // p3address.oninput = function() {p3()};
    // function p3()  {
    //     chbx3.required = "required"
    //     p3country.required = "required"
    // }
    // p4address.oninput = function() {p4()};
    // function p4()  {
    //     chbx4.required = "required"
    //     p4country.required = "required"
    // }
    // p5address.oninput = function() {p5()};
    // function p5()  {
    //     chbx5.required = "required"
    //     p5country.required = "required"
    // }
    // p6address.oninput = function() {p6()};
    // function p6()  {
    //     chbx6.required = "required"
    //     p6country.required = "required"
    // }
    // p7address.oninput = function() {p7()};
    // function p7()  {
    //     chbx7.required = "required"
    //     p7country.required = "required"
    // }
    // p8address.oninput = function() {p8()};
    // function p8()  {
    //     chbx8required = "required"
    //     p8country.required = "required"
    // }
    // p9address.oninput = function() {p9()};
    // function p9()  {
    //     chbx9.required = "required"
    //     p9country.required = "required"
    // }
    // p10address.oninput = function() {p10()};
    // function p10()  {
    //     chbx10.required = "required"
    //     p10country.required = "required"
    // }

    // jesli proof zostal juz zamowiony wczesniej wylacz mozliwosc edycji juz zamowionego proofa
    if (chbx1.checked == false) {
        document.getElementById("Proof1_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof1_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx1.checked == true) {
        document.getElementById("Proof1_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof1_date").disabled = "disabled";
        document.getElementById("Proof1_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof1_ver").disabled = "disabled";
        document.getElementById("Proof1_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof1_address").disabled = "disabled";
        document.getElementById("Proof1_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof1_country").disabled = "disabled";
        document.getElementById("Proof1_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof1_quantity").disabled = "disabled";
        chbx1.disabled = "disabled";
    };


    if (chbx2.checked == false) {
        document.getElementById("Proof2_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof2_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx2.checked == true) {
        document.getElementById("Proof2_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof2_date").disabled = "disabled";
        document.getElementById("Proof2_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof2_ver").disabled = "disabled";
        document.getElementById("Proof2_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof2_address").disabled = "disabled";
        document.getElementById("Proof2_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof2_country").disabled = "disabled";
        document.getElementById("Proof2_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof2_quantity").disabled = "disabled";
        chbx2.disabled = "disabled";
    };

    if (chbx3.checked == false) {
        document.getElementById("Proof3_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof3_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx3.checked == true) {
        document.getElementById("Proof3_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof3_date").disabled = "disabled";
        document.getElementById("Proof3_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof3_ver").disabled = "disabled";
        document.getElementById("Proof3_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof3_address").disabled = "disabled";
        document.getElementById("Proof3_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof3_country").disabled = "disabled";
        document.getElementById("Proof3_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof3_quantity").disabled = "disabled";
        chbx3.disabled = "disabled";
    };

    if (chbx4.checked == false) {
        document.getElementById("Proof4_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof4_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx4.checked == true) {
        document.getElementById("Proof4_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof4_date").disabled = "disabled";
        document.getElementById("Proof4_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof4_ver").disabled = "disabled";
        document.getElementById("Proof4_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof4_address").disabled = "disabled";
        document.getElementById("Proof4_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof4_country").disabled = "disabled";
        document.getElementById("Proof4_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof4_quantity").disabled = "disabled";
        chbx4.disabled = "disabled";
    };

    if (chbx5.checked == false) {
        document.getElementById("Proof5_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof5_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx5.checked == true) {
        document.getElementById("Proof5_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof5_date").disabled = "disabled";
        document.getElementById("Proof5_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof5_ver").disabled = "disabled";
        document.getElementById("Proof5_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof5_address").disabled = "disabled";
        document.getElementById("Proof5_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof5_country").disabled = "disabled";
        document.getElementById("Proof5_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof5_quantity").disabled = "disabled";
        chbx5.disabled = "disabled";
    };

    if (chbx6.checked == false) {
        document.getElementById("Proof6_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof6_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx6.checked == true) {
        document.getElementById("Proof6_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof6_date").disabled = "disabled";
        document.getElementById("Proof6_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof6_ver").disabled = "disabled";
        document.getElementById("Proof6_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof6_address").disabled = "disabled";
        document.getElementById("Proof6_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof6_country").disabled = "disabled";
        document.getElementById("Proof6_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof6_quantity").disabled = "disabled";
        chbx6.disabled = "disabled";
    };

    if (chbx7.checked == false) {
        document.getElementById("Proof7_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof7_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx7.checked == true) {
        document.getElementById("Proof7_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof7_date").disabled = "disabled";
        document.getElementById("Proof7_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof7_ver").disabled = "disabled";
        document.getElementById("Proof7_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof7_address").disabled = "disabled";
        document.getElementById("Proof7_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof7_country").disabled = "disabled";
        document.getElementById("Proof7_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof7_quantity").disabled = "disabled";
        chbx7.disabled = "disabled";
    };

    if (chbx8.checked == false) {
        document.getElementById("Proof8_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof8_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx8.checked == true) {
        document.getElementById("Proof8_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof8_date").disabled = "disabled";
        document.getElementById("Proof8_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof8_ver").disabled = "disabled";
        document.getElementById("Proof8_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof8_address").disabled = "disabled";
        document.getElementById("Proof8_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof8_country").disabled = "disabled";
        document.getElementById("Proof8_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof8_quantity").disabled = "disabled";
        chbx8.disabled = "disabled";
    };

    if (chbx9.checked == false) {
        document.getElementById("Proof9_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof9_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx9.checked == true) {
        document.getElementById("Proof9_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof9_date").disabled = "disabled";
        document.getElementById("Proof9_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof9_ver").disabled = "disabled";
        document.getElementById("Proof9_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof9_address").disabled = "disabled";
        document.getElementById("Proof9_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof9_country").disabled = "disabled";
        document.getElementById("Proof9_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof9_quantity").disabled = "disabled";
        chbx9.disabled = "disabled";
    };

    if (chbx10.checked == false) {
        document.getElementById("Proof10_date").setAttribute("class", "today ProofDiv_Enabled_DateInput");
        document.getElementById("Proof10_ver").setAttribute("class", "ProofDiv_Enabled_SelectInput");
    } else if (chbx10.checked == true) {
        document.getElementById("Proof10_date").setAttribute("class", "ProofDiv_Disabled_DateInput");
        document.getElementById("Proof10_date").disabled = "disabled";
        document.getElementById("Proof10_ver").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof10_ver").disabled = "disabled";
        document.getElementById("Proof10_address").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof10_address").disabled = "disabled";
        document.getElementById("Proof10_country").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof10_country").disabled = "disabled";
        document.getElementById("Proof10_quantity").setAttribute("style", "cursor:not-allowed");
        document.getElementById("Proof10_quantity").disabled = "disabled";
        chbx10.disabled = "disabled";
    };



    var enabledClassDateProof = document.querySelectorAll(".ProofDiv_Enabled_DateInput");
    var enabledClassSelectProof = document.querySelectorAll(".ProofDiv_Enabled_SelectInput");
    var enabledClassTextInputProof = document.querySelectorAll(".ProofDiv_Enabled_TextInput");
    var enabledClassTextAreaProof = document.querySelectorAll(".ProofDiv_Enabled_TextArea");


    // DATE INPUTS
    for (let i = 0; i < enabledClassDateProof.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassDateProof[i].setAttribute("class", "ProofDiv_Disabled_DateInput");
            enabledClassDateProof[i].disabled = "disabled";
        }
    }
    // SELECT INPUTS
    for (let i = 0; i < enabledClassSelectProof.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassSelectProof[i].setAttribute("class", "ProofDiv_Disabled_TextInput");
            enabledClassSelectProof[i].disabled = "disabled";
        }
    }
    // TEXT INPUTS
    for (let i = 0; i < enabledClassTextInputProof.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextInputProof[i].setAttribute("class", "ProofDiv_Disabled_TextInput");
            enabledClassTextInputProof[i].disabled = "disabled";
        }
    }
    // TEXT AREA INPUTS
    for (let i = 0; i < enabledClassTextAreaProof.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextAreaProof[i].setAttribute("class", "ProofDiv_Disabled_TextArea");
            enabledClassTextAreaProof[i].disabled = "disabled";
        }
    }


    // PLATES VALUES

    var enabledClassDatePlates = document.querySelectorAll(".PlatesDiv_Enabled_DateInput");
    var enabledClassSelectPlates = document.querySelectorAll(".PlatesDiv_Enabled_SelectInput");
    var enabledClassTextInputPlates = document.querySelectorAll(".PlatesDiv_Enabled_TextInput");
    var enabledClassTextAreaPlates = document.querySelectorAll(".PlatesDiv_Enabled_TextArea");
    var platesDate = document.getElementById("PlatesOrderDate_ID")

    // DATE INPUTS
    for (let i = 0; i < enabledClassDatePlates.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassDatePlates[i].setAttribute("class", "PlatesDiv_Disabled_DateInput");
            enabledClassDatePlates[i].disabled = "disabled";
        }
    }
    // SELECT INPUTS
    for (let i = 0; i < enabledClassSelectPlates.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassSelectPlates[i].setAttribute("class", "PlatesDiv_Disabled_SelectInput");
            enabledClassSelectPlates[i].disabled = "disabled";
        }
    }
    // TEXT INPUTS
    for (let i = 0; i < enabledClassTextInputPlates.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextInputPlates[i].setAttribute("class", "PlatesDiv_Disabled_TextInput");
            enabledClassTextInputPlates[i].disabled = "disabled";
        }
    }
    // TEXT AREA INPUTS
    for (let i = 0; i < enabledClassTextAreaPlates.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextAreaPlates[i].setAttribute("class", "PlatesDiv_Disabled_TextArea");
            enabledClassTextAreaPlates[i].disabled = "disabled";
        }
    }
    // Potwierdzam powyższe dane i zamawiam przygotowanie projektu do druku:
    if (statusCurrentValue == "ZLECONO MATRYCE" ||
        statusCurrentValue == "MATRYCE W PRODUKCJI" ||
        statusCurrentValue == "GOTOWE" ||
        statusCurrentValue == "REZYGNACJA") {
        document.getElementById("PlatesOrder_Activator").style.visibility = "hidden";
    }
    if (statusCurrentValue == "ZLECONO PROJEKT" ||
        statusCurrentValue == "ZLECONO PROOF") {
        platesDate.setAttribute("class", "today PlatesDiv_Enabled_DateInput");
    } else if (statusCurrentValue == "NOWE ZADANIE" ||
        statusCurrentValue == "ZLECONO MATRYCE" ||
        statusCurrentValue == "MATRYCE W PRODUKCJI" ||
        statusCurrentValue == "GOTOWE" ||
        statusCurrentValue == "REZYGNACJA") {
        platesDate.setAttribute("class", "PlatesDiv_Disabled_DateInput");
        platesDate.disabled = "disabled";
    };

    // RENEWAL
    var enabledClassDateRen = document.querySelectorAll(".RenDiv_Enabled_DateInput");
    var enabledClassSelectRen = document.querySelectorAll(".RenDiv_Enabled_SelectInput");
    var enabledClassTextAreaRen = document.querySelectorAll(".RenDiv_Enabled_TextArea");
    var renDate = document.getElementById("RenewalOrderDate_ID")

    for (let i = 0; i < enabledClassDateRen.length; i++) {
        if (statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassDateRen[i].setAttribute("class", "RenDiv_Disabled_DateInput");
            enabledClassDateRen[i].disabled = "disabled";
        }
    }

    for (let i = 0; i < enabledClassTextAreaRen.length; i++) {
        if (statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextAreaRen[i].setAttribute("class", "RenDiv_Disabled_TextArea");
            enabledClassTextAreaRen[i].disabled = "disabled";
        }
    }

    for (let i = 0; i < enabledClassSelectRen.length; i++) {
        if (statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassSelectRen[i].setAttribute("class", "RenDiv_Disabled_SelectInput");
            enabledClassSelectRen[i].disabled = "disabled";
        }
    }

    if (statusCurrentValue == "NOWE ZADANIE") {
        renDate.setAttribute("class", "today RenDiv_Enabled_DateInput");
    }
    else if (statusCurrentValue == "ZLECONO MATRYCE" ||
        statusCurrentValue == "MATRYCE W PRODUKCJI" ||
        statusCurrentValue == "GOTOWE") {
        document.getElementById("RenewalOrder_Activator").style.visibility = "hidden";
    }


    // MOD
    var enabledClassDateMod = document.querySelectorAll(".ModDiv_Enabled_DateInput");
    var enabledClassSelectMod = document.querySelectorAll(".ModDiv_Enabled_SelectInput");
    var enabledClassTextAreaMod = document.querySelectorAll(".ModDiv_Enabled_TextArea");
    var modProjectDate = document.getElementById("ModificationOrderDate_ID");

    for (let i = 0; i < enabledClassDateMod.length; i++) {
        if (statusCurrentValue == "ZLECONO PROJEKT" ||
            statusCurrentValue == "ZLECONO PROOF" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassDateMod[i].setAttribute("class", "ModDiv_Disabled_DateInput");
            enabledClassDateMod[i].disabled = "disabled";
        }
    }

    for (let i = 0; i < enabledClassTextAreaMod.length; i++) {
        if (statusCurrentValue == "ZLECONO PROJEKT" ||
            statusCurrentValue == "ZLECONO PROOF" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextAreaMod[i].setAttribute("class", "ModDiv_Disabled_TextArea");
            enabledClassTextAreaMod[i].disabled = "disabled";
        }
    }

    for (let i = 0; i < enabledClassSelectMod.length; i++) {
        if (statusCurrentValue == "ZLECONO PROJEKT" ||
            statusCurrentValue == "ZLECONO PROOF" ||
            statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassSelectMod[i].setAttribute("class", "ModDiv_Disabled_SelectInput");
            enabledClassSelectMod[i].disabled = "disabled";
        }
    }

    if (actionCurrentValue == "ZMIANA" && statusCurrentValue == "NOWE ZADANIE") {
        modProjectDate.setAttribute("class", "today ModDiv_Enabled_DateInput");
        document.getElementById("ModificationProjectOrder_Activator").style.visibility = "visible";
        document.getElementById("ModificationPlatesOrder_Activator").style.visibility = "hidden";
      }
      else if (actionCurrentValue == "ZMIANA" && statusCurrentValue == "ZLECONO PROJEKT" ||
        actionCurrentValue == "ZMIANA" && statusCurrentValue == "ZLECONO PROOF") {
        document.getElementById("ModificationProjectOrder_Activator").style.visibility = "hidden";
        document.getElementById("ModificationPlatesOrder_Activator").style.visibility = "visible";
        document.getElementById("plate_order_confirmation_value").disabled = "disabled"
    }
    
      else if (statusCurrentValue == "ZLECONO MATRYCE" ||
        statusCurrentValue == "MATRYCE W PRODUKCJI" ||
        statusCurrentValue == "GOTOWE" ||
        statusCurrentValue == "REZYGNACJA") {
        document.getElementById("ModificationProjectOrder_Activator").style.visibility = "hidden";
        document.getElementById("ModificationProjectOrder_Activator").style.visibility = "hidden";
        document.getElementById("plate_order_confirmation_value").disabled = "disabled"
      }


    // COMPLAINT
    var enabledClassDateCom = document.querySelectorAll(".ComDiv_Enabled_DateInput");
    var enabledClassSelectCom = document.querySelectorAll(".ComDiv_Enabled_SelectInput");
    var enabledClassTextAreaCom = document.querySelectorAll(".ComDiv_Enabled_TextArea");
    var comDate = document.getElementById("ComplaintOrderDate_ID")

    for (let i = 0; i < enabledClassDateCom.length; i++) {
        if (statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassDateCom[i].setAttribute("class", "ComDiv_Disabled_DateInput");
            enabledClassDateCom[i].disabled = "disabled";
        }
    }

    for (let i = 0; i < enabledClassTextAreaCom.length; i++) {
        if (statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassTextAreaCom[i].setAttribute("class", "ComDiv_Disabled_TextArea");
            enabledClassTextAreaCom[i].disabled = "disabled";
        }
    }

    for (let i = 0; i < enabledClassSelectCom.length; i++) {
        if (statusCurrentValue == "ZLECONO MATRYCE" ||
            statusCurrentValue == "MATRYCE W PRODUKCJI" ||
            statusCurrentValue == "GOTOWE" ||
            statusCurrentValue == "REZYGNACJA") {
            enabledClassSelectCom[i].setAttribute("class", "ComDiv_Disabled_SelectInput");
            enabledClassSelectCom[i].disabled = "disabled";
        }
    }

    if (statusCurrentValue == "NOWE ZADANIE") {
        comDate.setAttribute("class", "today ComDiv_Enabled_DateInput");
    }
    else if (statusCurrentValue == "ZLECONO MATRYCE" ||
        statusCurrentValue == "MATRYCE W PRODUKCJI" ||
        statusCurrentValue == "GOTOWE") {
        document.getElementById("ComplaintOrder_Activator").style.visibility = "hidden";
    }


    // SUMMARY VALUES

    var prodDate = document.getElementById("ProductionDate_ID");
    var enabledClassDateSummary = document.querySelectorAll(".SummaryDiv_Enabled_DateInput");
    var enabledClassSelectSummary = document.querySelectorAll(".SummaryDiv_Enabled_SelectInput, .SummaryACTIVATORDiv_Enabled_SelectInput");
    var enabledClassTextInputSummary = document.querySelectorAll(".SummaryDiv_Enabled_TextInput");
    var enabledClassTextAreaSummary = document.querySelectorAll(".SummaryDiv_Enabled_TextArea");

    for (let i = 0; i < enabledClassDateSummary.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO PROJEKT" ||
            statusCurrentValue == "ZLECONO PROOF") {
            ;
            enabledClassDateSummary[i].setAttribute("class", "SummaryDiv_Disabled_DateInput");
            enabledClassDateSummary[i].disabled = "true";
        }
    }
    for (let i = 0; i < enabledClassSelectSummary.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO PROJEKT" ||
            statusCurrentValue == "ZLECONO PROOF") {
            enabledClassSelectSummary[i].disabled = "true";
        }
    }

    for (let i = 0; i < enabledClassTextInputSummary.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO PROJEKT" ||
            statusCurrentValue == "ZLECONO PROOF") {
            enabledClassTextInputSummary[i].setAttribute("class", "SummaryDiv_Disabled_TextInput");
            enabledClassTextInputSummary[i].disabled = "true";

            document.getElementById("JobName-Long2").setAttribute("class", "SummaryDiv_Enabled_TextInput");


        }
    }
    for (let i = 0; i < enabledClassTextAreaSummary.length; i++) {
        if (statusCurrentValue == "NOWE ZADANIE" ||
            statusCurrentValue == "ZLECONO PROJEKT" ||
            statusCurrentValue == "ZLECONO PROOF") {
            enabledClassTextAreaSummary[i].setAttribute("class", "SummaryDiv_Disabled_TextArea");
            enabledClassTextAreaSummary[i].disabled = "true";
        }
    }

    if (statusCurrentValue == "MATRYCE W PRODUKCJI") {
        prodDate.setAttribute("class", "today SummaryDiv_Enabled_DateInput");
    };

};

