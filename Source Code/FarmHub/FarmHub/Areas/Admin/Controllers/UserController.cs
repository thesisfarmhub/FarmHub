﻿using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FarmHub.Common;
using PagedList;
using Model.Dao.Admin;

namespace FarmHub.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        // GET: Admin/User
        public ActionResult Index(string AdvancedCriteria,string BasicCriteria,string searchString, int page=1,int pageSize = 3)
        {
            var dao = new UserDao();
            
            //if (AdvancedCriteria != null)
            //{
            //    var model1 = dao.ListAllPagingAdvanced(AdvancedCriteria, BasicCriteria, searchString, page, pageSize);
            //    ViewBag.SearchString = searchString;
            //    return View(model1);
            //}

            var model2 = dao.ListAllPaging(BasicCriteria,searchString, page, pageSize);
          
            ViewBag.SearchString = searchString;

            return View(model2);
        }


        #region Create

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(USER_AUTHENTICATION user)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();

                var encryptorMD5Pass = Encryptor.MD5Hash(user.Password_User);
                user.Password_User = encryptorMD5Pass;

                int id = dao.Insert(user);
                if (id > 0)
                {
                    return RedirectToAction("Index", "User");
                }
                else
                {
                    ModelState.AddModelError("", ErrorList.REGISTER_ERROR);
                }
            }
            return View("index");
        }
        #endregion



        #region Update

        //[HttpGet]
        //public ActionResult Edit(int id)
        //{
        //    var user = new UserDao().ViewDetail(id);
        //    return View(user);
        //}

        //[HttpPost]
        //public ActionResult Edit(USER_AUTHENTICATION user)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        var dao = new UserDao();

        //        if(!string.IsNullOrEmpty(user.Password))
        //        {
        //            var encryptorMD5Pass = Encryptor.MD5Hash(user.Password);
        //            user.Password = encryptorMD5Pass;
        //        }


        //        bool result = dao.Update(user);
        //        if (result)
        //        {
        //            return RedirectToAction("Index", "User");
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("", ErrorList.REGISTER_ERROR);
        //        }
        //    }
        //    return View("index");
        // }
        #endregion

        #region Delete
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new UserDao().Delete(id);

            return RedirectToAction("Index");
        }
        #endregion

        //[HttpPost]
        //public JsonResult ChangeStatus(long id)
        //{
        //    var result = new UserDao().ChangeStatus(id);
        //    return Json(new
        //    {
        //        status = result

        //    });
        //}

    }
}