$(document).ready(function (e) {
    $('#JobName-Long').on('change keyup paste load', function () {
        var a = document.getElementById('JobName-Long').value;
        var b = a
            .replace(/\.*$/, '')
            .replace(/\^/g, '')
            .replace(/\//g, "_")
            .replace(/\$/g, '')
            .replace(/#/g, '')
            .replace(/@/g, '')
            .replace(/!/g, '')
            .replace(/%/g, 'procent')
            .replace(/\"/g, ' ')
            .replace(/\'/g, ' ')
            .replace(/\ß/g, 'ss')
            .replace(/\&/g, 'and')
            .replace(/,/g, '_')
            .replace(/\./g, '_')
            .replace(/ć/g, "c")
            .replace(/Ć/g, "C")
            .replace(/ę/g, "e")
            .replace(/Ę/g, "E")
            .replace(/ł/g, "l")
            .replace(/Ł/g, "L")
            .replace(/ń/g, "n")
            .replace(/Ń/g, "N")
            .replace(/ó/g, "o")
            .replace(/Ó/g, "O")
            .replace(/ś/g, "s")
            .replace(/Ś/g, "S")
            .replace(/ą/g, "a")
            .replace(/Ą/g, "A")
            .replace(/(ż|ź)/g, "z")
            .replace(/(Ż|Ź)/g, "Z");
        document.getElementById('JobName-Long').value = b;
    }).trigger('load');
    $('#JobName-Long2').on('change keyup paste load', function () {
        var a = document.getElementById('JobName-Long2').value;
        var b = a
            .replace(/\.*$/, '')
            .replace(/\^/g, '')
            .replace(/\//g, "_")
            .replace(/\$/g, '')
            .replace(/#/g, '')
            .replace(/@/g, '')
            .replace(/!/g, '')
            .replace(/%/g, 'procent')
            .replace(/\"/g, ' ')
            .replace(/\'/g, ' ')
            .replace(/\ß/g, 'ss')
            .replace(/\&/g, 'and')
            .replace(/,/g, '_')
            .replace(/\./g, '_')
            .replace(/ć/g, "c")
            .replace(/Ć/g, "C")
            .replace(/ę/g, "e")
            .replace(/Ę/g, "E")
            .replace(/ł/g, "l")
            .replace(/Ł/g, "L")
            .replace(/ń/g, "n")
            .replace(/Ń/g, "N")
            .replace(/ó/g, "o")
            .replace(/Ó/g, "O")
            .replace(/ś/g, "s")
            .replace(/Ś/g, "S")
            .replace(/ą/g, "a")
            .replace(/Ą/g, "A")
            .replace(/(ż|ź)/g, "z")
            .replace(/(Ż|Ź)/g, "Z");
        document.getElementById('JobName-Long2').value = b;
    }).trigger('load');


});