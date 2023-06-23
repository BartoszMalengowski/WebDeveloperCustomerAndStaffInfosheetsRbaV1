//   Sterowanie tabami i divami onload
function divTab_Controller() {
  var divRepro = document.getElementById("repro");
  var divProof = document.getElementById("proof");
  var divPlates = document.getElementById("plates");
  var divRenewal = document.getElementById("renewal");
  var divModification = document.getElementById("modification");
  var divComplaint = document.getElementById("complaint");
  var divSummary = document.getElementById("summary");
  var proofTab = document.getElementById("proofTab");
  var reproTab = document.getElementById("reproTab");
  var platesTab = document.getElementById("platesTab");
  var renewalTab = document.getElementById("renewalTab");
  var modificationTab = document.getElementById("modificationTab");
  var complaintTab = document.getElementById("complaintTab");
  var summaryTab = document.getElementById("summaryTab");
  var statusSpan = document.getElementById("Status_xml_value");
  var statusCurrentValue = statusSpan.innerHTML;
  var actionSpan = document.getElementById("Action_xml_value");
  var actionCurrentValue = actionSpan.innerHTML;

// dla NOWEGO

if (actionCurrentValue == "NOWY PROJEKT"
) {
  divRepro.style.visibility = "visible",
  reproTab.setAttribute("class", "enabled_tab"),
  reproTab.style.visibility = "visible";
  renewalTab.style.display = "none";
  modificationTab.style.display = "none";
  complaintTab.style.display = "none";
};

  if (actionCurrentValue == "NOWY PROJEKT" && statusCurrentValue == "ZLECONO PROOF"
  ) {
    divProof.style.visibility = "visible",
    divRepro.style.visibility = "hidden",
    proofTab.setAttribute("class", "enabled_tab"),
    reproTab.setAttribute("class", "disabled_tab");
    renewalTab.style.display = "none";
    modificationTab.style.display = "none";
    complaintTab.style.display = "none";
  };

  if (actionCurrentValue == "NOWY PROJEKT" && statusCurrentValue == "ZLECONO MATRYCE") {
    divPlates.style.visibility = "visible",
    divRepro.style.visibility = "hidden",
    platesTab.setAttribute("class", "enabled_tab"),
    reproTab.setAttribute("class", "disabled_tab");
    renewalTab.style.display = "none";
    modificationTab.style.display = "none";
    complaintTab.style.display = "none";
  };


  if (actionCurrentValue == "NOWY PROJEKT" && statusCurrentValue == "MATRYCE W PRODUKCJI" ||
  actionCurrentValue == "NOWY PROJEKT" && statusCurrentValue == "REZYGNACJA" ||
  actionCurrentValue == "NOWY PROJEKT" && statusCurrentValue == "GOTOWE") {
    divSummary.style.visibility = "visible",
    divRepro.style.visibility = "hidden",
    summaryTab.setAttribute("class", "enabled_tab"),
    reproTab.setAttribute("class", "disabled_tab");
    renewalTab.style.display = "none";
    modificationTab.style.display = "none";
    complaintTab.style.display = "none";
  };

  // dla WZNOWIEN
  if (actionCurrentValue == "WZNOWIENIE" 
  ) {
    divRenewal.style.visibility = "visible",
    renewalTab.setAttribute("class", "enabled_tab"),
    reproTab.style.display = "none",
    proofTab.style.display = "none";
    platesTab.style.display = "none";
    renewalTab.style.visibility = "visible";
    modificationTab.style.display = "none";
    complaintTab.style.display = "none";
  };

  if (actionCurrentValue == "WZNOWIENIE" && statusCurrentValue == "ZLECONO MATRYCE" ||
    actionCurrentValue == "WZNOWIENIE" && statusCurrentValue == "MATRYCE W PRODUKCJI" ||
  actionCurrentValue == "WZNOWIENIE" && statusCurrentValue == "REZYGNACJA" ||
  actionCurrentValue == "WZNOWIENIE" && statusCurrentValue == "GOTOWE") {
    divSummary.style.visibility = "visible",
    divRenewal.style.visibility = "hidden",
    summaryTab.setAttribute("class", "enabled_tab"),
    renewalTab.setAttribute("class", "disabled_tab");
    reproTab.style.display = "none",
    proofTab.style.display = "none";
    platesTab.style.display = "none";
    renewalTab.style.visibility = "visible";
    modificationTab.style.display = "none";
    complaintTab.style.display = "none";
  };


  // dla ZMIAN
  if (actionCurrentValue == "ZMIANA" 
  ) {
    divModification.style.visibility = "visible",
    modificationTab.setAttribute("class", "enabled_tab"),
    reproTab.style.display = "none",
    proofTab.style.visibility = "visible";
    platesTab.style.display = "none";
    renewalTab.style.display = "none";
    modificationTab.style.visibility = "visible";
    complaintTab.style.display = "none";
  };

  if (actionCurrentValue == "ZMIANA" && statusCurrentValue == "ZLECONO MATRYCE") {
    divModification.style.visibility = "visible",
    divRepro.style.visibility = "hidden",
    modificationTab.setAttribute("class", "enabled_tab"),
    reproTab.style.display = "none",
    proofTab.style.visibility = "visible";
    platesTab.style.display = "none";
    renewalTab.style.display = "none";
    modificationTab.style.visibility = "visible";
    complaintTab.style.display = "none";
  };

  if (actionCurrentValue == "ZMIANA" && statusCurrentValue == "MATRYCE W PRODUKCJI" ||
  actionCurrentValue == "ZMIANA" && statusCurrentValue == "REZYGNACJA" ||
  actionCurrentValue == "ZMIANA" && statusCurrentValue == "GOTOWE") {
    divSummary.style.visibility = "visible",
    divModification.style.visibility = "hidden",
    summaryTab.setAttribute("class", "enabled_tab"),
    modificationTab.setAttribute("class", "disabled_tab");
    reproTab.style.display = "none",
    proofTab.style.visibility = "visible";
    platesTab.style.display = "none";
    renewalTab.style.display = "none";
    modificationTab.style.visibility = "visible";
    complaintTab.style.display = "none";
  };



  // dla REKLAMACJI
  if (actionCurrentValue == "REKLAMACJA"
  ) {
    divComplaint.style.visibility = "visible",
    complaintTab.setAttribute("class", "enabled_tab"),
    reproTab.style.display = "none",
    proofTab.style.display = "none";
    platesTab.style.display = "none";
    renewalTab.style.display = "none";
    modificationTab.style.display = "none";
    complaintTab.style.visibility = "visible";
  };


  if (actionCurrentValue == "REKLAMACJA" && statusCurrentValue == "ZLECONO MATRYCE" ||
  actionCurrentValue == "REKLAMACJA" && statusCurrentValue == "MATRYCE W PRODUKCJI" ||
  actionCurrentValue == "REKLAMACJA" && statusCurrentValue == "REZYGNACJA" ||
  actionCurrentValue == "REKLAMACJA" && statusCurrentValue == "GOTOWE") {
    divSummary.style.visibility = "visible",
    divComplaint.style.visibility = "hidden",
    summaryTab.setAttribute("class", "enabled_tab"),
    complaintTab.setAttribute("class", "disabled_tab");
    reproTab.style.display = "none",
    proofTab.style.display = "none";
    platesTab.style.display = "none";
    renewalTab.style.display = "none";;
    modificationTab.style.display = "none";
    complaintTab.style.visibility = "visible";
  };
};



