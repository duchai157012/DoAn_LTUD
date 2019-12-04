using NTD.DAO;
using NTD.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NTD.BUS
{
    
    public class KhoHang_BUS
    {
        DAO_KhoHang khohang = new DAO_KhoHang();

        public DataTable GetAllData()
        {
            return khohang.GetAllData();
        }

        public int ThemKhoHang(KhoHang kh)
        {
            return khohang.ThemKhoHang(kh);
        }
    }

   
}
