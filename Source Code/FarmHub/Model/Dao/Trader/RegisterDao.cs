﻿using Model.DTO;
using Model.DTO.Trader;
using Model.EF;

using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Trader
{
    public class RegisterDao
    {

        FarmHubDbContext db = null;
        public RegisterDao()
        {
            db = new FarmHubDbContext();
        }
        public int Insert(TraderRegister entity)
        {
            entity.UserAu.Status_User = 1;

            db.USER_AUTHENTICATION.Add(entity.UserAu);
            db.TRADERs.Add(entity.Trader);
            
            db.SaveChanges();

            return entity.UserAu.Id_User;
        }
    }

}

