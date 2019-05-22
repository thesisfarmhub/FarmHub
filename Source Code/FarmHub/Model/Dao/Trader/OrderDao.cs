using Model.DTO.Trader;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Trader
{
    public class OrderDao
    {
        FarmHubDbContext db = null;

        public OrderDao()
        {
            db = new FarmHubDbContext();
        }

        public SALE_OFFER saleDetail(int id)
        {
            return db.SALE_OFFER.Find(id);
        }

        public void Insert(TraderOrderDTO model,int idsaleOfferId,int userId)
        {
            var saleModel = db.SALE_OFFER.Find(idsaleOfferId);
            var trader = db.PURCHASE_OFFER.Where(x => x.TRADER.Id_User == userId);

            
            //Assign saleOffers value to Purchase Offer
            model.purchaseOffer.Id_Product = saleModel.PRODUCT_DETAIL.Id_Product;
            model.purchaseOffer.Id_Seed = saleModel.PRODUCT_DETAIL.Id_Seed;
            model.purchaseOffer.Id_MassUnit = saleModel.Id_MassUnit;
            model.purchaseOffer.Price_Purchase = saleModel.Price_Offer;
            model.purchaseOffer.Can_Bargain = saleModel.Can_Bargain;

            model.purchaseOffer.Date_PurchaseOffer = DateTime.Now;
            
            foreach (var item in trader)
            {
                model.purchaseOffer.Id_Trader = item.Id_Trader;
            }

            db.PURCHASE_OFFER.Add(model.purchaseOffer);

            
            db.SaveChanges();
        }
    }
}
