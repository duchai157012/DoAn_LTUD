using NTD.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NTD.DAO
{
    public class DAO_KhachHang
    {
        public db db = new db();
        public DataTable GetAllData()
        {
            string sql = "select kh.MaKH as [Mã KH],kh.Name as [Tên khách hàng], kh.[Address] as [Địa chỉ],kh.Number as [Số điện thoại],kv.TenKhuVuc as [Khu vực]  from KhachHang kh,KhuVuc kv where kh.MaKhuVuc = kv.MaKhuVuc";
            var rs = db.GetData(sql);

            return rs;
        }
        public DataTable GetAllDataKV()
        {
            string sql = "Select * from KhuVuc";
            var rs = db.GetData(sql);

            return rs;
        }
        public int ThemKhachHang(KhachHang kh)
        {
            string sql = string.Format("insert into [KhachHang] Values('{0}', '{1}', '{2}', '{3}','{4}')"
                , kh.MaKH,kh.Ten,kh.DiaChi,kh.SDT,kh.MaKV);

            var rs = db.ExecuteSQL(sql);

            return rs;
        }
    }
}
