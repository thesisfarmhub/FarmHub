using Model.Dao.Farmer;
using System.Web.Mvc;

namespace FarmHub.Areas.Farmer.Controllers
{
    public class MarketTransHisController : Controller
    {
        // GET: Farmer/MarketTransHis
        public ActionResult Index()
        {
            var listMTH = dao.ListAll();
            return View(listMTH);
        }

        // GET: Farmer/MarketTransHis/Details/5
        public ActionResult Details(int id)
        {
            var mthModel = dao.Details(id);
            return View(mthModel);
        }

        #region Function

        readonly MarketTransHisDAO dao = new MarketTransHisDAO();

        #endregion
    }
}
