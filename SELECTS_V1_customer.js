
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

//client_Machine

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

//Undesired elements

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

//client_Print_Coordinators

$(document).ready(function (e) {

    var clientPrintCoordinator = document.getElementById("client_print_coordinator_value");
    var clientPrintCoordinator_CurrentValue = clientPrintCoordinator.innerHTML;
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
    $("#client_print_coordinator_value2").empty();
    $.each(options, function (i, p) {
        $("#client_print_coordinator_value2").append($("<option></option>").val(p).html(p));
        $("#client_print_coordinator_value2 option[value='" + clientPrintCoordinator_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
});

//client_Profiles

$(document).ready(function (e) {

    var clientProfiles = document.getElementById("clientProfiles_value");
    var clientProfilesCurrentValue = clientProfiles.innerHTML;
    var clientProfiles1 = document.getElementById("clientProfiles_value1");
    var clientProfilesCurrentValue1 = clientProfiles1.innerHTML;
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

//client_Profiles

$(document).ready(function (e) {

    var client_compensation_curve = document.getElementById("client_compensation_curve_value");
    var client_compensation_curve_CurrentValue = client_compensation_curve.innerHTML;

    var options = [

        "",
        "profile1",
        "profile1",

    ];

    $("#client_compensation_curve_value").empty();
    $.each(options, function (i, p) {
        $("#client_compensation_curve_value").append($("<option></option>").val(p).html(p));
        $("#client_compensation_curve_value option[value='" + client_compensation_curve_CurrentValue + "']")
            .attr("selected", "selected");

    })
});

//Pdf Versions

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

});

//Print_Type

$(document).ready(function (e) {

    var print_type = document.getElementById("print_type_value");
    var print_type_CurrentValue = print_type.innerHTML;


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
});

//Samples

$(document).ready(function (e) {

    var samples = document.getElementById("samples_value");
    var samples_CurrentValue = samples.innerHTML;

    var samples2 = document.getElementById("samples_value2");
    var samples_CurrentValue2 = samples2.innerHTML;

    var options = [

        "",
        "proof agencyjny",
        "wydruk flekso",
        "produkt sklepowy",
        "inny wzorzec",
        "--BRAK WZORCA--",

    ];

    $("#samples_value").empty();
    $.each(options, function (i, p) {
        $("#samples_value").append($("<option></option>").val(p).html(p));
        $("#samples_value option[value='" + samples_CurrentValue + "']")
            .attr("selected", "selected");
    });
    $("#samples_value2").empty();
    $.each(options, function (i, p) {
        $("#samples_value2").append($("<option></option>").val(p).html(p));
        $("#samples_value2 option[value='" + samples_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
});

//Screen Ruling

$(document).ready(function (e) {

    var screen_ruling = document.getElementById("screen_ruling_value");
    var screen_ruling_CurrentValue = screen_ruling.innerHTML;

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

    ];

    $("#screen_ruling_value").empty();
    $.each(options, function (i, p) {
        $("#screen_ruling_value").append($("<option></option>").val(p).html(p));
        $("#screen_ruling_value option[value='" + screen_ruling_CurrentValue + "']")
            .attr("selected", "selected");
    })
});

//Varnish

$(document).ready(function (e) {

    var varnish = document.getElementById("varnish_value");
    var varnish_CurrentValue = varnish.innerHTML;
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
    $("#varnish_value2").empty();
    $.each(options, function (i, p) {
        $("#varnish_value2").append($("<option></option>").val(p).html(p));
        $("#varnish_value2 option[value'" + varnish_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
});

//White

$(document).ready(function (e) {

    var white = document.getElementById("white_value");
    var white_CurrentValue = white.innerHTML;
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
    $("#white_value2").empty();
    $.each(options, function (i, p) {
        $("#white_value2").append($("<option></option>").val(p).html(p));
        $("#white_value2 option[value='" + white_CurrentValue2 + "']")
            .attr("selected", "selected");
    });
});

//Yes_Or_No

$(document).ready(function (e) {


    var yes_or_no4 = document.getElementById("yes_or_no_value4");
    var yes_or_no_CurrentValue4 = yes_or_no4.innerHTML;
    var yes_or_no11 = document.getElementById("yes_or_no_value11");
    var yes_or_no_CurrentValue11 = yes_or_no11.innerHTML;
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

    $("#yes_or_no_value4").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value4").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value4 option[value='" + yes_or_no_CurrentValue4 + "']")
            .attr("selected", "selected");
    });
    $("#yes_or_no_value11").empty();
    $.each(options, function (i, p) {
        $("#yes_or_no_value11").append($("<option></option>").val(p).html(p));
        $("#yes_or_no_value11 option[value='" + yes_or_no_CurrentValue11 + "']")
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

//Aditional Action

$(document).ready(function (e) {

    var additional_actions_customers = document.getElementById("additional_actions_customers_value");
    var additional_actions_customers_CurrentValue = additional_actions_customers.innerHTML;

    var options = [

        "",
        "zmiana matryc",
        "wznowienie matryc",

    ];

    $("#additional_actions_customers_value").empty();
    $.each(options, function (i, p) {
        $("#additional_actions_customers_value").append($("<option></option>").val(p).html(p));
        $("#additional_actions_customers_value option[value='" + additional_actions_customers_CurrentValue + "']")
            .attr("selected", "selected");
    });
});


