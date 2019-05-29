using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FarmHub.Areas.Admin.Controllers
{
    public class SeedController : Controller
    {
        // GET: Admin/Seed
        public ActionResult SeedIndex()
        {
            return View();
        }
    }
}