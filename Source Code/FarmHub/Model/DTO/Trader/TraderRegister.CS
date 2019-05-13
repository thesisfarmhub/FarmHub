using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DTO.Trader
{
    public class TraderRegister
    {
        public USER_AUTHENTICATION UserAu { get; set; }
        public TRADER Trader { get; set; }
    }
}
