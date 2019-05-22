using Model.Dao.Farmer;
using Model.DTO.Farmer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FarmHub.Areas.Farmer.Controllers
{
    public class FarmerOfferDetailController : Controller
    {
        // GET: Farmer/FarmerOfferDetail
        public ActionResult FarmerOfferDetail(int farmerOfferId )
        {
           var dao = new SaleOfferDetailDao();

            var offerDetail = dao.Details(farmerOfferId);
            var offerDTO = new SaleOfferDTO();

            offerDTO.saleOfferid = farmerOfferId;
            offerDTO.productId= offerDetail.PRODUCT_DETAIL.Id_Product;
            offerDTO.productName = offerDetail.PRODUCT_DETAIL.PRODUCT.Name_Product;
            offerDTO.seedName = offerDetail.PRODUCT_DETAIL.SEED.Name_Seed;
            offerDTO.price = offerDetail.Price_Offer;
            offerDTO.quantity = offerDetail.Price_Offer;
            offerDTO.massName = offerDetail.MASS_UNIT.Name_MassUnit;
            offerDTO.payingTime = offerDetail.Paying_Time;
            offerDTO.deliveringTime = offerDetail.Delivering_Time;
            offerDTO.image = offerDetail.PRODUCT_DETAIL.Image_ProductDetail;
            offerDTO.canBargain = offerDetail.Can_Bargain;

            return View(offerDTO);
        }

        [HttpGet]
        public JsonResult GetSuitableListPurchase(int saleOfferId)
        {
            var PurchaselList = new PurchaseOfferDao().SuitPurchaseOfferBySaleOfferId(saleOfferId);
            List<PurchaseOfferDTO> saleOfferDTOs = new List<PurchaseOfferDTO>();

            foreach (var p in PurchaselList)
            {
                var purchaseOfferDTO = new PurchaseOfferDTO();
                purchaseOfferDTO.id = p.Id_PurchasesOffer;
                purchaseOfferDTO.canBargain = p.Can_Bargain;
                purchaseOfferDTO.createdDate = ((DateTime)p.Date_PurchaseOffer).ToShortDateString();
                purchaseOfferDTO.productName = p.PRODUCT.Name_Product;
                purchaseOfferDTO.seedName = p.SEED.Name_Seed;
                purchaseOfferDTO.quantity = p.Quantity_PurchaseOffer;
                purchaseOfferDTO.traderName = p.TRADER.Name_Trader;
                purchaseOfferDTO.massName = p.MASS_UNIT.Name_MassUnit;

                purchaseOfferDTO.price = p.Price_Purchase;
               

                saleOfferDTOs.Add(purchaseOfferDTO);
            }

            return Json(new { data = saleOfferDTOs }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult PurchaseOfferListBySaleOfferID(int saleOfferId)
        {

            var saleList = new SaleOfferDetailDao().SaleOfferListByPurchaseOfferID(saleOfferId);
            List<PurchaseOfferDTO> purchaseOfferDTOs = new List<PurchaseOfferDTO>();

            foreach (var p in saleList)
            {
                var PurchaseOfferDTO = new PurchaseOfferDTO();

                PurchaseOfferDTO.id = p.Id_PurchasesOffer;
                PurchaseOfferDTO.createdDate = ((DateTime)p.Date_PurchaseOffer).ToShortDateString();
                PurchaseOfferDTO.productName = p.PRODUCT.Name_Product;
                PurchaseOfferDTO.seedName = p.SEED.Name_Seed;
                PurchaseOfferDTO.traderName = p.TRADER.Name_Trader;
                PurchaseOfferDTO.quantity = p.Quantity_PurchaseOffer;
                PurchaseOfferDTO.massName = p.MASS_UNIT.Name_MassUnit;
                PurchaseOfferDTO.price = p.Price_Purchase;
                PurchaseOfferDTO.totalMoney = p.Quantity_PurchaseOffer * p.MASS_UNIT.Weight_To_Kg * p.Price_Purchase;

                purchaseOfferDTOs.Add(PurchaseOfferDTO);
            }

            return Json(purchaseOfferDTOs, JsonRequestBehavior.AllowGet);
        }

        
    }
}