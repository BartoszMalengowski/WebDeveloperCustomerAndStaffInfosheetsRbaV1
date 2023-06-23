

function clicked() {
    var a =
        document.getElementById("checkbox_proof2").checked +
        document.getElementById("checkbox_proof3").checked +
        document.getElementById("checkbox_proof4").checked +
        document.getElementById("checkbox_proof5").checked +
        document.getElementById("checkbox_proof6").checked +
        document.getElementById("checkbox_proof7").checked +
        document.getElementById("checkbox_proof8").checked +
        document.getElementById("checkbox_proof9").checked +
        document.getElementById("checkbox_proof10").checked;
    var clicks = a;
    var funcs = [f1, f2, f3, f4, f5, f6, f7, f8, f9];


    funcs[clicks]();
    clicks = (clicks == 10 ? 0 : ++clicks)

        function f1() {
            document.getElementById("Proof2_table").style.visibility = "inherit";
        }

        function f2() {
            document.getElementById("Proof3_table").style.visibility = "inherit";

        }

        function f3() {
            document.getElementById("Proof4_table").style.visibility = "inherit";

        }

        function f4() {
            document.getElementById("Proof5_table").style.visibility = "inherit";

        }

        function f5() {
            document.getElementById("Proof6_table").style.visibility = "inherit";

        }

        function f6() {
            document.getElementById("Proof7_table").style.visibility = "inherit";

        }

        function f7() {
            document.getElementById("Proof8_table").style.visibility = "inherit";

        }

        function f8() {
            document.getElementById("Proof9_table").style.visibility = "inherit";

        }
        function f9() {
            document.getElementById("Proof10_table").style.visibility = "inherit";

        }
    }

