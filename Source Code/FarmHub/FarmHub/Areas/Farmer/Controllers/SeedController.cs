using Model.Dao.Farmer;
using Model.EF;
using System.Web.Mvc;

namespace FarmHub.Areas.Farmer.Controllers
{
    public class SeedController : Controller
    {
        // GET: Farmer/Seed
        public ActionResult Index()
        {
            var listSeed = dao.ListAll();
            return View(listSeed);
        }

        // GET: Farmer/Seed/Details/5
        public ActionResult Details(int id)
        {
            var seedModel = dao.Details(id);
            return View(seedModel);
        }

        // GET: Farmer/Seed/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Farmer/Seed/Create
        [HttpPost]
        public ActionResult Create(SEED seedModel)
        {
            if (ModelState.IsValid)
            {
                var result = dao.Create(seedModel);

                if (result > 0)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    ModelState.AddModelError("", "Tạo mới thất bại !!!");
                }
            }

            return View();
        }

        // GET: Farmer/Seed/Edit/5
        public ActionResult Edit(int id)
        {
            var seedModel = dao.Details(id);
            return View(seedModel);
        }

        // POST: Farmer/Seed/Edit/5
        [HttpPost]
        public ActionResult Edit(SEED seedModel)
        {
            if (ModelState.IsValid)
            {
                var result = dao.Update(seedModel);

                if (result)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật thất bại");
                }
            }

            var seedModelState = dao.Details(seedModel.Id_Seed);
            return View(seedModelState);
        }

        // GET: Farmer/Seed/Delete/5
        public ActionResult Delete(int id)
        {
            var seedModel = dao.Details(id);
            return View(seedModel);
        }

        // POST: Farmer/Seed/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            if (ModelState.IsValid)
            {
                var result = dao.Delete(id);

                if (result)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    ModelState.AddModelError("", "Xóa thất bại");
                }
            }

            var seedModel = dao.Details(id);
            return View(seedModel);
        }

        #region Function

        readonly SeedDAO dao = new SeedDAO();

        #endregion
    }
}
