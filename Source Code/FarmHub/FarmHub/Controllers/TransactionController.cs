using Model.Dao.Trader;
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
            var dao = new TransactionDao();
            var model=dao.TransactionListAllPaging();
            return View(model);
        }

        public ActionResult Confirm()
        {
            var dao = new TransactionDao();
            return new EmptyResult();
        }

        public ActionResult Cancel()
        {
            var dao = new TransactionDao();
            return new EmptyResult();
        }
    }
}