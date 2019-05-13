using FarmHub.Models;
using Model.Dao.Trader;
using System.Web.Mvc;

namespace FarmHub.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home => List Sale Offer : Chỉ là lấy thông tin từ DB show ra thôi. Sau khi Trader login thì sẽ có 1 Home Page riêng của Trader
        public ActionResult Index()
        {
            var listPurchaseOffer = purchaseOfferDAO.ListAllLimit();
            var suitalbleSaleOffers = purchaseOfferDAO.SuitalbeSaleOffers(listPurchaseOffer);

            var listTopProducts =purchaseOfferDAO.ListTopProductDetails();

            var homePageModel = new HomePageModel
            {
                ListPurchaseOffer = listPurchaseOffer,
                SuitalbeSaleOffers = suitalbleSaleOffers,
                ListTopProducts = listTopProducts
            };

            return View(homePageModel);
        }

        #region Function

        readonly PurchaseOfferDAO purchaseOfferDAO = new PurchaseOfferDAO();

        #endregion

    }
}