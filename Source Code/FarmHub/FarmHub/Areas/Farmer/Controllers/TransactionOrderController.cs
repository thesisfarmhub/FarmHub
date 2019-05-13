using Model.Dao.Farmer;
using System;
using System.Web.Mvc;

namespace FarmHub.Areas.Farmer.Controllers
{
    public class TransactionOrderController : Controller
    {
        // GET: Farmer/TransactionOrder
        public ActionResult Index()
        {
            var session = Convert.ToInt32(Session["UserId"]);
            var listTO = dao.ListTransOrderByFarmerID(session);
            return View(listTO);
        }

        // GET: Farmer/TransactionOrder/Details/5
        public ActionResult Details(int id)
        {
            var toModel = dao.Details(id);
            return View(toModel);
        }

        #region Function

        readonly TransactionOrderDAO dao = new TransactionOrderDAO();

        #endregion
    }
}
