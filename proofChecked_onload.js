$(document).ready(function () {
    $('#checkbox_proof2, #checkbox_proof3, #checkbox_proof4, #checkbox_proof5, #checkbox_proof6, #checkbox_proof7, #checkbox_proof8, #checkbox_proof9, #checkbox_proof10, #button1').change(function () {
        if (checkbox_proof2.checked)
            $('#Proof2_table').css("visibility", "inherit");
        if (checkbox_proof3.checked)
            $('#Proof3_table').css("visibility", "inherit");
        if (checkbox_proof4.checked)
            $('#Proof4_table').css("visibility", "inherit");
        if (checkbox_proof5.checked)
            $('#Proof5_table').css("visibility", "inherit");
        if (checkbox_proof6.checked)
            $('#Proof6_table').css("visibility", "inherit");
        if (checkbox_proof7.checked)
            $('#Proof7_table').css("visibility", "inherit");
        if (checkbox_proof8.checked)
            $('#Proof8_table').css("visibility", "inherit");
        if (checkbox_proof9.checked)
            $('#Proof9_table').css("visibility", "inherit");
        if (checkbox_proof10.checked)
            $('#Proof10_table').css("visibility", "inherit");
    });

    $('#checkbox_proof2').change(function () {
        $('#Proof2_table').eq(index).toggle(this.checked);
    }).change();
});



$(document).ready(function clicked() {
    var a =
        $("checkbox_proof2").checked +
        $("checkbox_proof3").checked +
        $("checkbox_proof4").checked +
        $("checkbox_proof5").checked +
        $("checkbox_proof6").checked +
        $("checkbox_proof7").checked +
        $("checkbox_proof8").checked +
        $("checkbox_proof9").checked +
        $("checkbox_proof10").checked
    var clicks = a;
    var funcs = [f1, f2, f3, f4, f5, f6, f7, f8, f9];

 {
        funcs[clicks]();
        clicks = (clicks == 10 ? 0 : ++clicks);
    }

    function f1() {
        $("Proof2_table").css("visibility", "inherit")

    }

    function f2() {
        $("Proof3_table").css("visibility", "inherit")

    }

    function f3() {
        $("Proof4_table").css("visibility", "inherit")

    }

    function f4() {
        $("Proof5_table").css("visibility", "inherit")

    }

    function f5() {
        $("Proof6_table").css("visibility", "inherit")

    }

    function f6() {
        $("Proof7_table").css("visibility", "inherit")

    }

    function f7() {
        $("Proof8_table").css("visibility", "inherit")

    }

    function f8() {
        $("Proof9_table").css("visibility", "inherit")

    }

    function f9() {
        $("Proof10_table").css("visibility", "inherit")

    }

});

