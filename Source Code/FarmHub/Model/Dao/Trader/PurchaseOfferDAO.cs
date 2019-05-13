using Model.DTO.Trader;
using Model.EF;
using PagedList;
using System.Collections.Generic;
using System.Linq;

namespace Model.Dao.Trader
{
    public class PurchaseOfferDAO
    {
        FarmHubDbContext db = null;
        public PurchaseOfferDAO()
        {
            db = new FarmHubDbContext();
        }

        public IEnumerable<PURCHASE_OFFER> TraderPurchaseListAllPaging(int page, int pageSize)
        {
            IQueryable<PURCHASE_OFFER> model = db.PURCHASE_OFFER;
            string userName = System.Security.Principal.WindowsIdentity.GetCurrent().Name;



            model = from PURCHASE_OFFER in db.PURCHASE_OFFER
                    where PURCHASE_OFFER.Id_Trader == 1 && PURCHASE_OFFER.Status_PurchaseOffer == 1
                    select PURCHASE_OFFER;

            return model.OrderByDescending(x => x.Date_PurchaseOffer).ToPagedList(page, pageSize);
        }

        public IEnumerable<PURCHASE_OFFER> PurchaseListAllPaging()
        {
            IQueryable<PURCHASE_OFFER> model = db.PURCHASE_OFFER;

            var modelList = model.Where(x => x.Id_Trader == 1 & x.Is_Deleted == false);
            return modelList.OrderByDescending(x => x.Date_PurchaseOffer);
        }

        //

        #region Meow

        // List All
        public List<PURCHASE_OFFER> ListAll()
        {
            return db.PURCHASE_OFFER.Where(x => x.Is_Deleted == false).OrderByDescending(x => x.Id_PurchasesOffer).ToList();
        }

        // List All Limit
        public List<PURCHASE_OFFER> ListAllLimit(int quantity = 9)
        {
            return db.PURCHASE_OFFER.Where(x => x.Is_Deleted == false).OrderByDescending(x => x.Id_PurchasesOffer).Take(quantity).ToList();
        }

        // List Purchase Offer By Trader ID
        public List<PURCHASE_OFFER> ListPOByTraderID(int traderID)
        {
            return db.PURCHASE_OFFER.Where(x => x.Is_Deleted == false && x.Id_Trader == traderID && x.Quantity_PurchaseOffer > 0).OrderByDescending(x => x.Id_PurchasesOffer).ToList();
        }

        // Suitable Sale Offer
        // Trader Home Page: List Purchase Offer => Suitable Sale Offer
        public List<List<SALE_OFFER>> SuitalbeSaleOffers(List<PURCHASE_OFFER> listPurchaseOffer)
        {
            var listSaleOffer = new List<List<SALE_OFFER>>();

            // Duyệt tất cả các Id_Product và chỉ lấy những Id_Product khác nhau sau đó add vào listProductID
            List<int> listProductID = listPurchaseOffer.Select(x => x.PRODUCT.Id_Product).AsParallel().Distinct().ToList();

            foreach (var item in listProductID)
            {
                List<SALE_OFFER> subListSO = db.SALE_OFFER.Where(x => x.PRODUCT_DETAIL.PRODUCT.Id_Product == item && x.Remain_SaleQuantity > 0 && x.Is_Deleted == false).ToList();
                listSaleOffer.Add(subListSO);
            }

            return listSaleOffer;
        }

        // Top Product Base On Trader Purchase Offer
        public List<TopProductDetailsDTO> ListTopProductDetails()
        {
            //SQL chọn ra top 7 Product có số lượng yêu cầu mua nhiều nhất:
            //select Id_ProductDetail, SUM(Quantity_PurchaseOffer) as TotalQuant, AVG(Price_Purchase) as AvgPrice
            //from PURCHASE_OFFER
            //group by Id_ProductDetail
            //order by TotalQuant Desc

            var listTopProducts = db.PURCHASE_OFFER.Where(po => po.Is_Deleted == false).GroupBy(po => po.Id_Product).Select(x => new TopProductDetailsDTO
            {
                Id_Product = x.FirstOrDefault().Id_Product,
                Name_Product = x.FirstOrDefault().PRODUCT.Name_Product,
                Name_Seed = x.FirstOrDefault().SEED.Name_Seed,
                Quantity_PurchaseOffer = x.Sum(q => q.Quantity_PurchaseOffer),
                Price_Purchase = (int)x.Average(p => p.Price_Purchase),
                Image_Product = x.FirstOrDefault().PRODUCT.Image_Product
            }).OrderByDescending(x => x.Quantity_PurchaseOffer).Take(7).ToList();

            return listTopProducts;
        }

        #endregion
    }
}
