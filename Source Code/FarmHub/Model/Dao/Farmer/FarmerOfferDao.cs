using Model.DTO.Farmer;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Farmer
{
    public class FarmerOfferDao
    {
        FarmHubDbContext db = null;
        public FarmerOfferDao()
        {
            db = new FarmHubDbContext();

        }

        public int Insert(SaleOfferDTO model)
        {
            model.createdDate = DateTime.Now.ToString();



            //db.SALE_OFFER.Add(saleOffer);


            db.SaveChanges();

            return 1;
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

        public IEnumerable<PRODUCT> ProductList()
        {


            IQueryable<PRODUCT> model = db.PRODUCTs;
            var productList = model.Where(x => x.Is_Deleted == false);
            return productList;
        }

        public IEnumerable<MASS_UNIT> UnitList()
        {
            IQueryable<MASS_UNIT> model = db.MASS_UNIT;
            var unitList = model.Where(x => x.Is_Deleted == false);
            return unitList;
        }

        public IEnumerable<SEED> SeedList()
        {
            IQueryable<SEED> model = db.SEEDs;
            var seedList = model.Where(x => x.Is_Deleted == false);
            return seedList;
        }

    }
}
