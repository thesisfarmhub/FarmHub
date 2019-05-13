using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Trader
{
    public class PurchaseOfferDetailDao
    {
        FarmHubDbContext db = null;
        public PurchaseOfferDetailDao()
        {
            db = new FarmHubDbContext();
            
        }

        public IEnumerable<PURCHASE_OFFER_DETAIL> PurchaseDetailListAllPaging(int page, int pageSize)
        {
            IQueryable<PURCHASE_OFFER_DETAIL> model = db.PURCHASE_OFFER_DETAIL;

            return model.OrderByDescending(x => x.Id_PurchaseOfferDetail).ToPagedList(page, pageSize);
        }

        public IEnumerable<PURCHASE_OFFER_DETAIL> PurchaseDetailListByPurchaseOfferID(int PurchaseOfferID)
        {   
            var model = db.PURCHASE_OFFER_DETAIL.Where(x => x.Id_PurchasesOffer == PurchaseOfferID);
            return model;
        }
    }
}
