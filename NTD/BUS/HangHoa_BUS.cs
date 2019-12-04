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
    public class HangHoa_BUS
    {
        DAO_HangHoa hanghoa = new DAO_HangHoa();

        public DataTable GetAllData()
        {
            return hanghoa.GetAllData();
        }

        public DataTable GetAllDataNCC()
        {
            return hanghoa.GetAllDataNCC();
        }

        public DataTable GetAllDataLoaiSP()
        {
            return hanghoa.GetAllDataLoaiSP();
        }
        public int ThemHangHoa(HangHoa hh)
        {
            return hanghoa.ThemHangHoa(hh);
        }

        public DataTable GetDataSPTheoNCC(string nhaCungCap)
        {
            return hanghoa.GetDataSPTheoNCC(nhaCungCap);
        }

        public DataTable GetSPTheoMaHang(string mahang)
        {
            return hanghoa.GetSPTheoMaHang(mahang);
        }

        public DataTable GetDataSP()
        {
            return hanghoa.GetDataSP();
        }
    }

}
