namespace Model.DTO.Trader
{
    public class PurchaseOfferDetailDTO
    {
        public int id { get; set; }
        public string productName { get; set; }
        public int? quantity { get; set; }
        public string name_mass { get; set; }
        public int? totalMoney { get; set; }
        public byte Status { get; set; }

    }
}

                               