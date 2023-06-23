$(document).ready(function (e) {
var today = new Date();
var rok = today.getFullYear();
var miesiac = today.getMonth()+1;
var dzien = today.getDate();

if(10 > miesiac) {
miesiac = "0" + miesiac;}
if (10 > dzien) {dzien = "0" + dzien;}
$('.today').val(rok+"-"+miesiac+"-"+dzien);
});