using Model.Dao.Trader;
using Model.DTO.Trader;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FarmHub.Controllers
{
    public class TraderOfferDetailController : Controller
    {
        // GET: OfferDetail
        public ActionResult TraderOfferDetail(int traderOfferId)
        {
            var dao = new PurchaseOfferDetailDao();

            var offerDetail = dao.Details(traderOfferId);
            var offerDTO = new PurchaseOfferDTO();

            offerDTO.purchOfferID = traderOfferId;
            offerDTO.productID = offerDetail.PRODUCT.Id_Product;
            offerDTO.productName = offerDetail.PRODUCT.Name_Product;    
            offerDTO.seedName = offerDetail.SEED.Name_Seed;
            offerDTO.price = offerDetail.Price_Purchase;
            offerDTO.quantity = offerDetail.Quantity_PurchaseOffer;
            offerDTO.massName = offerDetail.MASS_UNIT.Name_MassUnit;
            offerDTO.payingTime = offerDetail.Paying_Time;
            offerDTO.deliveringTime = offerDetail.Delivering_Time;
            offerDTO.image = offerDetail.PRODUCT.Image_Product;
            offerDTO.canBargain = offerDetail.Can_Bargain;

            return View(offerDTO);
        }

        [HttpGet]
        public JsonResult GetSuitableListSale(int purchaseOfferId)
        {
            var purchaselList = new SaleOfferDao().SuitableSaleOfferByProduct(purchaseOfferId);
            List<SaleOfferDTO> saleOfferDTOs = new List<SaleOfferDTO>();

            foreach (var p in purchaselList)
            {
                var saleOfferDTO = new SaleOfferDTO();
                saleOfferDTO.id = p.Id_SaleOffer;
                saleOfferDTO.canBargain = p.Can_Bargain;
                saleOfferDTO.createdDate = ((DateTime)p.Date_SaleOffer).ToShortDateString();
                saleOfferDTO.quantity = p.Quantity_SaleOffer;
                saleOfferDTO.seedName = p.PRODUCT_DETAIL.SEED.Name_Seed;
                saleOfferDTO.farmName = p.FARM.Name_Farm;
                saleOfferDTO.massName = p.MASS_UNIT.Name_MassUnit;
                saleOfferDTO.price = p.Price_Offer;
                saleOfferDTO.productName = p.PRODUCT_DETAIL.PRODUCT.Name_Product;

                saleOfferDTOs.Add(saleOfferDTO);
            }

            return Json(new { data = saleOfferDTOs }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult SaleOfferListByPurchaseOfferID(int purchaseOfferId)
        {

            var saleList = new PurchaseOfferDetailDao().SaleOfferListByPurchaseOfferID(purchaseOfferId);
            List<SaleOfferDTO> saleOfferDTOs = new List<SaleOfferDTO>();

            foreach (var p in saleList)
            {
                var saleOfferDTO = new SaleOfferDTO();

                saleOfferDTO.id = p.Id_SaleOffer;
                saleOfferDTO.createdDate = ((DateTime)p.Date_SaleOffer).ToShortDateString();
                saleOfferDTO.productName = p.PRODUCT_DETAIL.PRODUCT.Name_Product;
                saleOfferDTO.seedName = p.PRODUCT_DETAIL.SEED.Name_Seed;
                saleOfferDTO.farmName = p.FARM.Name_Farm;
                saleOfferDTO.farmerName = p.FARM.FARMER.Name_Farmer;
                saleOfferDTO.quantity = p.Quantity_SaleOffer;
                saleOfferDTO.massName = p.MASS_UNIT.Name_MassUnit;
                saleOfferDTO.price = p.Price_Offer;
                saleOfferDTO.totalMoney = p.Quantity_SaleOffer * p.MASS_UNIT.Weight_To_Kg * p.Price_Offer;

                saleOfferDTOs.Add(saleOfferDTO);
            }

            return Json(saleOfferDTOs, JsonRequestBehavior.AllowGet);
        }
    }
}