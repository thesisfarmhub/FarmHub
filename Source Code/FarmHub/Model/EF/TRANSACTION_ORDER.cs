namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class TRANSACTION_ORDER
    {
        [Key]
        public int Id_TransactionOrder { get; set; }

        public int? Id_SaleOfferDetail { get; set; }

        public int? Id_PurchaseOfferDetail { get; set; }

        public int? Id_ProductDetail { get; set; }

        public DateTime? Transaction_Date { get; set; }

        public int? Transaction_Mass { get; set; }

        [StringLength(10)]
        public string Transaction_Unitmass { get; set; }

        public int? Transaction_Price { get; set; }

        public int? Transaction_TotalMoney { get; set; }

        public byte? Id_StatusTrans { get; set; }

        public bool? Is_Deleted { get; set; }

        public virtual PRODUCT_DETAIL PRODUCT_DETAIL { get; set; }

        public virtual PURCHASE_OFFER_DETAIL PURCHASE_OFFER_DETAIL { get; set; }

        public virtual SALE_OFFER_DETAIL SALE_OFFER_DETAIL { get; set; }

        public virtual Status_Trans Status_Trans { get; set; }
    }
}
