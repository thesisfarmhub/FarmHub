using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Trader
{
    public class OfferDao
    {
        FarmHubDbContext db = null;
        public OfferDao()
        {
            db = new FarmHubDbContext();

        }

        public int Insert()
        {
            PURCHASE_OFFER model = new PURCHASE_OFFER();
            

            

            db.PURCHASE_OFFER.Add(model);
           

            db.SaveChanges();

            return model.Id_PurchasesOffer;
        }

        public bool DeleteOffer(int id)
        {
            try
            {
                var Offer = db.PURCHASE_OFFER.Find(id);
                Offer.Is_Deleted = true;

                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public List<PRODUCT> ProductList()
        {
            List<PRODUCT> productList = db.PRODUCTs.ToList();
            return productList;
        }
        public List<MASS_UNIT> UnitList()
        {
            List<MASS_UNIT> unitList = db.MASS_UNIT.ToList();
            return unitList;
        }
    }
}
