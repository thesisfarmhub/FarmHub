using Model.Dao.Farmer;
using Model.DTO.Trader;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FarmHub.Controllers
{
    public class TransactionController : Controller
    {
        // GET: Transaction
        public ActionResult TransactionIndex()
        {
            
            return View();
        }

        public ActionResult Confirm()
        {
            var dao = new TransactionOrderDAO();
            return new EmptyResult();
        }

        public ActionResult Cancel()
        {
            var dao = new TransactionOrderDAO();
            return new EmptyResult();
        }

        [HttpGet]
        public JsonResult GetListTransaction()
        {
            var transactionList = new TransactionOrderDAO().GetListTransaction();
            List<TraderTransactionDTO> transactionDTOs = new List<TraderTransactionDTO>();

            foreach (var p in transactionList)
            {
                var traderTransactionDTO = new TraderTransactionDTO();
                traderTransactionDTO.transId = p.Id_TransactionOrder;
                traderTransactionDTO.endTransDay = ((DateTime)p.Transaction_Date).ToShortDateString();
                traderTransactionDTO.productName = p.PRODUCT_DETAIL.PRODUCT.Name_Product;
                traderTransactionDTO.seedName = p.PRODUCT_DETAIL.SEED.Name_Seed;
                traderTransactionDTO.farmName = p.SALE_OFFER_DETAIL.SALE_OFFER.FARM.Name_Farm;
                traderTransactionDTO.farmerName = p.SALE_OFFER_DETAIL.SALE_OFFER.FARM.FARMER.Name_Farmer;
                traderTransactionDTO.price = p.Transaction_Price;
                traderTransactionDTO.quantity = p.SALE_OFFER_DETAIL.Quantity_SaleOfferDetail;
                traderTransactionDTO.unitName = p.Transaction_Mass;
                traderTransactionDTO.totalMoney = p.Transaction_TotalMoney;
                traderTransactionDTO.StatusName = p.Status_Trans.Name_StatusTrans;


                transactionDTOs.Add(traderTransactionDTO);
            }

            return Json(new { data = transactionDTOs }, JsonRequestBehavior.AllowGet);
        }
    }
}