// sterowanie onClick v

function handleTabClick(strTabId) {
  document.getElementById("repro").style.visibility = "hidden";
  document.getElementById("proof").style.visibility = "hidden";
  document.getElementById("plates").style.visibility = "hidden";
  document.getElementById("renewal").style.visibility = "hidden";
  document.getElementById("modification").style.visibility = "hidden";
  document.getElementById("complaint").style.visibility = "hidden";
  document.getElementById("summary").style.visibility = "hidden";

  document.getElementById("reproTab").style.background = "#b8b8b8";
  document.getElementById("proofTab").style.background = "#b8b8b8";
  document.getElementById("platesTab").style.background = "#b8b8b8"
  document.getElementById("renewalTab").style.background = "#b8b8b8";;
  document.getElementById("modificationTab").style.background = "#b8b8b8";;
  document.getElementById("complaintTab").style.background = "#b8b8b8";;
  document.getElementById("summaryTab").style.background = "#b8b8b8";

  document.getElementById("reproTab").style.borderBottom = "solid dimgray 1px";
  document.getElementById("proofTab").style.borderBottom = "solid dimgray 1px";
  document.getElementById("platesTab").style.borderBottom = "solid dimgray 1px";
  document.getElementById("renewalTab").style.borderBottom = "solid dimgray 1px";
  document.getElementById("modificationTab").style.borderBottom = "solid dimgray 1px";
  document.getElementById("complaintTab").style.borderBottom = "solid dimgray 1px";
  document.getElementById("summaryTab").style.borderBottom = "solid dimgray 1px";

  document.getElementById("reproLabel").style.color = "#3F3F3F";
  document.getElementById("proofLabel").style.color = "#3F3F3F";
  document.getElementById("platesLabel").style.color = "#3F3F3F";
  document.getElementById("renewalLabel").style.color = "#3F3F3F";
  document.getElementById("modificationLabel").style.color = "#3F3F3F";
  document.getElementById("complaintLabel").style.color = "#3F3F3F";
  document.getElementById("summaryLabel").style.color = "#3F3F3F";

  document.getElementById(strTabId).style.visibility = "visible";
  document.getElementById(strTabId + "Tab").style.background = "#E3E3E3";
  document.getElementById(strTabId + "Tab").style.borderBottom = "#3F3F3F";
  document.getElementById(strTabId + "Label").style.color = "#3F3F3F";
}
