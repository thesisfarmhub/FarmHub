using Model.EF;

using PagedList;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DTO.Trader
{
    public class TraderOfferDTO
    {
        public IEnumerable<PurchaseOfferDetailDTO> purchaseOffersDetails { get; set; }
        public IEnumerable<SALE_OFFER> saleOffers { get; set; }
        public IEnumerable<PurchaseOfferDTO> purchaseOffers { get; set; }
        
    }
}
