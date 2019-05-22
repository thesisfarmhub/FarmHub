

$('document').ready(function () {
    var purchaseOfferId = $('#purchaseOfferId').val();

    var saleTbl = $("#suitableSaleOffer").DataTable({
        "ajax": {
            "url": `/TraderOfferDetail/GetSuitableListSale?purchaseOfferId=${purchaseOfferId}`,
            "type": "GET",
            "datatypye": "json"
        },
        "pageLength": 5,

        "columns": [
            {
                "data": "productName",
                "render": function (data, type, rowData) {
                    return data + ' (' + rowData['seedName'] + ')';
                },
            },
            {
                "data": "seedName",
                visible:false
            },
            { "data": "farmName" },
            { "data": "price" },
            {
                "data": "quantity",
                "render": function (data, type, rowData) {
                    return data + ' (' + rowData['massName'] + ')';
                },
            },
            {
                "data": "massName",
                visible:false
            },
            { "defaultContent": '<button type="button" class="small blue button">Xem chi tiết</button>' },

        ],
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Vietnamese.json",
            searchPlaceholder: "Nhập từ khóa"
        },

    });

    

    $("#saleOfferByPurchaseOffer").DataTable({
        paging: true,
        scrollCollapse: true,
        "ajax": {
            "url": `/TraderOfferDetail/SaleOfferListByPurchaseOfferID?purchaseOfferId=${purchaseOfferId}`,
            dataSrc: ""
        },
        "pageLength": 5,
        "columns": [
            { "data":"createdDate"},
            {

                "data": "productName",
                "render": function (data, type, rowData) {
                    return data + ' (' + rowData['seedName'] + ')';
                },
            },
            {
                "data": "seedName",
                visible: false
            },
            { "data": "farmName" },
            { "data": "farmerName" },
            { "data": "price" },
            {
                "data": "quantity",
                "render": function (data, type, rowData) {
                    return data + ' (' + rowData['massName'] + ')';
                },
            },
            {
                "data": "massName",
                visible: false
            },
            { "data": "totalMoney" },
            {
                "render": function (data, type, rowData) {

                    var agreebtnHTML = '<button type="button" class="small green button" role="agreeBtn"  data-toggle="Detailtooltip" title="Đồng ý" >Đồng Ý </button>';
                    var rejectbtnHTML = ' <button class="small red button" type="button" role="rejectBtn" data-toggle="Deletetooltip" title="Từ Chối">Từ Chối </button >';

                    return agreebtnHTML + rejectbtnHTML
                },
            }
        ],

        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Vietnamese.json"
        }
    });


    var saleOfferByPurchaseOffer = $("#saleOfferByPurchaseOffer");
    var purchaseOfferDetailsTbl = $("#purchaseOfferDetailsTbl");

    // Agree button
    saleOfferByPurchaseOffer.on('click', 'button[role="agreeBtn"]', function () {
        
        var id = saleOfferByPurchaseOffer.DataTable().row($(this).closest('tr')[0]).data()['purchOfferID'];
        var a = 1;
        $.confirm({
           
            icon: 'fa fa-question-circle',
            boxWidth: '100%',
            title: 'Đồng Ý',
            content: '<h4>Bạn có chấp nhận thỏa thuận này?</h4>',
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
                    text: "Chấp Nhận",
                    action: function () {
                        if (a = 1) {
                            $.confirm({
                                icon: 'fa fa-exclamation-triangle',
                                title: "Lỗi",
                                content: "<h4>Số Lượng đặt vượt quá giới hạn <h4/>",
                                animation: 'left',
                                confirmButton: false,
                                type: 'red',
                                typeAnimated: true,
                                animationSpeed: 500,

                                closeIcon: true,
                                closeIconClass: 'fa fa-close',

                                buttons: {
                                    CounterOffer: {
                                        text: "Thỏa thuận lại",
                                        action: function () {
                                            if (a = 1) {
                                                $.confirm({
                                                    icon: 'fa fa-pencil',
                                                    title: "Thỏa Thuận Lại",
                                                    content: '<h4>Nhập vào số lượng đặt mới <h4/> <input id="counterOffer" type="number" class="btn btn-block">',
                                                    animation: 'left',
                                                    confirmButton: false,
                                                    type: 'red',
                                                    typeAnimated: true,
                                                    animationSpeed: 500,
                                                    closeIcon: true,
                                                    closeIconClass: 'fa fa-close',

                                                })
                                            }
                                        }
                                    },

                                    cancle: function () {

                                    }
                                }
                            })
                        }
                    }
                    
                   


                    //text: "Xác Nhận",
                    //btnClass: "btn-red",
                    //action: function () {
                    //        $.ajax({
                    //            type: "POST",
                    //            url: "/TraderOfferDetail/CallAgreeOffer/" + id,
                    //            contentType: "application/json; charset=utf-8",
                    //            method: 'POST',
                    //            datatype: "text",
                    //            serverSide: true,
                    //            success: function (data) {
                    //                console.log(data);
                    //                if (data == false) {
                    //                    $.confirm({
                    //                        icon: 'fa fa-exclamation-triangle',
                    //                        title: "Lỗi",
                    //                        content: "<h4>Số Lượng đặt vượt quá giới hạn <h4/>",
                    //                        animation: 'left',
                    //                        confirmButton: false,
                    //                        type: 'red',
                    //                        typeAnimated: true,
                    //                        animationSpeed: 500,

                    //                        closeIcon: true,
                    //                        closeIconClass: 'fa fa-close',

                    //                        buttons: {
                    //                            CounterOffer: {
                    //                                $.confirm({
                    //                                    icon: 'fa fa-pencil',
                    //                                    title: "Lỗi",
                    //                                    content: '<h4>Nhập vào số lượng đặt mới <h4/> <input id="counterOffer" type="number" class="btn btn-block">',
                    //                                    animation: 'left',
                    //                                    confirmButton: false,
                    //                                    type: 'red',
                    //                                    typeAnimated: true,
                    //                                    animationSpeed: 500,

                    //                                    closeIcon: true,
                    //                                    closeIconClass: 'fa fa-close',


                    //                                })
                    //                            },

                    //                            Cancle {

                    //                            }
                    //                        }

                    //                    })
                    //                }
                    //                purTbl.row($(this).parents('tr')).remove().draw(true);
                    //                purTbl.ajax.reload();
                    //            },
                    //            error: function (data) {
                    //                console.log("Error response is: " + data);
                    //            }
                    //        });
                    //}
                },
                cancel:  {
                    text: "Hủy",
                }
            }
        });

    });

    saleOfferByPurchaseOffer.on('click', 'button[role="rejectBtn"]', function () {

        var id = saleOffertbl.DataTable().row($(this).closest('tr')[0]).data()['id'];
        window.location.href = window.location.origin + "/TraderOrder/TraderOrderIndex?" + "saleOfferId=" + id;



    });

})