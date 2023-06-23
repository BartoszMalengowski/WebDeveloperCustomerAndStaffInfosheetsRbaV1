$(document).ready(function (e) {
    $('#total-cm-all, .total-cm').prop('readonly', true);

    $('#row-X, #row-Y, #row-Q').on('keyup', function (e) {
        var row = $(this).closest('tr');
        var
            rowQ = $('#row-Q', row),
            rowX = $('#row-X', row),
            rowY = $('#row-Y', row),
            rowCM = $('.total-cm', row);
        rowQ = (rowQ.val()).replace(",", ".");
        rowX = (rowX.val()).replace(",", ".");
        rowY = (rowY.val()).replace(",", ".");

        if (!isNaN(rowX)) {
            if (!isNaN(rowY)) {
                if (!isNaN(rowQ)) {
                    rowCM.val((Number(rowQ * rowX * rowY)).toFixed(2));
                }
            }
        }

        var sum = 0
        $('.total-cm').each(function () {
            sum += Number($(this).val());
        });
        $('#total-cm-all').val(sum.toFixed(2));
    })
});