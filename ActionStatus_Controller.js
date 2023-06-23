// Funkcja dla kontroli akcji i statusow w trybie Insite read (InfoSheet)
function ActionStatus_Controller_READ() {     
    var ActionBox = document.getElementById("Action_ID");
    var ActionSpan = document.getElementById("Action_xml_value");
    var ActionCurrentValue = ActionSpan.innerHTML;

    if (ActionCurrentValue == "NOWY PROJEKT") {
        ActionBox.setAttribute("class","ActionNewJob_CSS");
    } else if (ActionCurrentValue == "WZNOWIENIE") {
        ActionBox.setAttribute("class","ActionPlateRenewal_CSS");
    } else if (ActionCurrentValue == "ZMIANA") {
        ActionBox.setAttribute("class","ActionPlateModification_CSS");
    } else if (ActionCurrentValue == "REKLAMACJA") {
        ActionBox.setAttribute("class","ActionPlateComplaint_CSS");
    };

    var StatusBox = document.getElementById("Status_ID");
    var StatusSpan = document.getElementById("Status_xml_value");
    var StatusCurrentValue = StatusSpan.innerHTML;

    if (StatusCurrentValue == "NOWE ZADANIE") {
        StatusBox.setAttribute("class","StatusJobCreated_CSS");
    } else if (StatusCurrentValue == "ZLECONO PROJEKT") {
        StatusBox.setAttribute("class","StatusProjectOrdered_CSS");
    } else if (StatusCurrentValue == "ZLECONO PROOF") {
        StatusBox.setAttribute("class","StatusProofOrdered_CSS");
    } else if (StatusCurrentValue == "ZLECONO MATRYCE") {
        StatusBox.setAttribute("class","StatusPlatesOrdered_CSS");
    } else if (StatusCurrentValue == "MATRYCE W PRODUKCJI") {
        StatusBox.setAttribute("class","StatusProductionInProgress_CSS");
    } else if (StatusCurrentValue == "GOTOWE") {
        StatusBox.setAttribute("class","StatusJobReady_CSS");
    } else if (StatusCurrentValue == "REZYGNACJA") {
        StatusBox.setAttribute("class","StatusJobCanceled_CSS");
    };};


// Funkcja dla kontroli akcji i statusow w trybie Insite edit (InfoSheet)
function ActionStatus_Controller_EDIT() {       
    var ActionBox = document.getElementById("Action_ID");
    var ActionSpan = document.getElementById("Action_xml_value");
    var ActionCurrentValue = ActionSpan.innerHTML;

    if (ActionCurrentValue == "NOWY PROJEKT") {
        ActionBox.setAttribute("class","ActionNewJob_CSS");
    } else if (ActionCurrentValue == "WZNOWIENIE") {
        ActionBox.setAttribute("class","ActionPlateRenewal_CSS");
    } else if (ActionCurrentValue == "ZMIANA") {
        ActionBox.setAttribute("class","ActionPlateModification_CSS");
    } else if (ActionCurrentValue == "REKLAMACJA") {
        ActionBox.setAttribute("class","ActionPlateComplaint_CSS");
    };

    var StatusBox = document.getElementById("Status_ID");
    var StatusSpan = document.getElementById("Status_xml_value");
    var StatusCurrentValue = StatusSpan.innerHTML;

    if (StatusCurrentValue == "NOWE ZADANIE") {
        StatusBox.setAttribute("class","StatusJobCreated_CSS");
    } else if (StatusCurrentValue == "ZLECONO PROJEKT") {
        StatusBox.setAttribute("class","StatusProjectOrdered_CSS");
    } else if (StatusCurrentValue == "ZLECONO PROOF") {
        StatusBox.setAttribute("class","StatusProofOrdered_CSS");
    } else if (StatusCurrentValue == "ZLECONO MATRYCE") {
        StatusBox.setAttribute("class","StatusPlatesOrdered_CSS");
    } else if (StatusCurrentValue == "MATRYCE W PRODUKCJI") {
        StatusBox.setAttribute("class","StatusProductionInProgress_CSS");
    } else if (StatusCurrentValue == "GOTOWE" && ActionCurrentValue == "NOWY PROJEKT" || StatusCurrentValue == "GOTOWE" && ActionCurrentValue == "ZMIANA") {
        StatusBox.setAttribute("class","StatusJobReady_CSS");
        document.getElementById("JobAdditionalActionTH").style.visibility ="visible"
        document.getElementById("JobAdditionalActionTD").style.visibility ="visible"
    } else if (StatusCurrentValue == "GOTOWE") {
        StatusBox.setAttribute("class","StatusJobReady_CSS");
    } else if (StatusCurrentValue == "REZYGNACJA") {
        StatusBox.setAttribute("class","StatusJobCanceled_CSS");
    };};