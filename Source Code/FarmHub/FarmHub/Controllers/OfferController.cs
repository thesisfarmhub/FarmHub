using Model.Dao.Trader;
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using Model.DTO.Trader;

namespace FarmHub.Controllers
{
    public class OfferController : Controller
    {
        
        public ActionResult OfferIndex()
        {
            var dao = new OfferDao();
           
            ViewBag.productList = dao.ProductList();
            ViewBag.unitList = dao.UnitList();

            return View();
        }
        [HttpGet]
        public JsonResult PurchaseDetailListByPurchaseOfferID(int id)
        {
            var purchaseDetailList = new PurchaseOfferDetailDao().PurchaseDetailListByPurchaseOfferID(id);
            List<PurchaseOfferDetailDTO> purchaseOfferDetailDTOs = new List<PurchaseOfferDetailDTO>();

            foreach (var p in purchaseDetailList)
            {
                var purchaseOfferDetailDTO = new PurchaseOfferDetailDTO();
                purchaseOfferDetailDTO.id = p.Id_PurchaseOfferDetail;
                purchaseOfferDetailDTO.productName = p.PURCHASE_OFFER.PRODUCT.Name_Product;
                purchaseOfferDetailDTO.quantity = p.Quantity_PurchaseOfferDetail;
                purchaseOfferDetailDTO.name_mass = p.PURCHASE_OFFER.MASS_UNIT.Name_MassUnit;

                purchaseOfferDetailDTOs.Add(purchaseOfferDetailDTO);
            }

            return Json(purchaseOfferDetailDTOs, JsonRequestBehavior.AllowGet);
        }
        #region Exp
        //public ActionResult GetListPurchase()
        //{
        //    List<PURCHASE_OFFER> purList = new List<PURCHASE_OFFER>();
        //    using (FarmHubDbContext db = new FarmHubDbContext())

        //        purList = db.PURCHASE_OFFER.ToList<PURCHASE_OFFER>();
        //    return Json(new { data = purList }, JsonRequestBehavior.AllowGet);
        //}

        //private IEnumerable<SALE_OFFER> GetAllSaleOfferList()
        //{
        //    return new SaleOfferDao().SaleListAllPaging(1, int.MaxValue);
        //}

        //private IEnumerable<PURCHASE_OFFER> GetAllPurchaseOfferList()
        //{
        //    return new PurchaseOfferDao().PurchaseListAllPaging();
        //}


        #endregion

        [HttpGet]
        public JsonResult GetListPurchase()
        {
            var purchaselList = new PurchaseOfferDAO().PurchaseListAllPaging();
            List<PurchaseOfferDTO> purchaseOfferDTOs = new List<PurchaseOfferDTO>();

            foreach (var p in purchaselList)
            {
                var purchaseOfferDTO = new PurchaseOfferDTO();
                purchaseOfferDTO.id = p.Id_PurchasesOffer;
                purchaseOfferDTO.canBargain = p.Can_Bargain;
                purchaseOfferDTO.createdDate = ((DateTime)p.Date_PurchaseOffer).ToShortDateString();
                purchaseOfferDTO.productName = p.PRODUCT.Name_Product;
                purchaseOfferDTO.quantity = p.Quantity_PurchaseOffer;
                purchaseOfferDTO.massName = p.MASS_UNIT.Name_MassUnit;
                purchaseOfferDTO.trueMass = p.MASS_UNIT.Weight_To_Kg * p.Quantity_PurchaseOffer;
                purchaseOfferDTO.price = p.Price_Purchase;
                purchaseOfferDTO.numberOfOrder = p.Number_Of_Orders;
                purchaseOfferDTO.payingTime = p.Paying_Time;
                purchaseOfferDTO.deliveringTime = p.Delivering_Time;
                purchaseOfferDTOs.Add(purchaseOfferDTO);
            }
            return Json(new { data = purchaseOfferDTOs }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetListSale()
        {
            var purchaselList = new SaleOfferDao().SaleListAllPaging();
            List<SaleOfferDTO> saleOfferDTOs = new List<SaleOfferDTO>();

            foreach (var p in purchaselList)
            {
                var saleOfferDTO = new SaleOfferDTO();
                saleOfferDTO.id = p.Id_SaleOffer;
                saleOfferDTO.canBargain = p.Can_Bargain;
                saleOfferDTO.createdDate = ((DateTime)p.Date_SaleOffer).ToShortDateString();
                saleOfferDTO.quantity = p.Quantity_SaleOffer;
                saleOfferDTO.farmName = p.FARM.Name_Farm;
                saleOfferDTO.massName = p.MASS_UNIT.Name_MassUnit;
                saleOfferDTO.trueMass = p.MASS_UNIT.Weight_To_Kg * p.Quantity_SaleOffer;
                saleOfferDTO.price = p.Price_Offer;
                saleOfferDTO.productName = p.PRODUCT_DETAIL.PRODUCT.Name_Product;

                saleOfferDTOs.Add(saleOfferDTO);
            }

            return Json(new { data = saleOfferDTOs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Create(int productId, int quantity, int unit, int price, int payingTime, int deliveringTime, int canBargain)
        {
            if (ModelState.IsValid)
            {
                var dao = new OfferDao();

          
                 dao.Insert();
                
            }
            return View("Create");
        }

        [HttpDelete]
        public JsonResult CallDeleteOffer(int id)
        {
            var dao = new OfferDao();
            dao.DeleteOffer(id);
            return Json(new object[] { new object() }, JsonRequestBehavior.AllowGet);
        }
      

    }
}