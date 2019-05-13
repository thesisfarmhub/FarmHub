
//--------------------------Date range search----------------------------
$.fn.dataTable.ext.search.push(
    function (settings, data, dataIndex) {
        //var day=$("#Purchasedatetimebegin").val($.datepicker.formatDate('dd MM yy', new Date()));

        var min = $('#Purchasedatetimebegin').datepicker("getDate");
        var max = $('#Purchasedatetimeend').datepicker("getDate");


        var startDate = parseDate(data[0]);

        if (min == null || max == null) { return true; }
        if (startDate <= max && startDate >= min) { return true; }

        return false;
    },

    function (settings, data, dataIndex) {
        var min = parseInt($('#Purchaseweightbegin').val());
        var max = parseInt($('#Purchaseweightend').val());
        var weight = parseFloat(data[2]) || 0; // use data for the age column

        if ((isNaN(min) && isNaN(max)) ||
            (isNaN(min) && weight <= max) ||
            (min <= weight && isNaN(max)) ||
            (min <= weight && weight <= max)) {
            return true;
        }
        return false;
    },

    function (settings, data, dataIndex) {
        //var day=$("#Purchasedatetimebegin").val($.datepicker.formatDate('dd MM yy', new Date()));

        var min = $('#Saledatetimebegin').datepicker("getDate");
        var max = $('#Saledatetimeend').datepicker("getDate");

        var startDate = parseDate(data[0]);

        if (min == null || max == null) { return true; }
        if (startDate <= max && startDate >= min) { return true; }

        return false;
    },

    function (settings, data, dataIndex) {
        var min = parseInt($('#Saleweightbegin').val());
        var max = parseInt($('#Saleweightend').val());
        var weight = parseFloat(data[2]) || 0; // use data for the age column

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


$("#Saledatetimebegin").datepicker(
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

$("#Saledatetimeend").datepicker(
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

$("#Purchasedatetimebegin").datepicker(
    {
        onSelect: function () {
            $('#purchaseOfferTbl').DataTable().draw();
        },
        changeMonth: true,
        changeYear: true,
        duration: '1000',
        showAnim: "slide",
        dateFormat: 'dd-mm-yy',
        monthNames: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
        monthNamesShort: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
    });

$("#Purchasedatetimeend").datepicker(
    {
        onSelect: function () {
            $('#purchaseOfferTbl').DataTable().draw();
        },
        changeMonth: true,
        changeYear: true,
        duration: '1000',
        showAnim: "slide",
        dateFormat: 'dd-mm-yy',
        monthNames: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
        monthNamesShort: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
    });

//Date Range search trigger
$('#Purchasedatetimebegin, #Purchasedatetimeend').change(function () {
    $('#purchaseOfferTbl').DataTable().draw();
});
$('#Saledatetimebegin, #Saledatetimeend').change(function () {
    $('#saleOfferTbl').DataTable().draw();
});

//Weight Range Search trigger
$('#Purchaseweightbegin, #Purchaseweightend').keyup(function () {
    $('#purchaseOfferTbl').DataTable().draw();
});
$('#Saleweightbegin, #Saleweightend').keyup(function () {
    $('#saleOfferTbl').DataTable().draw();
});
//--------------------------Date range search----------------------------


//--------------------------------------Main Tables-----------------------------------------------------//

//Data=Table PurchaseOffer
$(document).ready(function () {
    $('[data-tooltip="Newtooltip"]').tooltip(); 
    $('[data-toggle="Deletetooltip"]').tooltip();
    $('[data-toggle="Detailtooltip"]').tooltip();
    $('[data-toggle="Bargaintooltip"]').tooltip(); 

    var purchaseOfferTbl = $("#purchaseOfferTbl");

    var purTbl = purchaseOfferTbl.DataTable({
        
        paging: false,
        scrollCollapse: true,
        "ajax": {
            "url": "/Offer/GetListPurchase",
            "type": "GET",
            "datatypye": "json"
        },

        "columns": [
            { "data": "createdDate"},
            { "data": "canBargain"},
            { "data": "productName"},
            {
                "data": "quantity",
                //Merge Data of MassName to Quantity
                "render": function (data, type, rowData) {
                    return data + ' (' + rowData['massName'] + ')';
                },
            },
            { "data": "massName"},
            { "data": "trueMass"},
            { "data": "price"},
            { "data": "numberOfOrder"},
            //{ "data": "payingTime"},
            //{ "data": "deliveringTime" },
            

            {               
                 "render": function (data, type, rowData) {
                     
                     var detailbtnHTML = '<button type="button" class="small blue button" role="detailBtn"  data-toggle="Detailtooltip" title="Xem Chi tiết Đơn" >Xem Chi Tiết</i></span></button>';
                     var deletebtnHTML = ' <button class="btn btn-danger glyphicon glyphicon-trash" type="button" role="deleteBtn" style="margin-top:-6px;width:28px;height:27px;" data-toggle="Deletetooltip" title="Xóa Đơn"> </button >';

                    if (rowData['canBargain'] = true) {
                        return '<img src="/Assets/Images/Bargain.png" width="20" height="20" title="Có Thể Thương Lượng "/> ' + detailbtnHTML + deletebtnHTML

                        
                    }
                     return '<img src="/Assets/Images/Non-Bargainpng.png" width="20" height="20" title="Không Được Thương Lượng " />' + detailbtnHTML + deletebtnHTML
                    
                },
               
            }
        ],
       
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Vietnamese.json",
            searchPlaceholder: "Nhập từ khóa"
        },
        //fixedColumns: {
        //    rightColumns: 1
        //},
        //scrollY: 400,
        //scrollX: true,

        "fnInitComplete": function (oSetting, json) {
            PurchaseaddSearchAdvance(json);
        },

        "scrollCollapse": true,
        "columnDefs": [
            {
                //Merge Data of MassName to Quantity
                "render": function (data, type, rowData) {
                    return data + ' (' + rowData['massName'] + ')';
                },
                "targets": 2
            },
            { "visible": false, "targets": [5] },
            { "visible": false, "targets": [4] },
            { "visible": false, "targets": [1] }

        ]
    });

    function PurchaseaddSearchAdvance(json) {
        $("#purchaseOfferTbl thead").append($("#purchaseOfferTbl thead tr:first").clone());

        $("#purchaseOfferTbl thead tr:eq(1) th").each(function (index) {
            if (index != 5) {
                $(this).replaceWith('<th> <center><input class="AdPlaceHolder" type="text" placeholder="Tìm ' + $(this).html() + '" style = "max-width:70px;"></input>  </center></th>');
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
        $(".AdPlaceHolder ::placeholder").css("width", "100px");
    }

    //Delete Offer
    purTbl.on('click', 'button[role="deleteBtn"]', function () {
        var id = purchaseOfferTbl.DataTable().row($(this).closest('tr')[0]).data()['id'];
        var NOO = purchaseOfferTbl.DataTable().row($(this).closest('tr')[0]).data()['numberOfOrder'];
      
        $.confirm({
            icon: 'fa fa-question-circle',
            boxWidth: '100%',
            title: 'Xóa Đơn',
            content: 'Bạn có muốn xóa đơn',
            type: 'red',
            typeAnimated: true,
            animationSpeed: 500,
            closeIcon: true,
            closeIconClass: 'fa fa-close',
            escapeKey: true,
            backgroundDismiss: false,
            columnClass: 'col-md-4',
            autoClose: 'cancel|6000',
            buttons: {
                confirm: function () {
                    if (NOO > 0) {
                        $.ajax({
                            type: "DELETE",
                            url: "/Offer/CallDeleteOffer/" + id,
                            contentType: "application/json; charset=utf-8",
                            method: 'DELETE',
                            datatype: "text",
                            serverSide: true,
                            success: function (data) {
                                console.log(data);
                                purTbl.row($(this).parents('tr')).remove().draw(true);
                                purTbl.ajax.reload();
                            },
                            error: function (data) {
                                console.log("Error response is: "+data);
                            }
                        });
                      
                    }

                    else {
                        $.confirm({
                            title:"Giao dịch trong thỏa thuận đang hoạt động",
                            content: "Vui lòng hủy tất cả giao dịch trước khi xóa thỏa thuận!",
                            animation: 'left',
                            confirmButton: false, 
                            type: 'red',
                            typeAnimated: true,
                            animationSpeed: 500,
                            icon: 'fa fa-exclamation-triangle',
                            closeIcon: true,
                            closeIconClass: 'fa fa-close',
                            columnClass: 'col-md-4'
                            
                        })
                    }
                },
                cancel: function () {
                    
                }
            }
        });
    })

    //DateTable SaleOffer
    var saleTbl = $("#saleOfferTbl").DataTable({
        "ajax": {
            "url": "/Offer/GetListSale",
            "type": "GET",
            "datatypye": "json"
        },

        "columns": [
            { "data": "productName" },
            { "data": "farmName" },
            { "data": "quantity" },
            { "data": "massName" },
            { "data": "trueMass" },
            { "data": "price" },
            { "defaultContent": '<button type="button" class="small blue button">Xem chi tiết</button>' },

        ],
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Vietnamese.json",
            searchPlaceholder: "Nhập từ khóa"
        },

        "fnInitComplete": function (oSetting, json) {
            SaleaddSearchAdvance(json);
        },

        "scrollCollapse": true,

        //"sDom": 'lrtip',

        "columnDefs": [
            {
                "render": function (data, type, rowData) {

                    return data + ' (' + rowData['massName'] + ')';
                },
                "targets": 2
            },
            { "visible": false, "targets": [3] },
            { "visible": false, "targets": [4] }
        ]
    });

    function SaleaddSearchAdvance(json) {
        $("#saleOfferTbl thead").append($("#saleOfferTbl thead tr:first").clone());

        $("#saleOfferTbl thead tr:eq(1) th").each(function (index) {
            if (index != 6) {
                $(this).replaceWith('<th> <center><input type="text" placeholder="Tìm ' + $(this).html() + '" style = "max-width:85px;"></input>  </center></th>');
                var searchControl = $("#saleOfferTbl thead tr:eq(1) th:eq(" + index + ") input");
                searchControl.on('keyup', function () {
                    purTbl.column(index).search(searchControl.val()).draw();
                });
            }
            else {
                $(this).replaceWith('<th></th>');
            }
        });

        $("#saleOfferTbl thead tr:eq(1)").hide();
    }

    //DateRange Search


    //Weight Range Search
    $('#Saleweightbegin, #Saleweightend').keyup(function () {
        table.draw();
    });

    //DataTable PurchaseOfferDetail
    $("#purchaseOfferDetailsTbl").DataTable({
        "columns": [
            { "data": "id" },
            { "data": "productName" },
            { "data": "quantity" },
            { "data": "name_mass" },
            { "data": "totalMoney" },
            { "data": "Status" },

        ],

        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Vietnamese.json"
        }
    });

  
    purchaseOfferTbl.on('click', 'button[role="detailBtn"]', function () {
        var id = purchaseOfferTbl.DataTable().row($(this).closest('tr')[0]).data()['id'];
        alert('id là:' + id);
        $.ajax({
            type: "GET",
            url: "/Offer/PurchaseDetailListByPurchaseOfferID?id=" + id,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var datatable = $("#purchaseOfferDetailsTbl").DataTable();
                datatable.clear();
                datatable.rows.add(response);
                datatable.draw();
                $('#myModal').modal('show');
            },
            failure: function (response) {
                console.log(response);
            }
        });
    });

    //Table PurchaseOffer Onclick
    $('#purchaseOfferTbl tbody').on('click', 'tr:not(td:eq(4))', function () {

        //Alternative way
        //table.columns([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]).search($(this).val()).draw();

        var product = purchaseOfferTbl.DataTable().row($(this)).data()['productName'];
        var mass = purchaseOfferTbl.DataTable().row($(this)).data()['trueMass'];
        var price = purchaseOfferTbl.DataTable().row($(this)).data()['price'];
        var id = purchaseOfferTbl.DataTable().row($(this)).data()['id'];
        //alert("id là:" + id);
        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
            saleTbl.search("").draw();
        }
        else {
            purTbl.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
            saleTbl.search("" + product).draw();/*.search(product).search(price).draw()*/;

        }
    });
})


