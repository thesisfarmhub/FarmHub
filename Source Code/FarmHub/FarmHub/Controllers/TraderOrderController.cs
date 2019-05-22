using Model.Dao.Trader;
using Model.DTO.Trader;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FarmHub.Controllers
{
    public class TraderOrderController : Controller
    {
        // GET: TraderOrder
        public ActionResult TraderOrderIndex(int saleOfferId)
        {

            TraderOrderDTO traderOrder = new TraderOrderDTO();
            traderOrder.saleOfferDetail = SaleOfferDetail(saleOfferId);

            return View(traderOrder);

        }
        public SALE_OFFER SaleOfferDetail(int id)
        {
            var dao = new OrderDao();

            var saleDetail = dao.saleDetail(id);

            return saleDetail;
        }
        [HttpPost]

        public ActionResult CreateOffer(TraderOrderDTO model, int saleOfferId)
        {
            var userId = Convert.ToInt32(Session["UserID"]);
          
            var dao = new OrderDao();
            dao.Insert(model, saleOfferId, userId);
            return View();
        }
    }
}