using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NTD.DAO
{
    public class DAO_DonVi
    {
        public db db = new db();
        public DataTable GetAllData()
        {
            string sql = "select * from DonVi ";
            var rs = db.GetData(sql);

            return rs;
        }
    }
}
