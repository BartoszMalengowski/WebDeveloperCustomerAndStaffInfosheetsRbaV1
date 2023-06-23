//client Customers

$(document).ready(function (e) {

    var clientCustomers = document.getElementById("clientCustomers_value");
    var clientCustomers_CurrentValue = clientCustomers.innerHTML;
  
    var options = [
  
      "",
      "customer1",
      "customer2",
      
  
    ];
  
    $("#clientCustomers_value").empty();
    $.each(options, function (i, p) {
      $("#clientCustomers_value").append($("<option></option>").val(p).html(p));
      $("#clientCustomers_value option[value='" + clientCustomers_CurrentValue + "']")
        .attr("selected", "selected");
    });
  });
  
//client Print Coordinator

$(document).ready(function (e) {

    var clientPrintCoordinator = document.getElementById("client_print_coordinator_value");
    var clientPrintCoordinator_CurrentValue = clientPrintCoordinator.innerHTML;
    var clientPrintCoordinator1 = document.getElementById("client_print_coordinator_value1");
    var clientPrintCoordinator_CurrentValue1 = clientPrintCoordinator1.innerHTML;
    var clientPrintCoordinator2 = document.getElementById("client_print_coordinator_value2");
    var clientPrintCoordinator_CurrentValue2 = clientPrintCoordinator2.innerHTML;

    var options = [
        
        "",
        "coordinator1",
        "coordinator2",
        
    ];

    $("#client_print_coordinator_value").empty();
    $.each(options, function (i, p) {
        $("#client_print_coordinator_value").append($("<option></option>").val(p).html(p));
        $("#client_print_coordinator_value option[value='" + clientPrintCoordinator_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#client_print_coordinator_value1").empty();
    $.each(options, function (i, p) {
        $("#client_print_coordinator_value1").append($("<option></option>").val(p).html(p));
        $("#client_print_coordinator_value1 option[value='" + clientPrintCoordinator_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
    $("#client_print_coordinator_value2").empty();
    $.each(options, function (i, p) {
        $("#client_print_coordinator_value2").append($("<option></option>").val(p).html(p));
        $("#client_print_coordinator_value2 option[value='" + clientPrintCoordinator_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
});

//client Profiles

$(document).ready(function (e) {

    var clientProfiles = document.getElementById("clientProfiles_value");
    var clientProfilesCurrentValue = clientProfiles.innerHTML;
    var clientProfiles1 = document.getElementById("clientProfiles_value1");
    var clientProfilesCurrentValue1 = clientProfiles1.innerHTML;
    var clientProfiles2 = document.getElementById("clientProfiles_value2");
    var clientProfilesCurrentValue2 = clientProfiles2.innerHTML;
    var clientProfiles3 = document.getElementById("clientProfiles_value3");
    var clientProfilesCurrentValue3 = clientProfiles3.innerHTML;
  
    var options = [
  
      "",
      "FLEXCEL NX",
      "profile1",
      "ULTRA NX",
      "profile2",
      
    ];
  
    $("#clientProfiles_value").empty();
    $.each(options, function (i, p) {
      $("#clientProfiles_value").append($("<option></option>").val(p).html(p));
      $("#clientProfiles_value option[value='" + clientProfilesCurrentValue + "']")
        .attr("selected", "selected");
      $('#clientProfiles_value option:contains("FLEXCEL NX")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#clientProfiles_value option:contains("ULTRA NX")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
    $("#clientProfiles_value1").empty();
    $.each(options, function (i, p) {
      $("#clientProfiles_value1").append($("<option></option>").val(p).html(p));
      $("#clientProfiles_value1 option[value='" + clientProfilesCurrentValue1 + "']")
        .attr("selected", "selected");
      $('#clientProfiles_value1 option:contains("FLEXCEL NX")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#clientProfiles_value1 option:contains("ULTRA NX")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
    $("#clientProfiles_value2").empty();
    $.each(options, function (i, p) {
      $("#clientProfiles_value2").append($("<option></option>").val(p).html(p));
      $("#clientProfiles_value2 option[value='" + clientProfilesCurrentValue2 + "']")
        .attr("selected", "selected");
      $('#clientProfiles_value2 option:contains("FLEXCEL NX")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#clientProfiles_value2 option:contains("ULTRA NX")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
    $("#clientProfiles_value3").empty();
    $.each(options, function (i, p) {
      $("#clientProfiles_value3").append($("<option></option>").val(p).html(p));
      $("#clientProfiles_value3 option[value='" + clientProfilesCurrentValue3 + "']")
        .attr("selected", "selected");
      $('#clientProfiles_value3 option:contains("FLEXCEL NX")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#clientProfiles_value3 option:contains("ULTRA NX")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
  });

  //client Machine

  $(document).ready(function (e) {

    var machine = document.getElementById("machine_value");
    var machine_CurrentValue = machine.innerHTML;

    var options = [
        
        "",
        "machine1",
        "machine2",
        
    ];

    $("#machine_value").empty();
    $.each(options, function (i, p) {
        $("#machine_value").append($("<option></option>").val(p).html(p));
        $("#machine_value option[value='" + machine_CurrentValue + "']")
            .attr("selected", "selected");
    })
});

//client Compensation Curve

$(document).ready(function (e) {

    var client_compensation_curve = document.getElementById("client_compensation_curve_value");
    var client_compensation_curve_CurrentValue = client_compensation_curve.innerHTML;

    var options = [
        
        "",
        "curve1",
        "curve2",
        
    ];

    $("#client_compensation_curve_value").empty();
    $.each(options, function (i, p) {
        $("#client_compensation_curve_value").append($("<option></option>").val(p).html(p));
        $("#client_compensation_curve_value option[value='" + client_compensation_curve_CurrentValue + "']")
            .attr("selected", "selected");

    })
});

//Samples

$(document).ready(function (e) {

    var samples = document.getElementById("samples_value");
    var samples_CurrentValue = samples.innerHTML;
    var samples1 = document.getElementById("samples_value1");
    var samples_CurrentValue1 = samples1.innerHTML;
    var samples2 = document.getElementById("samples_value2");
    var samples_CurrentValue2 = samples2.innerHTML;

    var options = [
        
        "",
        "proof agencyjny",
        "wydruk flekso",
        "produkt sklepowy",
        "inny wzorzec",
        "--BRAK WZORCA--"
        
    ];

    $("#samples_value").empty();
    $.each(options, function (i, p) {
        $("#samples_value").append($("<option></option>").val(p).html(p));
        $("#samples_value option[value='" + samples_CurrentValue + "']")
            .attr("selected", "selected");
    });

    $("#samples_value1").empty();
    $.each(options, function (i, p) {
        $("#samples_value1").append($("<option></option>").val(p).html(p));
        $("#samples_value1 option[value='" + samples_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
    $("#samples_value2").empty();
    $.each(options, function (i, p) {
        $("#samples_value2").append($("<option></option>").val(p).html(p));
        $("#samples_value2 option[value'" + samples_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
});

//Varnish

$(document).ready(function (e) {

    var varnish = document.getElementById("varnish_value");
    var varnish_CurrentValue = varnish.innerHTML;
    var varnish1 = document.getElementById("varnish_value1");
    var varnish_CurrentValue1 = varnish1.innerHTML;
    var varnish2 = document.getElementById("varnish_value2");
    var varnish_CurrentValue2 = varnish2.innerHTML;
  
    var options = [
      
      "",
      "Tak (awers)",
      "Tak (rewers)",
      "Nie",
      
    ];
  
    $("#varnish_value").empty();
    $.each(options, function (i, p) {
      $("#varnish_value").append($("<option></option>").val(p).html(p));
      $("#varnish_value option[value='" + varnish_CurrentValue + "']")
        .attr("selected", "selected");
    });
  
    $("#varnish_value1").empty();
    $.each(options, function (i, p) {
      $("#varnish_value1").append($("<option></option>").val(p).html(p));
      $("#varnish_value1 option[value='" + varnish_CurrentValue1 + "']")
        .attr("selected", "selected");
    });
  
    $("#varnish_value2").empty();
    $.each(options, function (i, p) {
      $("#varnish_value2").append($("<option></option>").val(p).html(p));
      $("#varnish_value2 option[value='" + varnish_CurrentValue2 + "']")
        .attr("selected", "selected");
    });
  });

  //White

  $(document).ready(function (e) {

    var white = document.getElementById("white_value");
    var white_CurrentValue = white.innerHTML;
    var white1 = document.getElementById("white_value1");
    var white_CurrentValue1 = white1.innerHTML;
    var white2 = document.getElementById("white_value2");
    var white_CurrentValue2 = white2.innerHTML;
  
    var options = [
      
      "",
      "Tak",
      "Tak x2",
      "Nie",
      
    ];
  
    $("#white_value").empty();
    $.each(options, function (i, p) {
      $("#white_value").append($("<option></option>").val(p).html(p));
      $("#white_value option[value='" + white_CurrentValue + "']")
        .attr("selected", "selected");
    });
  
    $("#white_value1").empty();
    $.each(options, function (i, p) {
      $("#white_value1").append($("<option></option>").val(p).html(p));
      $("#white_value1 option[value='" + white_CurrentValue1 + "']")
        .attr("selected", "selected");
    });
  
    $("#white_value2").empty();
    $.each(options, function (i, p) {
      $("#white_value2").append($("<option></option>").val(p).html(p));
      $("#white_value2 option[value='" + white_CurrentValue2 + "']")
        .attr("selected", "selected");
    });
  });

  //Plate Order Confirmation

  $(document).ready(function (e) {

    var plate_order_confirmation = document.getElementById("plate_order_confirmation_value");
    var plate_order_confirmation_CurrentValue = plate_order_confirmation.innerHTML;

    var plate_order_confirmation2 = document.getElementById("plate_order_confirmation_value2");
    var plate_order_confirmation_CurrentValue2 = plate_order_confirmation2.innerHTML;

    var options = [

        "",
        "Tak",
        "Nie",
        "Rezygnacja",

    ];

    $("#plate_order_confirmation_value").empty();
    $.each(options, function (i, p) {
        $("#plate_order_confirmation_value").append($("<option></option>").val(p).html(p));
        $("#plate_order_confirmation_value option[value='" + plate_order_confirmation_CurrentValue + "']")
            .attr("selected", "selected");
    })

    $("#plate_order_confirmation_value2").empty();
    $.each(options, function (i, p) {
        $("#plate_order_confirmation_value2").append($("<option></option>").val(p).html(p));
        $("#plate_order_confirmation_value2 option[value='" + plate_order_confirmation_CurrentValue2 + "']")
            .attr("selected", "selected");
    })
});

//Proof Version

$(document).ready(function (e) {

    var Proof1_ver = document.getElementById("Proof1_ver");
    var Proof1_ver_CurrentValue = Proof1_ver.innerHTML;
    var Proof2_ver = document.getElementById("Proof2_ver");
    var Proof2_ver_CurrentValue = Proof2_ver.innerHTML;
    var Proof3_ver = document.getElementById("Proof3_ver");
    var Proof3_ver_CurrentValue = Proof3_ver.innerHTML;
    var Proof4_ver = document.getElementById("Proof4_ver");
    var Proof4_ver_CurrentValue = Proof4_ver.innerHTML;
    var Proof5_ver = document.getElementById("Proof5_ver");
    var Proof5_ver_CurrentValue = Proof5_ver.innerHTML;
    var Proof6_ver = document.getElementById("Proof6_ver");
    var Proof6_ver_CurrentValue = Proof6_ver.innerHTML;
    var Proof7_ver = document.getElementById("Proof7_ver");
    var Proof7_ver_CurrentValue = Proof7_ver.innerHTML;
    var Proof8_ver = document.getElementById("Proof8_ver");
    var Proof8_ver_CurrentValue = Proof8_ver.innerHTML;
    var Proof9_ver = document.getElementById("Proof9_ver");
    var Proof9_ver_CurrentValue = Proof9_ver.innerHTML;
    var Proof10_ver = document.getElementById("Proof10_ver");
    var Proof10_ver_CurrentValue = Proof10_ver.innerHTML;
    var Pdf_ver = document.getElementById("Pdf_ver");
    var Pdf_ver_CurrentValue = Pdf_ver.innerHTML;
    var Nr_of_acceptPDF = document.getElementById("Nr_of_acceptPDF");
    var Nr_of_acceptPDF_CurrentValue = Nr_of_acceptPDF.innerHTML;
    


    var options = [
        
        "",
        "v1",
        "v2",
        "v3",
        "v4",
        "v5",
        "v6",
        "v7",
        "v8",
        "v9",
        "v10",
        "v11",
        "v12",
        "v13",
        "v14",
        "v15",
        
    ];

    $("#Proof1_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof1_ver").append($("<option></option>").val(p).html(p));
        $("#Proof1_ver option[value='" + Proof1_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof2_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof2_ver").append($("<option></option>").val(p).html(p));
        $("#Proof2_ver option[value='" + Proof2_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof3_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof3_ver").append($("<option></option>").val(p).html(p));
        $("#Proof3_ver option[value='" + Proof3_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof4_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof4_ver").append($("<option></option>").val(p).html(p));
        $("#Proof4_ver option[value='" + Proof4_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof5_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof5_ver").append($("<option></option>").val(p).html(p));
        $("#Proof5_ver option[value='" + Proof5_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof6_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof6_ver").append($("<option></option>").val(p).html(p));
        $("#Proof6_ver option[value='" + Proof6_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof7_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof7_ver").append($("<option></option>").val(p).html(p));
        $("#Proof7_ver option[value='" + Proof7_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof8_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof8_ver").append($("<option></option>").val(p).html(p));
        $("#Proof8_ver option[value='" + Proof8_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof9_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof9_ver").append($("<option></option>").val(p).html(p));
        $("#Proof9_ver option[value='" + Proof9_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof10_ver").empty();
    $.each(options, function (i, p) {
        $("#Proof10_ver").append($("<option></option>").val(p).html(p));
        $("#Proof10_ver option[value='" + Proof10_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Pdf_ver").empty();
    $.each(options, function (i, p) {
        $("#Pdf_ver").append($("<option></option>").val(p).html(p));
        $("#Pdf_ver option[value='" + Pdf_ver_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Nr_of_acceptPDF").empty();
    $.each(options, function (i, p) {
        $("#Nr_of_acceptPDF").append($("<option></option>").val(p).html(p));
        $("#Nr_of_acceptPDF option[value='" + Nr_of_acceptPDF_CurrentValue + "']")
            .attr("selected", "selected");
    });
});

//Couriers

$(document).ready(function (e) {

    var Proof1_courier = document.getElementById("Proof1_courier");
    var Proof1_courier_CurrentValue = Proof1_courier.innerHTML;
    var Proof2_courier = document.getElementById("Proof2_courier");
    var Proof2_courier_CurrentValue = Proof2_courier.innerHTML;
    var Proof3_courier = document.getElementById("Proof3_courier");
    var Proof3_courier_CurrentValue = Proof3_courier.innerHTML;
    var Proof4_courier = document.getElementById("Proof4_courier");
    var Proof4_courier_CurrentValue = Proof4_courier.innerHTML;
    var Proof5_courier = document.getElementById("Proof5_courier");
    var Proof5_courier_CurrentValue = Proof5_courier.innerHTML;
    var Proof6_courier = document.getElementById("Proof6_courier");
    var Proof6_courier_CurrentValue = Proof6_courier.innerHTML;
    var Proof7_courier = document.getElementById("Proof7_courier");
    var Proof7_courier_CurrentValue = Proof7_courier.innerHTML;
    var Proof8_courier = document.getElementById("Proof8_courier");
    var Proof8_courier_CurrentValue = Proof8_courier.innerHTML;
    var Proof9_courier = document.getElementById("Proof9_courier");
    var Proof9_courier_CurrentValue = Proof9_courier.innerHTML;
    var Proof10_courier = document.getElementById("Proof10_courier");
    var Proof10_courier_CurrentValue = Proof10_courier.innerHTML;



    var options = [

        "",
        "GLS",
        "DPD",
        "DHL",
        "Błyskawica",
        "Odbiór osobisty",
        "Transport firmowy",
        
    ];

    $("#Proof1_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof1_courier").append($("<option></option>").val(p).html(p));
        $("#Proof1_courier option[value='" + Proof1_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof2_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof2_courier").append($("<option></option>").val(p).html(p));
        $("#Proof2_courier option[value='" + Proof2_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof3_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof3_courier").append($("<option></option>").val(p).html(p));
        $("#Proof3_courier option[value='" + Proof3_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof4_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof4_courier").append($("<option></option>").val(p).html(p));
        $("#Proof4_courier option[value='" + Proof4_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof5_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof5_courier").append($("<option></option>").val(p).html(p));
        $("#Proof5_courier option[value='" + Proof5_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof6_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof6_courier").append($("<option></option>").val(p).html(p));
        $("#Proof6_courier option[value='" + Proof6_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof7_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof7_courier").append($("<option></option>").val(p).html(p));
        $("#Proof7_courier option[value='" + Proof7_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof8_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof8_courier").append($("<option></option>").val(p).html(p));
        $("#Proof8_courier option[value='" + Proof8_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof9_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof9_courier").append($("<option></option>").val(p).html(p));
        $("#Proof9_courier option[value='" + Proof9_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#Proof10_courier").empty();
    $.each(options, function (i, p) {
        $("#Proof10_courier").append($("<option></option>").val(p).html(p));
        $("#Proof10_courier option[value='" + Proof10_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
});

//Spec Couriers

$(document).ready(function (e) {

    var spec_courier = document.getElementById("spec_courier");
    var spec_courier_CurrentValue = spec_courier.innerHTML;
    var spec_courier1 = document.getElementById("spec_courier1");
    var spec_courier_CurrentValue1 = spec_courier1.innerHTML;

    var options = [

        "",
        "GLS",
        "DPD",
        "DHL",
        "Błyskawica",
        "Odbiór osobisty",
        "Transport firmowy",
        
    ];

    $("#spec_courier").empty();
    $.each(options, function (i, p) {
        $("#spec_courier").append($("<option></option>").val(p).html(p));
        $("#spec_courier option[value='" + spec_courier_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#spec_courier1").empty();
    $.each(options, function (i, p) {
        $("#spec_courier1").append($("<option></option>").val(p).html(p));
        $("#spec_courier1 option[value='" + spec_courier_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
});

//Print Type

$(document).ready(function (e) {

    var print_type = document.getElementById("print_type_value");
    var print_type_CurrentValue = print_type.innerHTML;

    var spec_print_type1 = document.getElementById("spec_print_type_value1");
    var spec_print_type_CurrentValue1 = spec_print_type1.innerHTML;
    var spec_print_type2 = document.getElementById("spec_print_type_value2");
    var spec_print_type_CurrentValue2 = spec_print_type2.innerHTML;
    var spec_print_type3 = document.getElementById("spec_print_type_value3");
    var spec_print_type_CurrentValue3 = spec_print_type3.innerHTML;
    var spec_print_type4 = document.getElementById("spec_print_type_value4");
    var spec_print_type_CurrentValue4 = spec_print_type4.innerHTML;
    var spec_print_type5 = document.getElementById("spec_print_type_value5");
    var spec_print_type_CurrentValue5 = spec_print_type5.innerHTML;
    var spec_print_type6 = document.getElementById("spec_print_type_value6");
    var spec_print_type_CurrentValue6 = spec_print_type6.innerHTML;
    var spec_print_type7 = document.getElementById("spec_print_type_value7");
    var spec_print_type_CurrentValue7 = spec_print_type7.innerHTML;
    var spec_print_type8 = document.getElementById("spec_print_type_value8");
    var spec_print_type_CurrentValue8 = spec_print_type8.innerHTML;
    var spec_print_type9 = document.getElementById("spec_print_type_value9");
    var spec_print_type_CurrentValue9 = spec_print_type9.innerHTML;
    var spec_print_type10 = document.getElementById("spec_print_type_value10");
    var spec_print_type_CurrentValue10 = spec_print_type10.innerHTML;
    var spec_print_type11 = document.getElementById("spec_print_type_value11");
    var spec_print_type_CurrentValue11 = spec_print_type11.innerHTML;
    var spec_print_type12 = document.getElementById("spec_print_type_value12");
    var spec_print_type_CurrentValue12 = spec_print_type12.innerHTML;
    var spec_print_type13 = document.getElementById("spec_print_type_value13");
    var spec_print_type_CurrentValue13 = spec_print_type13.innerHTML;
    var spec_print_type14 = document.getElementById("spec_print_type_value14");
    var spec_print_type_CurrentValue14 = spec_print_type14.innerHTML;
    var spec_print_type15 = document.getElementById("spec_print_type_value15");
    var spec_print_type_CurrentValue15 = spec_print_type15.innerHTML;

    var options = [
        
        "",
        "awers",
        "rewers",
        
    ];

    $("#print_type_value").empty();
    $.each(options, function (i, p) {
        $("#print_type_value").append($("<option></option>").val(p).html(p));
        $("#print_type_value option[value='" + print_type_CurrentValue + "']")
            .attr("selected", "selected");
    })
    $("#spec_print_type_value1").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value1").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value1 option[value='" + spec_print_type_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value2").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value2").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value2 option[value='" + spec_print_type_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value3").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value3").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value3 option[value='" + spec_print_type_CurrentValue3 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value4").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value4").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value4 option[value='" + spec_print_type_CurrentValue4 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value5").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value5").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value5 option[value='" + spec_print_type_CurrentValue5 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value6").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value6").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value6 option[value='" + spec_print_type_CurrentValue6 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value7").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value7").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value7 option[value='" + spec_print_type_CurrentValue7 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value8").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value8").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value8 option[value='" + spec_print_type_CurrentValue8 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value9").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value9").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value9 option[value='" + spec_print_type_CurrentValue9 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value10").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value10").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value10 option[value='" + spec_print_type_CurrentValue10 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value11").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value11").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value11 option[value='" + spec_print_type_CurrentValue11 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value12").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value12").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value12 option[value='" + spec_print_type_CurrentValue12 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value13").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value13").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value13 option[value='" + spec_print_type_CurrentValue13 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value14").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value14").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value14 option[value='" + spec_print_type_CurrentValue14 + "']")
            .attr("selected", "selected");
    });
    $("#spec_print_type_value15").empty();
    $.each(options, function (i, p) {
        $("#spec_print_type_value15").append($("<option></option>").val(p).html(p));
        $("#spec_print_type_value15 option[value='" + spec_print_type_CurrentValue15 + "']")
            .attr("selected", "selected");
    });
});

//Screen Ruling

$(document).ready(function (e) {

    var screen_ruling = document.getElementById("screen_ruling_value");
    var screen_ruling_CurrentValue = screen_ruling.innerHTML;
    var screen_ruling1 = document.getElementById("screen_ruling_value1");
    var screen_ruling_CurrentValue1 = screen_ruling1.innerHTML;

    var spec_screen_rulling1 = document.getElementById("spec_screen_rulling_value1");
    var spec_screen_rulling_CurrentValue1 = spec_screen_rulling1.innerHTML;
    var spec_screen_rulling2 = document.getElementById("spec_screen_rulling_value2");
    var spec_screen_rulling_CurrentValue2 = spec_screen_rulling2.innerHTML;
    var spec_screen_rulling3 = document.getElementById("spec_screen_rulling_value3");
    var spec_screen_rulling_CurrentValue3 = spec_screen_rulling3.innerHTML;
    var spec_screen_rulling4 = document.getElementById("spec_screen_rulling_value4");
    var spec_screen_rulling_CurrentValue4 = spec_screen_rulling4.innerHTML;
    var spec_screen_rulling5 = document.getElementById("spec_screen_rulling_value5");
    var spec_screen_rulling_CurrentValue5 = spec_screen_rulling5.innerHTML;
    var spec_screen_rulling6 = document.getElementById("spec_screen_rulling_value6");
    var spec_screen_rulling_CurrentValue6 = spec_screen_rulling6.innerHTML;
    var spec_screen_rulling7 = document.getElementById("spec_screen_rulling_value7");
    var spec_screen_rulling_CurrentValue7 = spec_screen_rulling7.innerHTML;
    var spec_screen_rulling8 = document.getElementById("spec_screen_rulling_value8");
    var spec_screen_rulling_CurrentValue8 = spec_screen_rulling8.innerHTML;
    var spec_screen_rulling9 = document.getElementById("spec_screen_rulling_value9");
    var spec_screen_rulling_CurrentValue9 = spec_screen_rulling9.innerHTML;
    var spec_screen_rulling10 = document.getElementById("spec_screen_rulling_value10");
    var spec_screen_rulling_CurrentValue10 = spec_screen_rulling10.innerHTML;
    var spec_screen_rulling11 = document.getElementById("spec_screen_rulling_value11");
    var spec_screen_rulling_CurrentValue11 = spec_screen_rulling11.innerHTML;
    var spec_screen_rulling12 = document.getElementById("spec_screen_rulling_value12");
    var spec_screen_rulling_CurrentValue12 = spec_screen_rulling12.innerHTML;
    var spec_screen_rulling13 = document.getElementById("spec_screen_rulling_value13");
    var spec_screen_rulling_CurrentValue13 = spec_screen_rulling13.innerHTML;
    var spec_screen_rulling14 = document.getElementById("spec_screen_rulling_value14");
    var spec_screen_rulling_CurrentValue14 = spec_screen_rulling14.innerHTML;
    var spec_screen_rulling15 = document.getElementById("spec_screen_rulling_value15");
    var spec_screen_rulling_CurrentValue15 = spec_screen_rulling15.innerHTML;

    var options = [

        "",
        "kreska",
        "80",
        "90",
        "100",
        "110",
        "120",
        "133",
        "141",
        "150",
        "175",
        "200",
        "ST175",
        "ST206",
        "ST225",
        "ST240"

    ];

    $("#screen_ruling_value").empty();
    $.each(options, function (i, p) {
        $("#screen_ruling_value").append($("<option></option>").val(p).html(p));
        $("#screen_ruling_value option[value='" + screen_ruling_CurrentValue + "']")
            .attr("selected", "selected");
    })
    $("#screen_ruling_value1").empty();
    $.each(options, function (i, p) {
        $("#screen_ruling_value1").append($("<option></option>").val(p).html(p));
        $("#screen_ruling_value1 option[value='" + screen_ruling_CurrentValue1 + "']")
            .attr("selected", "selected");
    })
    $("#spec_screen_rulling_value1").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value1").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value1 option[value='" + spec_screen_rulling_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value2").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value2").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value2 option[value='" + spec_screen_rulling_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value3").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value3").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value3 option[value='" + spec_screen_rulling_CurrentValue3 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value4").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value4").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value4 option[value='" + spec_screen_rulling_CurrentValue4 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value5").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value5").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value5 option[value='" + spec_screen_rulling_CurrentValue5 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value6").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value6").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value6 option[value='" + spec_screen_rulling_CurrentValue6 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value7").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value7").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value7 option[value='" + spec_screen_rulling_CurrentValue7 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value8").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value8").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value8 option[value='" + spec_screen_rulling_CurrentValue8 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value9").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value9").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value9 option[value='" + spec_screen_rulling_CurrentValue9 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value10").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value10").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value10 option[value='" + spec_screen_rulling_CurrentValue10 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value11").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value11").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value11 option[value='" + spec_screen_rulling_CurrentValue11 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value12").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value12").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value12 option[value='" + spec_screen_rulling_CurrentValue12 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value13").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value13").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value13 option[value='" + spec_screen_rulling_CurrentValue13 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value14").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value14").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value14 option[value='" + spec_screen_rulling_CurrentValue14 + "']")
            .attr("selected", "selected");
    });
    $("#spec_screen_rulling_value15").empty();
    $.each(options, function (i, p) {
        $("#spec_screen_rulling_value15").append($("<option></option>").val(p).html(p));
        $("#spec_screen_rulling_value15 option[value='" + spec_screen_rulling_CurrentValue15 + "']")
            .attr("selected", "selected");
    });
});

//fleksograf Graphics

$(document).ready(function (e) {
    var graphicsApproval = document.getElementById("graphics_value");
    var graphicsApprovalCurrentValue = graphicsApproval.innerHTML;
    var graphicsApproval1 = document.getElementById("graphics_value1");
    var graphicsApprovalCurrentValue1 = graphicsApproval1.innerHTML;
    var graphicsApproval2 = document.getElementById("graphics_value2");
    var graphicsApprovalCurrentValue2 = graphicsApproval2.innerHTML;
    var graphicsApproval3 = document.getElementById("graphics_value3");
    var graphicsApprovalCurrentValue3 = graphicsApproval3.innerHTML;
  
    var options = [
      
      "",
      "graphic1",
      "graphic2",
      "-",
      
  
    ];
    
    $("#graphics_value").empty();
    $.each(options, function (i, p) {
      $("#graphics_value").append($("<option></option>").val(p).html(p));
      $("#graphics_value option[value='" + graphicsApprovalCurrentValue + "']")
        .attr("selected", "selected")
  
      $('#graphics_value option:contains("Fleksograf studio prepress ")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#graphics_value option:contains("Graficy zewnętrzni")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
    
    $("#graphics_value1").empty();
    $.each(options, function (i, p) {
      $("#graphics_value1").append($("<option></option>").val(p).html(p));
      $("#graphics_value1 option[value='" + graphicsApprovalCurrentValue1 + "']")
        .attr("selected", "selected");
      $('#graphics_value1 option:contains("Fleksograf studio prepress")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#graphics_value1 option:contains("Graficy zewnętrzni")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
    
    $("#graphics_value2").empty();
    $.each(options, function (i, p) {
      $("#graphics_value2").append($("<option></option>").val(p).html(p));
      $("#graphics_value2 option[value='" + graphicsApprovalCurrentValue2 + "']")
        .attr("selected", "selected");
      $('#graphics_value2 option:contains("Fleksograf studio prepress")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#graphics_value2 option:contains("Graficy zewnętrzni")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
    
    $("#graphics_value3").empty();
    $.each(options, function (i, p) {
      $("#graphics_value3").append($("<option></option>").val(p).html(p));
      $("#graphics_value3 option[value='" + graphicsApprovalCurrentValue3 + "']")
        .attr("selected", "selected");
      $('#graphics_value3 option:contains("Fleksograf studio prepress")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#graphics_value3 option:contains("Graficy zewnętrzni")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
  });

//Awers Rewers

$(document).ready(function (e) {

    var awers_rewers = document.getElementById("awers_rewers_value");
    var awers_rewers_CurrentValue = awers_rewers.innerHTML;
  
    var options = [
      "",
      "Awers",
      "Rewers",
  
    ];
  
    $("#awers_rewers_value").empty();
    $.each(options, function (i, p) {
      $("#awers_rewers_value").append($("<option></option>").val(p).html(p));
      $("#awers_rewers_value option[value='" + awers_rewers_CurrentValue + "']")
        .attr("selected", "selected");
    });
  });

  //EXPOSURE

  $(document).ready(function (e) {

    var exposure = document.getElementById("exposure_value");
    var exposure_CurrentValue = exposure.innerHTML;

    var options = [

        "",
        "TIL",
        "TIL-R",
        "DITR",
        "FILM",

    ];

    $("#exposure_value").empty();
    $.each(options, function (i, p) {
        $("#exposure_value").append($("<option></option>").val(p).html(p));
        $("#exposure_value option[value='" + exposure_CurrentValue + "']")
            .attr("selected", "selected");
    })
});

//Plates type

$(document).ready(function (e) {

    var plates_type = document.getElementById("plates_type_value");
    var plates_type_CurrentValue = plates_type.innerHTML;

    var spec_plates_type1 = document.getElementById("spec_plates_type_value1");
    var spec_plates_type_CurrentValue1 = spec_plates_type1.innerHTML;
    var spec_plates_type2 = document.getElementById("spec_plates_type_value2");
    var spec_plates_type_CurrentValue2 = spec_plates_type2.innerHTML;
    var spec_plates_type3 = document.getElementById("spec_plates_type_value3");
    var spec_plates_type_CurrentValue3 = spec_plates_type3.innerHTML;
    var spec_plates_type4 = document.getElementById("spec_plates_type_value4");
    var spec_plates_type_CurrentValue4 = spec_plates_type4.innerHTML;
    var spec_plates_type5 = document.getElementById("spec_plates_type_value5");
    var spec_plates_type_CurrentValue5 = spec_plates_type5.innerHTML;
    var spec_plates_type6 = document.getElementById("spec_plates_type_value6");
    var spec_plates_type_CurrentValue6 = spec_plates_type6.innerHTML;
    var spec_plates_type7 = document.getElementById("spec_plates_type_value7");
    var spec_plates_type_CurrentValue7 = spec_plates_type7.innerHTML;
    var spec_plates_type8 = document.getElementById("spec_plates_type_value8");
    var spec_plates_type_CurrentValue8 = spec_plates_type8.innerHTML;
    var spec_plates_type9 = document.getElementById("spec_plates_type_value9");
    var spec_plates_type_CurrentValue9 = spec_plates_type9.innerHTML;
    var spec_plates_type10 = document.getElementById("spec_plates_type_value10");
    var spec_plates_type_CurrentValue10 = spec_plates_type10.innerHTML;
    var spec_plates_type11 = document.getElementById("spec_plates_type_value11");
    var spec_plates_type_CurrentValue11 = spec_plates_type11.innerHTML;
    var spec_plates_type12 = document.getElementById("spec_plates_type_value12");
    var spec_plates_type_CurrentValue12 = spec_plates_type12.innerHTML;
    var spec_plates_type13 = document.getElementById("spec_plates_type_value13");
    var spec_plates_type_CurrentValue13 = spec_plates_type13.innerHTML;
    var spec_plates_type14 = document.getElementById("spec_plates_type_value14");
    var spec_plates_type_CurrentValue14 = spec_plates_type14.innerHTML;
    var spec_plates_type15 = document.getElementById("spec_plates_type_value15");
    var spec_plates_type_CurrentValue15 = spec_plates_type15.innerHTML;


    var options = [
        
        "",
        "NXH 1.14",
        "NXH 1.7",
        "NXH 2.54",
        "NXH 2.84",
        "NXUH 1.14",
        "JET AR 1.14",
        "MVP 2.84",
        "SLEEVE",
        "EPDM 1.14",
        
    ];

    $("#plates_type_value").empty();
    $.each(options, function (i, p) {
        $("#plates_type_value").append($("<option></option>").val(p).html(p));
        $("#plates_type_value option[value='" + plates_type_CurrentValue + "']")
            .attr("selected", "selected");
    })
    $("#spec_plates_type_value1").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value1").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value1 option[value='" + spec_plates_type_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value2").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value2").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value2 option[value='" + spec_plates_type_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value3").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value3").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value3 option[value='" + spec_plates_type_CurrentValue3 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value4").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value4").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value4 option[value='" + spec_plates_type_CurrentValue4 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value5").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value5").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value5 option[value='" + spec_plates_type_CurrentValue5 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value6").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value6").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value6 option[value='" + spec_plates_type_CurrentValue6 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value7").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value7").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value7 option[value='" + spec_plates_type_CurrentValue7 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value8").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value8").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value8 option[value='" + spec_plates_type_CurrentValue8 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value9").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value9").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value9 option[value='" + spec_plates_type_CurrentValue9 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value10").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value10").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value10 option[value='" + spec_plates_type_CurrentValue10 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value11").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value11").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value11 option[value='" + spec_plates_type_CurrentValue11 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value12").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value12").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value12 option[value='" + spec_plates_type_CurrentValue12 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value13").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value13").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value13 option[value='" + spec_plates_type_CurrentValue13 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value14").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value14").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value14 option[value='" + spec_plates_type_CurrentValue14 + "']")
            .attr("selected", "selected");
    });
    $("#spec_plates_type_value15").empty();
    $.each(options, function (i, p) {
        $("#spec_plates_type_value15").append($("<option></option>").val(p).html(p));
        $("#spec_plates_type_value15 option[value='" + spec_plates_type_CurrentValue15 + "']")
            .attr("selected", "selected");
    });
});

//Angles

$(document).ready(function (e) {


    var spec_angle1 = document.getElementById("spec_angle_value1");
    var spec_angle_CurrentValue1 = spec_angle1.innerHTML;
    var spec_angle2 = document.getElementById("spec_angle_value2");
    var spec_angle_CurrentValue2 = spec_angle2.innerHTML;
    var spec_angle3 = document.getElementById("spec_angle_value3");
    var spec_angle_CurrentValue3 = spec_angle3.innerHTML;
    var spec_angle4 = document.getElementById("spec_angle_value4");
    var spec_angle_CurrentValue4 = spec_angle4.innerHTML;
    var spec_angle5 = document.getElementById("spec_angle_value5");
    var spec_angle_CurrentValue5 = spec_angle5.innerHTML;
    var spec_angle6 = document.getElementById("spec_angle_value6");
    var spec_angle_CurrentValue6 = spec_angle6.innerHTML;
    var spec_angle7 = document.getElementById("spec_angle_value7");
    var spec_angle_CurrentValue7 = spec_angle7.innerHTML;
    var spec_angle8 = document.getElementById("spec_angle_value8");
    var spec_angle_CurrentValue8 = spec_angle8.innerHTML;
    var spec_angle9 = document.getElementById("spec_angle_value9");
    var spec_angle_CurrentValue9 = spec_angle9.innerHTML;
    var spec_angle10 = document.getElementById("spec_angle_value10");
    var spec_angle_CurrentValue10 = spec_angle10.innerHTML;
    var spec_angle11 = document.getElementById("spec_angle_value11");
    var spec_angle_CurrentValue11 = spec_angle11.innerHTML;
    var spec_angle12 = document.getElementById("spec_angle_value12");
    var spec_angle_CurrentValue12 = spec_angle12.innerHTML;
    var spec_angle13 = document.getElementById("spec_angle_value13");
    var spec_angle_CurrentValue13 = spec_angle13.innerHTML;
    var spec_angle14 = document.getElementById("spec_angle_value14");
    var spec_angle_CurrentValue14 = spec_angle14.innerHTML;
    var spec_angle15 = document.getElementById("spec_angle_value15");
    var spec_angle_CurrentValue15 = spec_angle15.innerHTML;

    var options = [

        "",
        "AM CMYK 7.5 | 67.5 | 82.5 | 37.5",
        "7.5",
        "67.5",
        "82.5",
        "37.5",
        "SX CMYK 82.5 | 22.5 | 7.5 | 52.5",
        "82.5",
        "22.5 ",
        "7.5",
        "52.5",
        
    ];



    $("#spec_angle_value1").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value1").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value1 option[value='" + spec_angle_CurrentValue1 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value1 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value1 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value2").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value2").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value2 option[value='" + spec_angle_CurrentValue2 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value2 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value2 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value3").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value3").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value3 option[value='" + spec_angle_CurrentValue3 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value3 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value3 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value4").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value4").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value4 option[value='" + spec_angle_CurrentValue4 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value4 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value4 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value5").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value5").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value5 option[value='" + spec_angle_CurrentValue5 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value5 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value5 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value6").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value6").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value6 option[value='" + spec_angle_CurrentValue6 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value6 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value6 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value7").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value7").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value7 option[value='" + spec_angle_CurrentValue7 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value7 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value7 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value8").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value8").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value8 option[value='" + spec_angle_CurrentValue8 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value8 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value8 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value9").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value9").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value9 option[value='" + spec_angle_CurrentValue9 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value9 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value9 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value10").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value10").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value10 option[value='" + spec_angle_CurrentValue10 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value10 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value10 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value11").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value11").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value11 option[value='" + spec_angle_CurrentValue11 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value11 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value11 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value12").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value12").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value12 option[value='" + spec_angle_CurrentValue12 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value12 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value12 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value13").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value13").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value13 option[value='" + spec_angle_CurrentValue13 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value13 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value13 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value14").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value14").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value14 option[value='" + spec_angle_CurrentValue14 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value14 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value14 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
    $("#spec_angle_value15").empty();
    $.each(options, function (i, p) {
        $("#spec_angle_value15").append($("<option></option>").val(p).html(p));
        $("#spec_angle_value15 option[value='" + spec_angle_CurrentValue15 + "']")
            .attr("selected", "selected");
        $('#spec_angle_value15 option:contains("AM CMYK 7.5 | 67.5 | 82.5 | 37.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
        $('#spec_angle_value15 option:contains("SX CMYK 82.5 | 22.5 | 7.5 | 52.5")')
            .attr("disabled", "disabled")
            .css("color", "white")
            .css("font-family", "Roboto")
            .css("background", "dimgray");
    });
});

//DC

$(document).ready(function (e) {

    var spec_DC1 = document.getElementById("spec_DC_value1");
    var spec_DC_CurrentValue1 = spec_DC1.innerHTML;
    var spec_DC2 = document.getElementById("spec_DC_value2");
    var spec_DC_CurrentValue2 = spec_DC2.innerHTML;
    var spec_DC3 = document.getElementById("spec_DC_value3");
    var spec_DC_CurrentValue3 = spec_DC3.innerHTML;
    var spec_DC4 = document.getElementById("spec_DC_value4");
    var spec_DC_CurrentValue4 = spec_DC4.innerHTML;
    var spec_DC5 = document.getElementById("spec_DC_value5");
    var spec_DC_CurrentValue5 = spec_DC5.innerHTML;
    var spec_DC6 = document.getElementById("spec_DC_value6");
    var spec_DC_CurrentValue6 = spec_DC6.innerHTML;
    var spec_DC7 = document.getElementById("spec_DC_value7");
    var spec_DC_CurrentValue7 = spec_DC7.innerHTML;
    var spec_DC8 = document.getElementById("spec_DC_value8");
    var spec_DC_CurrentValue8 = spec_DC8.innerHTML;
    var spec_DC9 = document.getElementById("spec_DC_value9");
    var spec_DC_CurrentValue9 = spec_DC9.innerHTML;
    var spec_DC10 = document.getElementById("spec_DC_value10");
    var spec_DC_CurrentValue10 = spec_DC10.innerHTML;
    var spec_DC11 = document.getElementById("spec_DC_value11");
    var spec_DC_CurrentValue11 = spec_DC11.innerHTML;
    var spec_DC12 = document.getElementById("spec_DC_value12");
    var spec_DC_CurrentValue12 = spec_DC12.innerHTML;
    var spec_DC13 = document.getElementById("spec_DC_value13");
    var spec_DC_CurrentValue13 = spec_DC13.innerHTML;
    var spec_DC14 = document.getElementById("spec_DC_value14");
    var spec_DC_CurrentValue14 = spec_DC14.innerHTML;
    var spec_DC15 = document.getElementById("spec_DC_value15");
    var spec_DC_CurrentValue15 = spec_DC15.innerHTML;

    var options = [

        "",
        "DCA1",
        "DCA2",
        "DCA3",
        "DCA4",
        "DCA5",
        "Digicap",
        "DC2",
        "DC3",
        "DC5",
        "DC6",
        "DC7",
        "DC8",

    ];


    $("#spec_DC_value1").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value1").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value1 option[value='" + spec_DC_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value2").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value2").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value2 option[value='" + spec_DC_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value3").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value3").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value3 option[value='" + spec_DC_CurrentValue3 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value4").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value4").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value4 option[value='" + spec_DC_CurrentValue4 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value5").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value5").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value5 option[value='" + spec_DC_CurrentValue5 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value6").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value6").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value6 option[value='" + spec_DC_CurrentValue6 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value7").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value7").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value7 option[value='" + spec_DC_CurrentValue7 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value8").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value8").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value8 option[value='" + spec_DC_CurrentValue8 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value9").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value9").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value9 option[value='" + spec_DC_CurrentValue9 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value10").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value10").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value10 option[value='" + spec_DC_CurrentValue10 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value11").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value11").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value11 option[value='" + spec_DC_CurrentValue11 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value12").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value12").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value12 option[value='" + spec_DC_CurrentValue12 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value13").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value13").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value13 option[value='" + spec_DC_CurrentValue13 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value14").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value14").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value14 option[value='" + spec_DC_CurrentValue14 + "']")
            .attr("selected", "selected");
    });
    $("#spec_DC_value15").empty();
    $.each(options, function (i, p) {
        $("#spec_DC_value15").append($("<option></option>").val(p).html(p));
        $("#spec_DC_value15 option[value='" + spec_DC_CurrentValue15 + "']")
            .attr("selected", "selected");
    });
});

//Raster

$(document).ready(function (e) {

    var spec_raster_type1 = document.getElementById("spec_raster_type_value1");
    var spec_raster_type_CurrentValue1 = spec_raster_type1.innerHTML;
    var spec_raster_type2 = document.getElementById("spec_raster_type_value2");
    var spec_raster_type_CurrentValue2 = spec_raster_type2.innerHTML;
    var spec_raster_type3 = document.getElementById("spec_raster_type_value3");
    var spec_raster_type_CurrentValue3 = spec_raster_type3.innerHTML;
    var spec_raster_type4 = document.getElementById("spec_raster_type_value4");
    var spec_raster_type_CurrentValue4 = spec_raster_type4.innerHTML;
    var spec_raster_type5 = document.getElementById("spec_raster_type_value5");
    var spec_raster_type_CurrentValue5 = spec_raster_type5.innerHTML;
    var spec_raster_type6 = document.getElementById("spec_raster_type_value6");
    var spec_raster_type_CurrentValue6 = spec_raster_type6.innerHTML;
    var spec_raster_type7 = document.getElementById("spec_raster_type_value7");
    var spec_raster_type_CurrentValue7 = spec_raster_type7.innerHTML;
    var spec_raster_type8 = document.getElementById("spec_raster_type_value8");
    var spec_raster_type_CurrentValue8 = spec_raster_type8.innerHTML;
    var spec_raster_type9 = document.getElementById("spec_raster_type_value9");
    var spec_raster_type_CurrentValue9 = spec_raster_type9.innerHTML;
    var spec_raster_type10 = document.getElementById("spec_raster_type_value10");
    var spec_raster_type_CurrentValue10 = spec_raster_type10.innerHTML;
    var spec_raster_type11 = document.getElementById("spec_raster_type_value11");
    var spec_raster_type_CurrentValue11 = spec_raster_type11.innerHTML;
    var spec_raster_type12 = document.getElementById("spec_raster_type_value12");
    var spec_raster_type_CurrentValue12 = spec_raster_type12.innerHTML;
    var spec_raster_type13 = document.getElementById("spec_raster_type_value13");
    var spec_raster_type_CurrentValue13 = spec_raster_type13.innerHTML;
    var spec_raster_type14 = document.getElementById("spec_raster_type_value14");
    var spec_raster_type_CurrentValue14 = spec_raster_type14.innerHTML;
    var spec_raster_type15 = document.getElementById("spec_raster_type_value15");
    var spec_raster_type_CurrentValue15 = spec_raster_type15.innerHTML;

    var options = [
        
        "",
        "AM",
        "AMSX",
        "SX",
        "SXs",
        "CX",
        "FM",
        "Staccato",
    ];

    $("#spec_raster_type_value1").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value1").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value1 option[value='" + spec_raster_type_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value2").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value2").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value2 option[value='" + spec_raster_type_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value3").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value3").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value3 option[value='" + spec_raster_type_CurrentValue3 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value4").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value4").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value4 option[value='" + spec_raster_type_CurrentValue4 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value5").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value5").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value5 option[value='" + spec_raster_type_CurrentValue5 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value6").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value6").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value6 option[value='" + spec_raster_type_CurrentValue6 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value7").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value7").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value7 option[value='" + spec_raster_type_CurrentValue7 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value8").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value8").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value8 option[value='" + spec_raster_type_CurrentValue8 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value9").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value9").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value9 option[value='" + spec_raster_type_CurrentValue9 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value10").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value10").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value10 option[value='" + spec_raster_type_CurrentValue10 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value11").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value11").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value11 option[value='" + spec_raster_type_CurrentValue11 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value12").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value12").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value12 option[value='" + spec_raster_type_CurrentValue12 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value13").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value13").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value13 option[value='" + spec_raster_type_CurrentValue13 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value14").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value14").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value14 option[value='" + spec_raster_type_CurrentValue14 + "']")
            .attr("selected", "selected");
    });
    $("#spec_raster_type_value15").empty();
    $.each(options, function (i, p) {
        $("#spec_raster_type_value15").append($("<option></option>").val(p).html(p));
        $("#spec_raster_type_value15 option[value='" + spec_raster_type_CurrentValue15 + "']")
            .attr("selected", "selected");
    });
});

//Point_test

$(document).ready(function (e) {

    var point_test = document.getElementById("point_test_value");
    var point_test_CurrentValue = point_test.innerHTML;

    var options = [

        "",
        "OK",
        "Do korekty",
        
    ];

    $("#point_test_value").empty();
    $.each(options, function (i, p) {
        $("#point_test_value").append($("<option></option>").val(p).html(p));
        $("#point_test_value option[value='" + point_test_CurrentValue + "']")
            .attr("selected", "selected");
    })
});

//Relief

$(document).ready(function (e) {
    var spec_reliefApproval = document.getElementById("spec_relief_value");
    var spec_reliefApprovalCurrentValue = spec_reliefApproval.innerHTML;
  
    var options = [
  
      "",
      "Domyślnie",
      "0,6mm",
      "Wybierz",
      "0,4mm",
      "0,5mm",
      "0,6mm",
      "0,7mm",
      "0,8mm",
  
    ];
  
    $("#spec_relief_value").empty();
    $.each(options, function (i, p) {
      $("#spec_relief_value").append($("<option></option>").val(p).html(p));
      $("#spec_relief_value option[value='" + spec_reliefApprovalCurrentValue + "']")
        .attr("selected", "selected")
      $('#spec_relief_value option:contains("Domyślnie")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
      $('#spec_relief_value option:contains("Wybierz")')
        .attr("disabled", "disabled")
        .css("color", "white")
        .css("font-family", "Roboto")
        .css("background", "dimgray");
    });
  });
  
//relief_accept

$(document).ready(function (e) {
    var spec_relief_acceptApproval = document.getElementById("spec_relief_accept_value");
    var spec_relief_acceptApprovalCurrentValue = spec_relief_acceptApproval.innerHTML;
    var options = [
      
      "",
      "OK",
      "Za niski",
      "Za wysoki",
      
    ];
  
    $("#spec_relief_accept_value").empty();
    $.each(options, function (i, p) {
      $("#spec_relief_accept_value").append($("<option></option>").val(p).html(p));
      $("#spec_relief_accept_value option[value='" + spec_relief_acceptApprovalCurrentValue + "']")
        .attr("selected", "selected")  
    });
});

//Viscosity of plate

$(document).ready(function (e) {

    var viscosity_of_plate = document.getElementById("viscosity_of_plate_value");
    var viscosity_of_plate_CurrentValue = viscosity_of_plate.innerHTML;

    var options = [
        
        "",
        "Lepkość OK",
        "Zbyt lepka",
        "Nie dość lepka",
        
    ];

    $("#viscosity_of_plate_value").empty();
    $.each(options, function (i, p) {
        $("#viscosity_of_plate_value").append($("<option></option>").val(p).html(p));
        $("#viscosity_of_plate_value option[value='" + viscosity_of_plate_CurrentValue + "']")
            .attr("selected", "selected");
    })
});

//mask_compatibility

$(document).ready(function (e) {

    var mask_compatibility = document.getElementById("mask_compatibility_value");
    var mask_compatibility_CurrentValue = mask_compatibility.innerHTML;

    var options = [
        "",
        "Zgodna",
        "Nie zgodna",
        
    ];

    $("#mask_compatibility_value").empty();
    $.each(options, function (i, p) {
        $("#mask_compatibility_value").append($("<option></option>").val(p).html(p));
        $("#mask_compatibility_value option[value='" + mask_compatibility_CurrentValue + "']")
            .attr("selected", "selected");
    })
});

//Dissection

$(document).ready(function (e) {

    var dissection = document.getElementById("dissection_value");
    var dissection_CurrentValue = dissection.innerHTML;

    var options = [

        "",
        "Brak",
        "Występuje",

    ];

    $("#dissection_value").empty();
    $.each(options, function (i, p) {
        $("#dissection_value").append($("<option></option>").val(p).html(p));
        $("#dissection_value option[value='" + dissection_CurrentValue + "']")
            .attr("selected", "selected");
    })
});

//Production_Operator

$(document).ready(function (e) {

    var production_operator = document.getElementById("production_operator_value");
    var production_operator_CurrentValue = production_operator.innerHTML;
    var production_operator1 = document.getElementById("production_operator_value1");
    var production_operator_CurrentValue1 = production_operator1.innerHTML;

    var options = [

        "",
        "operator1",
        "operator2",

    ];

    $("#production_operator_value").empty();
    $.each(options, function (i, p) {
        $("#production_operator_value").append($("<option></option>").val(p).html(p));
        $("#production_operator_value option[value='" + production_operator_CurrentValue + "']")
            .attr("selected", "selected");
    })
    $("#production_operator_value1").empty();
    $.each(options, function (i, p) {
        $("#production_operator_value1").append($("<option></option>").val(p).html(p));
        $("#production_operator_value1 option[value='" + production_operator_CurrentValue1 + "']")
            .attr("selected", "selected");
    })
});

//Undesired Elements

$(document).ready(function (e) {

    var undesired_elements = document.getElementById("undesired_elements_value");
    var undesired_elements_CurrentValue = undesired_elements.innerHTML;

    var options = [
        
        "",
        "Brak",
        "Wystepują", 
        
    ];

    $("#undesired_elements_value").empty();
    $.each(options, function (i, p) {
        $("#undesired_elements_value").append($("<option></option>").val(p).html(p));
        $("#undesired_elements_value option[value='" + undesired_elements_CurrentValue + "']")
            .attr("selected", "selected");
    })
});

//Yes_Or_No

$(document).ready(function (e) {

    var yes_or_no = document.getElementById("yes_or_no_value");
    var yes_or_no_CurrentValue = yes_or_no.innerHTML;
    var yes_or_no1 = document.getElementById("yes_or_no_value1");
    var yes_or_no_CurrentValue1 = yes_or_no1.innerHTML;
    var yes_or_no2 = document.getElementById("yes_or_no_value2");
    var yes_or_no_CurrentValue2 = yes_or_no2.innerHTML;
    var yes_or_no3 = document.getElementById("yes_or_no_value3");
    var yes_or_no_CurrentValue3 = yes_or_no3.innerHTML;
    var yes_or_no4 = document.getElementById("yes_or_no_value4");
    var yes_or_no_CurrentValue4 = yes_or_no4.innerHTML;
    var yes_or_no5 = document.getElementById("yes_or_no_value5");
    var yes_or_no_CurrentValue5 = yes_or_no5.innerHTML;
    var yes_or_no6 = document.getElementById("yes_or_no_value6");
    var yes_or_no_CurrentValue6 = yes_or_no6.innerHTML;
    var yes_or_no7 = document.getElementById("yes_or_no_value7");
    var yes_or_no_CurrentValue7 = yes_or_no7.innerHTML;
    var yes_or_no8 = document.getElementById("yes_or_no_value8");
    var yes_or_no_CurrentValue8 = yes_or_no8.innerHTML;
    var yes_or_no9 = document.getElementById("yes_or_no_value9");
    var yes_or_no_CurrentValue9 = yes_or_no9.innerHTML;
    var yes_or_no10 = document.getElementById("yes_or_no_value10");
    var yes_or_no_CurrentValue10 = yes_or_no10.innerHTML;
    var yes_or_no11 = document.getElementById("yes_or_no_value11");
    var yes_or_no_CurrentValue11 = yes_or_no11.innerHTML;
    var yes_or_no12 = document.getElementById("yes_or_no_value12");
    var yes_or_no_CurrentValue12 = yes_or_no12.innerHTML;
    var yes_or_no13 = document.getElementById("yes_or_no_value13");
    var yes_or_no_CurrentValue13 = yes_or_no13.innerHTML;
    var yes_or_no14 = document.getElementById("yes_or_no_value14");
    var yes_or_no_CurrentValue14 = yes_or_no14.innerHTML;
    var yes_or_no15 = document.getElementById("yes_or_no_value15");
    var yes_or_no_CurrentValue15 = yes_or_no15.innerHTML;
    var yes_or_no16 = document.getElementById("yes_or_no_value16");
    var yes_or_no_CurrentValue16 = yes_or_no16.innerHTML;
    var yes_or_no17 = document.getElementById("yes_or_no_value17");
    var yes_or_no_CurrentValue17 = yes_or_no17.innerHTML;
    var yes_or_no18 = document.getElementById("yes_or_no_value18");
    var yes_or_no_CurrentValue18 = yes_or_no18.innerHTML;
    var yes_or_no19 = document.getElementById("yes_or_no_value19");
    var yes_or_no_CurrentValue19 = yes_or_no19.innerHTML;
    var yes_or_no20 = document.getElementById("yes_or_no_value20");
    var yes_or_no_CurrentValue20 = yes_or_no20.innerHTML;
    var yes_or_no21 = document.getElementById("yes_or_no_value21");
    var yes_or_no_CurrentValue21 = yes_or_no21.innerHTML;
    var yes_or_no22 = document.getElementById("yes_or_no_value22");
    var yes_or_no_CurrentValue22 = yes_or_no22.innerHTML;
    var yes_or_no23 = document.getElementById("yes_or_no_value23");
    var yes_or_no_CurrentValue23 = yes_or_no23.innerHTML;
    var yes_or_no24 = document.getElementById("yes_or_no_value24");
    var yes_or_no_CurrentValue24 = yes_or_no24.innerHTML;
    var yes_or_no25 = document.getElementById("yes_or_no_value25");
    var yes_or_no_CurrentValue25 = yes_or_no25.innerHTML;
    var yes_or_no26 = document.getElementById("yes_or_no_value26");
    var yes_or_no_CurrentValue26 = yes_or_no26.innerHTML;
    var yes_or_no27 = document.getElementById("yes_or_no_value27");
    var yes_or_no_CurrentValue27 = yes_or_no27.innerHTML;
    var yes_or_no28 = document.getElementById("yes_or_no_value28");
    var yes_or_no_CurrentValue28 = yes_or_no28.innerHTML;

    var options = [

        "",
        "Tak",
        "Nie",
        
        
    ];

    $("#yes_or_no_value").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value option[value='" + yes_or_no_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value1").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value1").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value1 option[value='" + yes_or_no_CurrentValue1 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value2").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value2").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value2 option[value='" + yes_or_no_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value3").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value3").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value3 option[value='" + yes_or_no_CurrentValue3 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value4").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value4").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value4 option[value='" + yes_or_no_CurrentValue4 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value5").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value5").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value5 option[value='" + yes_or_no_CurrentValue5 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value6").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value6").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value6 option[value='" + yes_or_no_CurrentValue6 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value7").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value7").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value7 option[value='" + yes_or_no_CurrentValue7 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value8").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value8").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value8 option[value='" + yes_or_no_CurrentValue8 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value9").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value9").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value9 option[value='" + yes_or_no_CurrentValue9 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value10").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value10").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value10 option[value='" + yes_or_no_CurrentValue10 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value11").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value11").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value11 option[value='" + yes_or_no_CurrentValue11 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value12").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value12").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value12 option[value='" + yes_or_no_CurrentValue12 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value13").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value13").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value13 option[value='" + yes_or_no_CurrentValue13 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value14").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value14").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value14 option[value='" + yes_or_no_CurrentValue14 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value15").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value15").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value15 option[value='" + yes_or_no_CurrentValue15 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value16").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value16").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value16 option[value='" + yes_or_no_CurrentValue16 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value17").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value17").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value17 option[value='" + yes_or_no_CurrentValue17 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value18").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value18").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value18 option[value='" + yes_or_no_CurrentValue18 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value19").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value19").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value19 option[value='" + yes_or_no_CurrentValue19 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value20").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value20").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value20 option[value='" + yes_or_no_CurrentValue20 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value21").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value21").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value21 option[value='" + yes_or_no_CurrentValue21 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value22").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value22").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value22 option[value='" + yes_or_no_CurrentValue22 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value23").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value23").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value23 option[value='" + yes_or_no_CurrentValue23 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value24").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value24").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value24 option[value='" + yes_or_no_CurrentValue24 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value25").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value25").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value25 option[value='" + yes_or_no_CurrentValue25 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value26").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value26").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value26 option[value='" + yes_or_no_CurrentValue26 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value27").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value27").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value27 option[value='" + yes_or_no_CurrentValue27 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value28").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value28").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value28 option[value='" + yes_or_no_CurrentValue28 + "']")
            .attr("selected", "selected");
    });
});

//Additional Actions

$(document).ready(function (e) {

    var additional_actions = document.getElementById("additional_actions_value");
    var additional_actions_CurrentValue = additional_actions.innerHTML;
  
    var options = [
      "",
      "zmiana matryc",
      "wznowienie matryc",
      "reklamacja matryc",
      
    ];
  
    $("#additional_actions_value").empty();
    $.each(options, function (i, p) {
      $("#additional_actions_value").append($("<option></option>").val(p).html(p));
      $("#additional_actions_value option[value='" + additional_actions_CurrentValue + "']")
        .attr("selected", "selected");
    });
  });