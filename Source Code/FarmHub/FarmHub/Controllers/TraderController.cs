using FarmHub.Models;
using Model.Dao.Trader;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FarmHub.Controllers
{
    public class TraderController : Controller
    {

        public ActionResult Index()
        {
            var session = Convert.ToInt32(Session["TraderID"]);

            var listPurchaseOffer = purchaseOfferDAO.ListPOByTraderID(session);

            var suitalbleSaleOffers = purchaseOfferDAO.SuitalbeSaleOffers(listPurchaseOffer);

            var listTopProducts = purchaseOfferDAO.ListTopProductDetails();

            var traderHomePageModel = new TraderHomePageModel
            {
                ListPurchaseOffer = listPurchaseOffer,
                SuitalbeSaleOffers = suitalbleSaleOffers,
                ListTopProducts = listTopProducts
            };

            return View(traderHomePageModel);
        }

        #region Function

        readonly PurchaseOfferDAO purchaseOfferDAO = new PurchaseOfferDAO();

        #endregion
    }
}
