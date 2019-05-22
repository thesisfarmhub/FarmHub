

$('document').ready(function () {
    var saleOfferId = $('#saleOfferId').val();

    var saleTbl = $("#suitablePurchaseOfferTbl").DataTable({
        "ajax": {
            "url": `${window.location.origin}/FarmerOfferDetail/GetSuitableListPurchase?saleOfferId=${saleOfferId}`,
            "type": "GET",
            "datatypye": "json"
        },
        "pageLength": 5,
        "columns": [
            { "data":"traderName"},
            { "data": "productName" },
            { "data":"seedName"},
            { "data": "quantity" },
            { "data": "massName" },
            { "data": "price" },
            { "defaultContent": '<button type="button" class="small blue button">Xem chi tiết</button>' },

        ],
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Vietnamese.json",
            searchPlaceholder: "Nhập từ khóa"
        },

    });

    var purchaseOfferFromSaleOffer = $('#purchaseOfferFromSaleOffer').val();

    $("#purchaseOfferFromSaleOffer").DataTable({
        paging: true,
        scrollCollapse: true,
        "ajax": {
            "url": `${window.location.origin}/FarmerOfferDetail/PurchaseOfferListBySaleOfferID?saleOfferId=${saleOfferId}`,
            dataSrc: ""
        },
        "pageLength": 5,
        "columns": [
            { "data":"createdDate"},
            { "data": "traderName" },
            { "data": "productName" },
            { "data": "seedName" },
            { "data": "quantity" },
            { "data": "price" },
            { "data": "massName" },
            { "data": "totalMoney" },
        ],

        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Vietnamese.json"
        }
    });

})