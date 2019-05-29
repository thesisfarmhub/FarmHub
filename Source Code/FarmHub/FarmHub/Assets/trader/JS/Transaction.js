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
                    var tranferedbtnHTML = '<button type="button" class="small green button" role="transferedBtn"  data-toggle="Detailtooltip" title="Đã chuyển tiền" >Đã Chuyển Tiền </button>';
                   
                    var extendbtnHTML = ' <button class="btn btn-warning" type="button" role="extendBtn" data-toggle="Deletetooltip" title="Gia Hạn Thời Gian Trả Tiền"><span class="fa fa-clock-o"></span></button >';
                    var DeliveredbtnHTML = ' <button class="small green button" type="button" role="deliveredBtn" data-toggle="Deletetooltip" title="Gia Hạn Thời Gian Trả Tiền">Đã Nhận Được Hàng</button >';
                    var notDeliveredbtnHTML = ' <button class="btn btn-warning" type="button" role="notDeliveredBtn" data-toggle="Deletetooltip" title="Gia Hạn Thời Gian Trả Tiền">Chưa Nhận được hàng</button >';
                    var reportbtnHTML = ' <button class="small blue button" type="button" role="reportBtn" data-toggle="Deletetooltip" title="Tố cáo" ><span class="fa fa-flag"></span> </button >';
                    var cancelbtnHTML = ' <button class="small red button" type="button" role="cancelBtn" data-toggle="Deletetooltip" title="Từ Chối">Hủy Thỏa Thuận</button >';

                    if (rowData['StatusName'] == "Đã Đồng Ý") {
                        return tranferedbtnHTML + cancelbtnHTML + extendbtnHTML ;
                    }
                    if (rowData['StatusName'] == "Gia Hạn Giao Hàng") {
                        return  cancelbtnHTML + reportbtnHTML;
                    }
                    if (rowData['StatusName'] == "Sẵn Sàng Giao Hàng") {
                        return DeliveredbtnHTML + notDeliveredbtnHTML + cancelbtnHTML + reportbtnHTML;
                    }
                   
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

    transOffertbl.on('click', 'button[role="transferedBtn"]', function () {
        var transactionId = transOffertbl.DataTable().row($(this).closest('tr')[0]).data()['transId'];

        $.confirm({
            icon: 'fa fa-question-circle',
            boxWidth: '100%',
            title: 'Xóa Đơn',
            content: '<h4>Vi lòng đăng ảnh hóa đơn ngân hàng của bạn.</h4> <input type="file" class="form-control-file" onchange="readURL(this);" id="anhSanPham" name="ImageFile" style="color:aliceblue"> < img style="max-width:80px; max-height:120px" id="blah" src="http://placehold.it/180" alt="your image" />',
            type: 'green',
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
                    btnClass: "btn-default",
                    action: function () {
                        $.ajax({
                            "url": "/Transaction/Handler?Command=" + "Delivered" + "&transactionId=" + transactionId,
                            "type": "POST",
                            "datatypye": "json",
                            success: function (data) {
                                window.location.reload();
                            },
                            error: function (data) {

                            }
                        });
                    }
                },
                cancel: {
                    text: "Hủy",
                    btnClass: "btn-red",
                }
            }
        });

    });

    transOffertbl.on('click', 'button[role="extendBtn"]', function () {
        var transactionId = transOffertbl.DataTable().row($(this).closest('tr')[0]).data()['transId'];
        var totalMoney = transOffertbl.DataTable().row($(this).closest('tr')[0]).data()['totalMoney'];
        var Fine = totalMoney * 0.1 ;
        $.confirm({
            icon: 'fa fa-question-circle',
            boxWidth: '100%',
            title: 'Xóa Đơn',
            content: '<h4>Bạn có muốn gia hạn thêm thời gian giao tiền.Bạn sẽ bị phạt 10% giá trị hóa đơn tương ứng với ' + Fine +' VNĐ. </h4>',
            type: 'green',
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
                    btnClass: "btn-default",
                    action: function () {
                        $.ajax({
                            "url": "/Transaction/Handler?Command=" + "Extend" + "&transactionId=" + transactionId,
                            "type": "POST",
                            "datatypye": "json",
                            success: function (data) {
                                window.location.reload();
                            },
                            error: function (data) {

                            }
                        });
                    }
                },
                cancel: {
                    text: "Hủy",
                    btnClass: "btn-red",
                }
            }
        });

    });


    transOffertbl.on('click', 'button[role="deliveredBtn"]', function () {
        var transactionId = transOffertbl.DataTable().row($(this).closest('tr')[0]).data()['transId'];

        $.confirm({
            icon: 'fa fa-question-circle',
            boxWidth: '100%',
            title: 'Xóa Đơn',
            content: '<h4>Bạn có chắc đã nhận được hàng từ chủ nông trại?</h4>',
            type: 'green',
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
                    btnClass: "btn-default",
                    action: function () {
                        $.ajax({
                            "url": "/Transaction/Handler?Command=" + "Delivered" + "&transactionId=" + transactionId,
                            "type": "POST",
                            "datatypye": "json",
                            success: function (data) {
                                window.location.reload();
                            },
                            error: function (data) {

                            }
                        });
                    }
                },
                cancel:  {
                    text: "Hủy",
                    btnClass: "btn-red",
                }
            }
        });
        
    });

    transOffertbl.on('click', 'button[role="notDeliveredBtn"]', function () {

        var transactionId = transOffertbl.DataTable().row($(this).closest('tr')[0]).data()['transId'];

        $.confirm({
            icon: 'fa fa-question-circle',
            boxWidth: '100%',
            title: 'Chưa Nhận Được Hàng',
            content: '<h4>Bạn có chắc không nhận được hàng từ chủ nông trại?</h4>',
            type: 'orange',
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
                    btnClass: "btn-default",
                    action: function () {
                        $.ajax({
                            "url": "/Transaction/Handler?Command=" + "NotDelivered" + "&transactionId=" + transactionId,
                            "type": "POST",
                            "datatypye": "json",
                            success: function (data) {
                                window.location.reload();
                            },
                            error: function (data) {

                            }
                        });
                    }
                },

                cancel: {
                    text: "Hủy",
                    btnClass: "btn-red",
                }
            }
        });

    });

    transOffertbl.on('click', 'button[role="report"]', function () {

        var id = transOffertbl.DataTable().row($(this).closest('tr')[0]).data()['transId'];

    });

    transOffertbl.on('click', 'button[role="cancelBtn"]', function () {

        var transactionId = transOffertbl.DataTable().row($(this).closest('tr')[0]).data()['transId'];

        $.confirm({
            icon: 'fa fa-question-circle',
            boxWidth: '100%',
            title: 'Hủy Thỏa Thuận',
            content: '<h4>Bạn có muốn hủy thỏa thuân này? Bạn sẽ mất 1 điểm tín nhiệm</h4>',
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
                    btnClass: "btn-default",
                    action: function () {
                        $.ajax({
                            "url": "/Transaction/Handler?Command=" + "Cancel" + "&transactionId=" + transactionId,
                            "type": "POST",
                            "datatypye": "json",
                            success: function (data) {
                                window.location.reload();
                            },
                            error: function (data) {

                            }
                        });
                    }
                },
                cancel: {
                    text: "Hủy",
                    btnClass: "btn-red",
                }
            }
        });

    });

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

})