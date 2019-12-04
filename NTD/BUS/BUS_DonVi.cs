using NTD.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NTD.BUS
{
    public class BUS_DonVi
    {
        DAO_DonVi dv = new DAO_DonVi();
        public DataTable GetAllData()
        {
            return dv.GetAllData();
        }
    }
}
