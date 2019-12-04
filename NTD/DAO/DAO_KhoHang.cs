using NTD.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NTD.DAO
{
    public class DAO_KhoHang
    {

        public db db = new db();

        public DataTable GetAllData()
        {
            string sql = "select k.MaKho as [Mã Kho],k.TenKho as [Tên Kho],k.LienHe as [Liên Hệ],k.DienThoai as [Điện Thoại],k.GhiChu as [Ghi Chú],k.ConQuanLy as [Còn Quản Lý] from KhoHang k";
            var rs = db.GetData(sql);

            return rs;
        }

        public int ThemKhoHang(KhoHang kh)
        {
            string sql = string.Format("insert into [KhoHang] Values('{0}', '{1}', '{2}', '{3}','{4}', '{5}')"
                , kh.Ma, kh.Ten, kh.LienHe, kh.DienThoai, kh.GhiChu, kh.ConQuanLy);

            var rs = db.ExecuteSQL(sql);

            return rs;
        }
    }
    
}
