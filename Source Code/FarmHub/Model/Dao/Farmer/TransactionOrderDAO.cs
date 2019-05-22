using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Model.Dao.Farmer
{
    public class TransactionOrderDAO
    {
        readonly FarmHubDbContext db = null;

        public TransactionOrderDAO()
        {
            db = new FarmHubDbContext();
        }

        // ListAll
        public List<TRANSACTION_ORDER> ListAll()
        {
            return db.TRANSACTION_ORDER.Where(x => x.Id_TransactionOrder > 0).OrderByDescending(x => x.Id_TransactionOrder).ToList();
        }

        // ListAllActive
        public List<TRANSACTION_ORDER> ListAllActive()
        {
            return db.TRANSACTION_ORDER.Where(x => x.Is_Deleted == false).OrderByDescending(x => x.Id_TransactionOrder).ToList();
        }

        // List Transaction Order By FarmerID
        public List<TRANSACTION_ORDER> ListTransOrderByFarmerID(int farmerID)
        {
            return db.TRANSACTION_ORDER.Where(x => x.Is_Deleted == false && x.PRODUCT_DETAIL.FARM.Id_Farmer == farmerID).OrderByDescending(x => x.Id_TransactionOrder).ToList();
        }

        // Detail
        public TRANSACTION_ORDER Details(int transOrderID)
        {
            return db.TRANSACTION_ORDER.Find(transOrderID);
        }

        #region Chenlong
        public IEnumerable<TRANSACTION_ORDER> GetListTransaction()
        {
            IQueryable<TRANSACTION_ORDER> model = db.TRANSACTION_ORDER;
            //Status: Đã Hoàn Tất 
            var transList = model.Where(x => x.Is_Deleted == false);
            return transList.OrderByDescending(x => x.Transaction_Date);
        }

        public bool ConfirmDelivered(TRANSACTION_ORDER entity)
        {
            try
            {


                var TransOrder = db.TRANSACTION_ORDER.Find(entity.Id_TransactionOrder);
                TransOrder.Transaction_Date = DateTime.Today;
                TransOrder.Status_Trans.Id_StatusTrans = 7;//"Hoàn Tất"

                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool CancelDelivered(TRANSACTION_ORDER entity)
        {
            try
            {


                var TransOrder = db.TRANSACTION_ORDER.Find(entity.Id_TransactionOrder);
                TransOrder.Transaction_Date = DateTime.Today;
                TransOrder.Status_Trans.Id_StatusTrans = 8;//"Đã Hủy"

                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
    #endregion

}
