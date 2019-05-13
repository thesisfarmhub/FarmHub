using Model.EF;
using System.Collections.Generic;
using System.Linq;

namespace Model.Dao.Trader
{
    public class SaleOfferDao
    {
        FarmHubDbContext db = null;
        public SaleOfferDao()
        {
            db = new FarmHubDbContext();
        }

        //public IEnumerable<SALE_OFFER> FarmerSaleListAllPaging(int page, int pageSize)
        //{
        //    IQueryable<SALE_OFFER> model = db.SALE_OFFER;
           
        //    model = from SALE_OFFER in db.SALE_OFFER
        //            where SALE_OFFER.FARM.Id_Farmer == 1 && SALE_OFFER.Status_SaleOffer == 1
        //            select SALE_OFFER;

        //    return model.OrderByDescending(x => x.Date_SaleOffer).ToPagedList(page, pageSize);
        //}

        public IEnumerable<SALE_OFFER> SaleListAllPaging()
        {
            IQueryable<SALE_OFFER> model = db.SALE_OFFER;
            //if (!string.IsNullOrEmpty(searchString))
            //{
            //    model = model.Where(x => x.Name_User.Contains(searchString) || x.Name_User.Contains(searchString));
            //}

            var modelList = model.Where(x => x.Is_Deleted == false && x.Status_SaleOffer == 10);
            return model.OrderByDescending(x => x.Date_SaleOffer);
        }
    }
}
