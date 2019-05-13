﻿using FarmHub.Areas.Admin.Models;
using FarmHub.Common;
using Model.Dao.Authentication;
using Model.Dao.Farmer;
using Model.Dao.Trader;
using Model.EF;
using System;
using System.Web.Mvc;

namespace FarmHub.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult LoginIndex()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var username = model.UserName;
                var password = model.PassWord;

                var dao = new LoginDao();
                var result = dao.Login(username, Encryptor.MD5Hash(password));
                if (result == "Succeed")
                {
                    var user = dao.GetUserByID(username);

                    var userSession = new UserLoginSession();

                    userSession.UserName = user.Name_User;
                    userSession.UserID = user.Id_User;
                    Session["UserId"] = user.Id_User;

                    Session.Add(Constant.USER_SESSION, userSession);

                    //Farmer:1 , Trader:2 , Admin:3
                    if (user.USER_KIND.Id_UserKind == 1)
                    {
                        Session["FarmerID"] = new FarmerDAO().GetFarmerByUserID(user.Id_User).Id_Farmer;
                        return RedirectToAction("Index", "Farmer", new { area = "Farmer" });
                    }
                    else if (user.USER_KIND.Id_UserKind == 2)
                    {
                        Session["TraderID"] = new TraderDAO().GetTraderByUserID(user.Id_User).Id_Trader;
                        return RedirectToAction("Index", "Trader");
                    }
                    else if (user.USER_KIND.Id_UserKind == 3)
                    {
                        return RedirectToAction("index", "User", new { area = "Admin" });
                    }
                    else
                    {
                        return RedirectToAction("Index", "Home");
                    }
                }
                else if (result == "InCorrect")
                {
                    ModelState.AddModelError("", ErrorList.LOGIN_WRONGPASS);
                }
                else if (result == "Locked")
                {
                    ModelState.AddModelError("", ErrorList.LOGIN_LOCKED);
                }
            }

            return View("Index");
        }
    }
}