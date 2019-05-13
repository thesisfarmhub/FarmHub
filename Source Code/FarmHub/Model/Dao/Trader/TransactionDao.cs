using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Trader
{
    public class TransactionDao
    {
        FarmHubDbContext db = null;
        public TransactionDao()
        {
            db = new FarmHubDbContext();

        }
        public IEnumerable<TRANSACTION_ORDER> TransactionListAllPaging()
        {
            IQueryable<TRANSACTION_ORDER> model = db.TRANSACTION_ORDER;

            var modelList = model.Where(x => x.Is_Deleted == false);
            return modelList.OrderByDescending(x => x.Transaction_Date);
        }

        public Boolean ConfirmDelivered(TRANSACTION_ORDER entity)
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

        public Boolean CancelDelivered(TRANSACTION_ORDER entity)
        {
            try
            {


                var TransOrder = db.TRANSACTION_ORDER.Find(entity.Id_TransactionOrder);
                TransOrder.Transaction_Date = DateTime.Today;
                TransOrder.Status_Trans.Id_StatusTrans = 8 ;//"Đã Hủy"

                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
