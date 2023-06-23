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
    //Sprawdza czy checkbox jest checked i pokazuje lub chowa diva onload 
    $('#checkbox_proof2').change(function () {
        $('#Proof2_table').eq(index).toggle(this.checked);
    }).change();
});   