using Model.Dao.Farmer;
using Model.DTO.Farmer;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FarmHub.Areas.Farmer.Controllers
{
    public class FarmerOrderController : Controller
    {
        // GET: Farmer/FarmerOrder
        public ActionResult FarmerOrderIndex(int purchaseOfferId)
        {
            FarmerOrderDTO traderOrder = new FarmerOrderDTO();
            traderOrder.purchaseOfferDetail = PurchaseOfferDetail(purchaseOfferId);

            return View(traderOrder);
        }


        public PURCHASE_OFFER PurchaseOfferDetail(int id)
        {
            var dao = new FarmerOrderDao();
            var purchaseDetail = dao.purchaseDetail(id);
            return purchaseDetail;
        }

        [HttpPost]
        public ActionResult CreateOffer(FarmerOrderDTO model, int saleOfferId, string counterOffered)
        {
            var userId = Convert.ToInt32(Session["UserID"]);

            var dao = new FarmerOrderDao();
            dao.Insert(model, saleOfferId, userId, counterOffered);
            return RedirectToAction("", "TraderOffer");
        }
    }
}