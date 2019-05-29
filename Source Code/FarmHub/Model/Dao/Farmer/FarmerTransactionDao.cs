using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao.Farmer
{
    public class FarmerTransactionDao
    {
        private readonly FarmHubDbContext db;

        public FarmerTransactionDao()
        {
            db = new FarmHubDbContext();

        }
        public IEnumerable<TRANSACTION_ORDER> GetListTransaction()
        {
            IQueryable<TRANSACTION_ORDER> model = db.TRANSACTION_ORDER;

            var modelList = model.Where(x => x.Is_Deleted == false /*&& x.Id_StatusTrans == 1 && x.Id_StatusTrans==4 && x.Id_StatusTrans == 9*/);
            return modelList.OrderByDescending(x => x.Transaction_Date);
        }

        public Boolean ConfirmReady(TRANSACTION_ORDER entity)
        {
            try
            {


                var TransOrder = db.TRANSACTION_ORDER.Find(entity.Id_TransactionOrder);
                TransOrder.Transaction_Date = DateTime.Today;
                TransOrder.Id_StatusTrans = 5;//"Sẵn Sàng Giao Hàng"

                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public void Cancel(TRANSACTION_ORDER entity)
        {
                var TransOrder = db.TRANSACTION_ORDER.Find(entity.Id_TransactionOrder);
                TransOrder.Transaction_Date = DateTime.Today;
                TransOrder.Id_StatusTrans = 8;//"Đã Hủy"

                db.SaveChanges();
                
           
        }
    }
}
