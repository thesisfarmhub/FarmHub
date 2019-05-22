using Model.EF;

using PagedList;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DTO.Farmer
{
    public class FarmerOfferDTO
    {
        public PURCHASE_OFFER purchaseOffer { get; set; }

        public IEnumerable<ProductDTO> products { get; set; }
        public IEnumerable<UnitMassDTO> units { get; set; }
        public IEnumerable<PurchaseOfferDetailDTO> purchaseDetail{get;set;}
        
    }
}
