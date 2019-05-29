using Model.DTO.Farmer;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Farmer
{

    public class FarmerOrderDao
    {
        FarmHubDbContext db = null;

        public FarmerOrderDao()
        {
            db = new FarmHubDbContext();
        }

        public PURCHASE_OFFER purchaseDetail(int id)
        {
            return db.PURCHASE_OFFER.Find(id);
        }

        public void Insert(FarmerOrderDTO model, int idpurchaseOfferId, int farmId, string counterOffered)
        {
            var purchaseModel = db.PURCHASE_OFFER.Find(idpurchaseOfferId);
            //var farmer = db.FARMERs.Where(x => x.Id_User == userId);


            //Assign value to Purchase Offer
            model.saleOffer.PRODUCT_DETAIL.Id_Product = purchaseModel.PRODUCT.Id_Product;
            model.saleOffer.PRODUCT_DETAIL.SEED.Id_Seed = purchaseModel.SEED.Id_Seed;
            model.saleOffer.Id_MassUnit = purchaseModel.Id_MassUnit;
            model.saleOffer.Price_Offer = purchaseModel.Price_Purchase;
            model.saleOffer.Can_Bargain = purchaseModel.Can_Bargain;

            model.saleOffer.Date_SaleOffer = DateTime.Now;
            model.saleOffer.Remain_SaleQuantity = 0;
            model.saleOffer.Is_Deleted = false;
            model.saleOffer.Id_Farm = farmId;

            db.SALE_OFFER.Add(model.saleOffer);
            db.SaveChanges();

            int poId = purchaseModel.Id_PurchasesOffer;
            int soId = model.saleOffer.Id_SaleOffer;
            
            int? Quantity = model.saleOffer.Quantity_SaleOffer;
            int? TotalMoney = Quantity * purchaseModel.MASS_UNIT.Weight_To_Kg * purchaseModel.Price_Purchase;




            db.Database.ExecuteSqlCommand("EXEC CreatePurchaseDetail @Id_PurchasesOffer, @Quantity_PurchaseOfferDetail",
                                                           new SqlParameter("@Id_PurchasesOffer", poId),
                                                           new SqlParameter("@Quantity_PurchaseOfferDetail", Quantity));

            db.Database.ExecuteSqlCommand("EXEC CreateSaleDetail @Id_SaleOffer, @Quantity_SaleOfferDetail",
                                                          new SqlParameter("@Id_SaleOffer", soId),
                                                          new SqlParameter("@Quantity_SaleOfferDetail", Quantity));


            var soDetailId = db.SALE_OFFER_DETAIL.Max(x => x.Id_SaleOfferDetail);
            var poDetailId = db.PURCHASE_OFFER_DETAIL.Max(x => x.Id_PurchaseOfferDetail);



            if (counterOffered == "true")
            {

                db.Database.ExecuteSqlCommand("EXEC CreateTransactionOrder @Id_SaleOfferDetail,@Id_PurchaseOfferDetail,@Id_ProductDetail,@Transaction_Mass,@Transaction_Unitmass,@Transaction_Price,@Transaction_TotalMoney,@Paying_Time,@Delivering_Time,@Id_StatusTrans",
                                                           new SqlParameter("@Id_SaleOfferDetail", soDetailId),
                                                           new SqlParameter("@Id_PurchaseOfferDetail", poDetailId),
                                                           new SqlParameter("@Id_ProductDetail", model.saleOffer.Id_ProductDetail),
                                                           new SqlParameter("@Transaction_Mass", Quantity),
                                                           new SqlParameter("@Transaction_Unitmass", purchaseModel.MASS_UNIT.Name_MassUnit),
                                                           new SqlParameter("@Transaction_Price", purchaseModel.Price_Purchase),
                                                           new SqlParameter("@Transaction_TotalMoney", TotalMoney),
                                                           new SqlParameter("@Paying_Time", model.purchaseOfferDetail.Paying_Time),
                                                           new SqlParameter("@Delivering_Time", model.purchaseOfferDetail.Delivering_Time),
                                                           new SqlParameter("@Id_StatusTrans", 10));//"Bên Mua Đặt Lại"

            }
            else
            {
                db.Database.ExecuteSqlCommand("EXEC CreateTransactionOrder @Id_SaleOfferDetail,@Id_PurchaseOfferDetail,@Id_ProductDetail,@Transaction_Mass,@Transaction_Unitmass,@Transaction_Price,@Transaction_TotalMoney,@Paying_Time,@Delivering_Time,@Id_StatusTrans",
                                                           new SqlParameter("@Id_SaleOfferDetail", soDetailId),
                                                           new SqlParameter("@Id_PurchaseOfferDetail", poDetailId),
                                                           new SqlParameter("@Id_ProductDetail", model.saleOffer.Id_ProductDetail),
                                                           new SqlParameter("@Transaction_Mass", Quantity),
                                                           new SqlParameter("@Transaction_Unitmass", purchaseModel.MASS_UNIT.Name_MassUnit),
                                                           new SqlParameter("@Transaction_Price", purchaseModel.Price_Purchase),
                                                           new SqlParameter("@Transaction_TotalMoney", TotalMoney),
                                                           new SqlParameter("@Paying_Time", model.purchaseOfferDetail.Paying_Time),
                                                           new SqlParameter("@Delivering_Time", model.purchaseOfferDetail.Delivering_Time),
                                                           new SqlParameter("@Id_StatusTrans", 9));//"Mới Thiết Lập"
            }


            db.SaveChanges();
        }
    }
}
