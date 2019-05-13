using Model.EF;
using Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.DTO.Farmer;

namespace Model.Dao.Farmer
{
    class RegisterDao
    {
        FarmHubDbContext db = null;
        public RegisterDao()
        {
            db = new FarmHubDbContext();
        }
        public int Insert(FarmerRegister entity)
        {
            db.USER_AUTHENTICATION.Add(entity.UserAu);
            db.FARMERs.Add(entity.Farmer);
            return entity.UserAu.Id_User;
        }
    }
}
