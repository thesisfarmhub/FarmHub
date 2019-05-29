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
            "url": `${window.location.origin}/FarmerTransaction/GetListTransaction`,
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
            { "data": "traderName" },
            { "data": "price" },
            { "data": "quantity" },
            { "data": "unitName" },
            { "data": "totalMoney" },
            { "data": "StatusName" },
            {
                "render": function (data, type, rowData) {
                    var readybtnHTML = '<button type="button" class="small green button" role="readyBtn"  data-toggle="Detailtooltip" title="Đã sẵn sàng" >Sẵn sàng giao hàng </button>';
                    var MoneyReceivedbtnHTML = '<button type="button" class="small green button" role="readyBtn"  data-toggle="Detailtooltip" title="Đã sẵn sàng" >Đã Nhận Được Tiền </button>';
                    var NotReceiveMoneybtnHTML = '<button type="button" class="small blue button" role="readyBtn"  data-toggle="Detailtooltip" title="Đã sẵn sàng" >Chưa Nhận Được Tiền </button>';
                    var cancelbtnHTML = ' <button class="small red button" type="button" role="cancelBtn" data-toggle="Deletetooltip" title="Từ Chối">Hủy Thỏa Thuận</button >';
                    var extendbtnHTML = ' <button class="btn btn-warning" type="button" role="cancelBtn" data-toggle="Deletetooltip" title="Gia Hạn Thời Gian Gia Hàng"><span class="fa fa-clock-o"></span></button >';
                    var reportbtnHTML = ' <button class="small blue button" type="button" role="cancelBtn" data-toggle="Deletetooltip" title="Tố cáo" ><span class="fa fa-flag"></span> </button >';
                    var invoiceImage = ' <button class="small default button" type="button" role="invoiceView" data-toggle="Deletetooltip" title="Xem hóa đơn người mua" >Xem Hóa Đơn Gửi Tiền</button >';
                    
                    if (rowData['StatusName'] == "Đã Chuyển Tiền") {
                        return invoiceImage + MoneyReceivedbtnHTML + NotReceiveMoneybtnHTML +cancelbtnHTML + reportbtnHTML;
                    }

                    if (rowData['StatusName'] == "Đã Nhận Tiền") {
                        return readybtnHTML + extendbtnHTML + reportbtnHTML;
                    }

                    if (rowData['StatusName'] == "Gia Hạn Giao Tiền") {
                        return invoiceImage + cancelbtnHTML + reportbtnHTML;
                    }

                    return cancelbtnHTML + reportbtnHTML
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

    transOffertbl.on('click', 'button[role="readyBtn"]', function () {
        var id = purchaseOfferTbl.DataTable().row($(this).closest('tr')[0]).data()['purchOfferID'];


    });

    transOffertbl.on('click', 'button[role="cancelBtn"]', function () {

        var id = saleOffertbl.DataTable().row($(this).closest('tr')[0]).data()['id'];

    });

    transOffertbl.on('click', 'button[role="invoiceView"]', function () {

        var id = saleOffertbl.DataTable().row($(this).closest('tr')[0]).data()['id'];

    });
})