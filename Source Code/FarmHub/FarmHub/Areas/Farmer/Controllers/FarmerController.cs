using FarmHub.Areas.Farmer.Models;
using Model.Dao.Authentication;
using Model.Dao.Farmer;
using Model.EF;
using System;
using System.Web.Mvc;

namespace FarmHub.Areas.Farmer.Controllers
{
    public class FarmerController : Controller
    {
        // Trang Chủ Farmer
        public ActionResult Index()
        {
            // Session
            var session = Convert.ToInt32(Session["FarmerID"]);

            var listSaleOffer = saleOfferDAO.ListSaleOfferByFarmerID(session);
            var suitablePurchaseOffer = saleOfferDAO.SuitablePurchaseOffer(listSaleOffer);
            var listTopProducts = saleOfferDAO.ListTopProductDetails();

            var farmerHomePageModel = new FarmerHomePageModel
            {
                ListSaleOffer = listSaleOffer,
                SuitablePurchaseOffer = suitablePurchaseOffer,
                FarmerListTopProduct = listTopProducts
            };

            return View(farmerHomePageModel);
        }

        // 
        public ActionResult Details(int id)
        {
            var farmerModel = dao.Details(id);
            return View(farmerModel);
        }

        // GET: Farmer/Farmer/Create
        public ActionResult Create()
        {
            SetViewBagUserAuthen();
            return View();
        }

        // POST: Farmer/Farmer/Create
        //[HttpPost]
        //public ActionResult Create(FARMER farmerModel)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        string fileName = Path.GetFileNameWithoutExtension(farmerModel.ImageFile.FileName);
        //        string fileExtension = Path.GetExtension(farmerModel.ImageFile.FileName);
        //        fileName = fileName + DateTime.Now.ToString("yymmssfff") + fileExtension;
        //        farmerModel.Image_Farmer = "/Data/Image/Farmer/" + fileName;
        //        fileName = Path.Combine(Server.MapPath("/Data/Image/Farmer/"), fileName);
        //        farmerModel.ImageFile.SaveAs(fileName);
        //        var result = dao.Create(farmerModel);

        //        ModelState.Clear();

        //        if (result > 0)
        //        {
        //            return RedirectToAction("Index");
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("", "Tạo mới thất bại !!!");
        //        }
        //    }

        //    SetViewBagUserAuthen();
        //    return View();
        //}

        // GET: Farmer/Farmer/Edit/5
        public ActionResult Edit(int id)
        {
            SetViewBagUserAuthen();
            var farmerModel = dao.Details(id);
            return View(farmerModel);
        }

        // POST: Farmer/Farmer/Edit/5
        [HttpPost]
        public ActionResult Edit(FARMER farmerModel)
        {
            if (ModelState.IsValid)
            {
                var result = dao.Update(farmerModel);

                if (result)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật thất bại !!!");
                }
            }

            SetViewBagUserAuthen();
            var farmModelState = dao.Details(farmerModel.Id_Farmer);
            return View(farmModelState);
        }

        // GET: Farmer/Farmer/Delete/5
        public ActionResult Delete(int id)
        {
            var farmModel = dao.Details(id);
            return View(farmModel);
        }

        // POST: Farmer/Farmer/Delete/5
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
                    ModelState.AddModelError("", "Xóa thất bại !!!");
                }
            }

            var farmerModel = dao.Details(id);
            return View(farmerModel);
        }

        #region Function

        readonly FarmerDAO dao = new FarmerDAO();

        readonly SaleOfferDAO saleOfferDAO = new SaleOfferDAO();

        // SetViewBagUserAuthen
        public void SetViewBagUserAuthen()
        {
            var dao = new UserAuthenDAO();
            ViewBag.Id_User = new SelectList(dao.ListAllActive(), "Id_User", "Name_User");
        }

        #endregion
    }
}
