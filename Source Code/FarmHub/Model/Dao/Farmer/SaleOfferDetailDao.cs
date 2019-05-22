using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Farmer
{
    public class SaleOfferDetailDao
    {
        FarmHubDbContext db = null;
        public SaleOfferDetailDao()
        {
            db = new FarmHubDbContext();

        }
        public IEnumerable<PURCHASE_OFFER> SaleOfferListByPurchaseOfferID(int saleOfferId)
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

            var purchaseOffers = from so in db.SALE_OFFER

                             join sod in db.SALE_OFFER_DETAIL on so.Id_SaleOffer equals sod.Id_SaleOffer
                             join tro in db.TRANSACTION_ORDER on sod.Id_SaleOfferDetail equals tro.Id_SaleOfferDetail
                             join pod in db.PURCHASE_OFFER_DETAIL on tro.Id_PurchaseOfferDetail equals pod.Id_PurchaseOfferDetail
                             join po in db.PURCHASE_OFFER on pod.Id_PurchasesOffer equals po.Id_PurchasesOffer

                             where (so.Id_SaleOffer == saleOfferId) && (tro.Id_StatusTrans == 1) // Id_StatusTrans: 1="Đã Đặt Hàng" , 3= "Đã Hủy" 


                             select po;

            return purchaseOffers.ToList<PURCHASE_OFFER>();
        }

        // Detail
        public SALE_OFFER Details(int farmerOfferId)
        {
            return db.SALE_OFFER.Find(farmerOfferId);
        }
    }
}
