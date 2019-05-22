$.fn.dataTable.ext.search.push(
    function (settings, data, dataIndex) {
        //var day=$("#Purchasedatetimebegin").val($.datepicker.formatDate('dd MM yy', new Date()));

        var min = $('#datetimebegin').datepicker("getDate");
        var max = $('#datetimeend').datepicker("getDate");


        var startDate = parseDate(data[0]);

        if (min == null || max == null) { return true; }
        if (startDate <= max && startDate >= min) { return true; }

        return false;
    },
    function (settings, data, dataIndex) {
        var min = parseInt($('#weightbegin').val());
        var max = parseInt($('#weightend').val());
        var weight = parseFloat(data[2]) || 0;

        if ((isNaN(min) && isNaN(max)) ||
            (isNaN(min) && weight <= max) ||
            (min <= weight && isNaN(max)) ||
            (min <= weight && weight <= max)) {
            return true;
        }
        return false;
    }
);

function parseDate(s) {
    var p = s.split('/');
    return new Date(p[2], p[1], p[0]);
}


$("#datetimebegin").datepicker(
    {
        onSelect: function () {
            $('#saleOfferTbl').DataTable().draw();
        },
        changeMonth: true,
        changeYear: true,
        duration: '1000',
        "showAnim": "slide",
        dateFormat: 'dd-mm-yy',
        monthNames: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
        monthNamesShort: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
    });

$("#datetimeend").datepicker(
    {
        onSelect: function () {
            $('#saleOfferTbl').DataTable().draw();
        },
        changeMonth: true,
        changeYear: true,
        duration: '1000',
        "showAnim": "slide",
        dateFormat: 'dd-mm-yy',
        monthNames: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
        monthNamesShort: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
    });


//Date Range search trigger
$('#datetimebegin, #datetimeend').change(function () {
    $('#transactionOfferTbl').DataTable().draw();
});


//Weight Range Search trigger
$('#weightbegin, #weightend').keyup(function () {
    $('#transactionOfferTbl').DataTable().draw();
});






$(document).ready(function () {
    var transOffertbl = $("#transactionOfferTbl");
    var purTbl = $("#transactionOfferTbl").DataTable({

        "ajax": {
            "url": "/Transaction/GetListTransaction",
            "type": "GET",
            "datatypye": "json"
        },
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Vietnamese.json"
        },

        "fnInitComplete": function (oSetting, json) {
            TransactionaddSearchAdvance(json);
        },

        "scrollCollapse": true,
        "columns": [
            { "data": "endTransDay" },
            { "data": "productName" },
            { "data": "seedName" },
            { "data": "farmName" },
            { "data": "farmerName" },
            { "data": "price" },
            { "data": "quantity" },
            { "data": "unitName" },
            { "data": "totalMoney" },
            { "data": "StatusName" },
            {
                "render": function (data, type, rowData) {

                    var agreebtnHTML = '<button type="button" class="small green button" role="agreeBtn"  data-toggle="Detailtooltip" title="Đồng ý" >Đồng Ý </button>';
                    var cancelbtnHTML = ' <button class="small red button" type="button" role="cancelBtn" data-toggle="Deletetooltip" title="Từ Chối">Từ Chối </button >';
                    var reportbtnHTML = ' <button class="small red button" type="button" role="cancelBtn" data-toggle="Deletetooltip" title="Từ Chối">Tố cáo </button >';
                    return agreebtnHTML + cancelbtnHTML
                },
            }
        ]
    });

    function TransactionaddSearchAdvance(json) {
        $("#purchaseOfferTbl thead").append($("#purchaseOfferTbl thead tr:first").clone());

        $("#purchaseOfferTbl thead tr:eq(1) th").each(function (index) {
            if (index != 6) {
                $(this).replaceWith('<th> <center><input type="text" placeholder="Tìm ' + $(this).html() + '" style = "max-width:85px;"></input>  </center></th>');
                var searchControl = $("#purchaseOfferTbl thead tr:eq(1) th:eq(" + index + ") input");
                searchControl.on('keyup', function () {
                    purTbl.column(index).search(searchControl.val()).draw();
                });
            }
            else {
                $(this).replaceWith('<th></th>');
            }
        });

        $("#purchaseOfferTbl thead tr:eq(1)").hide();
    }

    transOffertbl.on('click', 'button[role="agreeBtn"]', function () {
        var id = purchaseOfferTbl.DataTable().row($(this).closest('tr')[0]).data()['purchOfferID'];
        $.confirm({
            icon: 'fa fa-question-circle',
            boxWidth: '100%',
            title: 'Xác Nhận',
            content: '<h4>Bạn có chắc đã nhận hàng từ chủ trang trại</h4>',
            type: 'red',
            typeAnimated: true,
            animationSpeed: 500,
            closeIcon: true,
            closeIconClass: 'fa fa-close',
            escapeKey: true,
            backgroundDismiss: false,

            autoClose: 'cancel|6000',
            buttons: {
                confirm: {
                    text: "Xác Nhận",
                    btnClass: "btn-red",
                    action: function () {

                        
                    }
                },
                cancel: function () {

                }
            }
        });

    });

    transOffertbl.on('click', 'button[role="cancelBtn"]', function () {

        var id = saleOffertbl.DataTable().row($(this).closest('tr')[0]).data()['id'];
        



    });
})