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

        public IEnumerable<SALE_OFFER> SaleOfferListByPurchaseOfferID(int purchaseOfferId)
        {
            #region Lambda
            //var query = database.Posts.Join(database.Post_Metas,
            //                    post => post.ID,
            //                    meta => meta.Post_ID,
            //                    (post, meta) => new { Post = post, Meta = meta });
            #endregion

            #region SQL
            //var results = from c in db.Companies
            //              join cn in db.Countries on c.CountryID equals cn.ID
            //              join ct in db.Cities on c.CityID equals ct.ID
            //              join sect in db.Sectors on c.SectorID equals sect.ID
            //              where (c.CountryID == cn.ID) && (c.CityID == ct.ID) && (c.SectorID == company.SectorID) && (company.SectorID == sect.ID)
            //              select new { country = cn.Name, city = ct.Name, c.ID, c.Name, c.Address1, c.Address2, c.Address3, c.CountryID, c.CityID, c.Region, c.PostCode, c.Telephone, c.Website, c.SectorID, Status = (ContactStatus)c.StatusID, sector = sect.Name };


            //return results.ToList();
            #endregion

            var saleOffers = from po in db.PURCHASE_OFFER

                             join pod in db.PURCHASE_OFFER_DETAIL on po.Id_PurchasesOffer equals pod.Id_PurchasesOffer
                             join tro in db.TRANSACTION_ORDER on pod.Id_PurchaseOfferDetail equals tro.Id_PurchaseOfferDetail
                             join sod in db.SALE_OFFER_DETAIL on tro.Id_SaleOfferDetail equals sod.Id_SaleOfferDetail
                             join so in db.SALE_OFFER on sod.Id_SaleOffer equals so.Id_SaleOffer

                             where (po.Id_PurchasesOffer == purchaseOfferId) && (tro.Id_StatusTrans == 1) // Id_StatusTrans: 1="Đã Đặt Hàng" , 3= "Đã Hủy" 


                             select so;





            return saleOffers.ToList<SALE_OFFER>();
        }

        // Detail
        public PURCHASE_OFFER Details(int id)
        {
            return db.PURCHASE_OFFER.Find(id);
        }

    }
}
