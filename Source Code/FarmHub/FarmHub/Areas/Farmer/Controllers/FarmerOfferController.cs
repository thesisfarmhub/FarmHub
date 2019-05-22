using Model.Dao.Farmer;
using Model.DTO.Farmer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FarmHub.Areas.Farmer.Controllers
{
    public class FarmerOfferController : Controller
    {
        public ActionResult FarmerOfferIndex()
        {
            
            var dao = new FarmerOfferDao();

            var productlist = dao.ProductList();
            var unitlist = dao.UnitList();

            FarmerOfferDTO farmerOfferDTO = new FarmerOfferDTO();
            farmerOfferDTO.products = ProductList();
            farmerOfferDTO.units = UnitList();

            return View(farmerOfferDTO);
        }

        public IEnumerable<ProductDTO> ProductList()
        {
            var dao = new FarmerOfferDao();
            var productlist = dao.ProductList();

            List<ProductDTO> productDTOs = new List<ProductDTO>();

            foreach (var item in productlist)
            {
                ProductDTO product = new ProductDTO();
                product.productid = item.Id_Product;
                product.productName = item.Name_Product;

                productDTOs.Add(product);
            }

            return productDTOs;
        }

        public IEnumerable<UnitMassDTO> UnitList()
        {
            var dao = new FarmerOfferDao();
            var unitlist = dao.UnitList();

            List<UnitMassDTO> unitDTOs = new List<UnitMassDTO>();

            foreach (var item in unitlist)
            {
                UnitMassDTO unit = new UnitMassDTO();
                unit.id = item.Id_MassUnit;
                unit.name = item.Name_MassUnit;

                unitDTOs.Add(unit);
            }
            return unitDTOs;

        }

        public IEnumerable<SeedDTO> SeedList()
        {
            var dao = new FarmerOfferDao();
            var seedlist = dao.SeedList();

            List<SeedDTO> seedDTOs = new List<SeedDTO>();

            foreach (var item in seedlist)
            {
                SeedDTO seed = new SeedDTO();
                seed.id = item.Id_Seed;
                seed.name = item.Name_Seed;

                seedDTOs.Add(seed);
            }
            return seedDTOs;

        }

        [HttpGet]
        public JsonResult GetListSale()
        {
            int id = Convert.ToInt32(Session["UserId"]);
           
            var salelList = new SaleOfferDAO().getSaleOfferByIdUser(id);
            List<SaleOfferDTO> saleOfferDTOs = new List<SaleOfferDTO>();

            foreach (var s in salelList)
            {
                var saleOfferDTO = new SaleOfferDTO();
                saleOfferDTO.saleOfferid = s.Id_SaleOffer;
                saleOfferDTO.canBargain = s.Can_Bargain;
                saleOfferDTO.createdDate = ((DateTime)s.Date_SaleOffer).ToShortDateString();
                saleOfferDTO.farmName = s.FARM.Name_Farm;
                saleOfferDTO.productName = s.PRODUCT_DETAIL.PRODUCT.Name_Product;
                saleOfferDTO.seedName = s.PRODUCT_DETAIL.SEED.Name_Seed;
                saleOfferDTO.quantity = s.Quantity_SaleOffer;
                saleOfferDTO.massName = s.MASS_UNIT.Name_MassUnit;
                saleOfferDTO.price = s.Price_Offer;
                saleOfferDTO.numberOfOrder = s.Number_Of_Orders;

                saleOfferDTOs.Add(saleOfferDTO);
            }
            return Json(new { data = saleOfferDTOs }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetListPurchase()
        {
            var purchaselList = new PurchaseOfferDao().getPurchaseOffer();
            List<PurchaseOfferDTO> purchaseOfferDTOs = new List<PurchaseOfferDTO>();

            foreach (var p in purchaselList)
            {
                var purchaseOfferDTO = new PurchaseOfferDTO();
                purchaseOfferDTO.id = p.Id_PurchasesOffer;
                purchaseOfferDTO.canBargain = p.Can_Bargain;
                purchaseOfferDTO.createdDate = ((DateTime)p.Date_PurchaseOffer).ToShortDateString();
                purchaseOfferDTO.productName = p.PRODUCT.Name_Product;
                purchaseOfferDTO.seedName = p.SEED.Name_Seed;
                purchaseOfferDTO.quantity = p.Quantity_PurchaseOffer;
                purchaseOfferDTO.massName = p.MASS_UNIT.Name_MassUnit;
                purchaseOfferDTO.traderName = p.TRADER.Name_Trader;
                purchaseOfferDTO.price = p.Price_Purchase;
                purchaseOfferDTO.numberOfOrder = p.Number_Of_Orders;
                purchaseOfferDTO.payingTime = p.Paying_Time;
                purchaseOfferDTO.deliveringTime = p.Delivering_Time;

                purchaseOfferDTOs.Add(purchaseOfferDTO);
            }

            return Json(new { data = purchaseOfferDTOs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Create(SaleOfferDTO model)
        {
            if (ModelState.IsValid)
            {
                var dao = new FarmerOfferDao();
                dao.Insert(model);
            }
            return View("OfferIndex");
        }

        [HttpDelete]
        public JsonResult CallDeleteOffer(int id)
        {
            var dao = new FarmerOfferDao();
            dao.DeleteOffer(id);
            return Json(new object[] { new object() }, JsonRequestBehavior.AllowGet);
        }
    }
}