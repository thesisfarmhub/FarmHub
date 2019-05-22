using Model.DTO.Trader;
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

        public bool? canBargain { get; set; }
        public string createdDate { get; set; }
        public string productName { get; set; }
        public string seedName { get; set; }
        public int? quantity { get; set; }
        public string massName { get; set; }
        public int? trueMass { get; set; }
        public int? price { get; set; }
        public byte? payingTime { get; set; }
        public byte? deliveringTime { get; set; }
        public byte? numberOfOrder { get; set; }
        public string image { get; set; }

        public void Insert(PurchaseOfferDTO model)
        {
            PURCHASE_OFFER purchModel = new PURCHASE_OFFER();
            purchModel.Can_Bargain = model.canBargain;
            purchModel.Date_PurchaseOffer = DateTime.Now;
            purchModel.PRODUCT.Id_Product = model.productID;
            purchModel.Quantity_PurchaseOffer = model.quantity;
            purchModel.Id_MassUnit = model.massId;
            purchModel.Price_Purchase = model.price;
            purchModel.Paying_Time = model.payingTime;
            purchModel.Delivering_Time = model.deliveringTime;

            db.PURCHASE_OFFER.Add(purchModel);
            db.SaveChanges();
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
