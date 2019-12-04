using NTD.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NTD.DAO
{
    public class DAO_HangHoa
    {
        public db db = new db();
        public DataTable GetAllData()
        {
            string sql = "select sp.MaSP as [Mã Hàng],sp.TenSP as [Tên Hàng],sp.MoTa as [Mô Tả],sp.HinhAnh as [Hình Ảnh],sp.SoLuong as [Số Lượng],sp.Gia as [Giá],sp.NhaCungCap as [Nhà Cung Cấp] from SanPham sp";
            var rs = db.GetData(sql);

            return rs;
        }
        public DataTable GetAllDataNCC()
        {
            string sql = "Select * from NhaCungCap";
            var rs = db.GetData(sql);

            return rs;
        }

        public DataTable GetAllDataLoaiSP()
        {
            string sql = "Select * from LoaiSanPham";
            var rs = db.GetData(sql);

            return rs;
        }

        public int ThemHangHoa(HangHoa hh)
        {
            string sql = string.Format("insert into [SanPham] Values('{0}', '{1}', '{2}', '{3}',{4},{5},'{6}','{7}','{8}')"
                , hh.Ma,hh.Ten,hh.MoTa,hh.HinhAnh,hh.Soluong,hh.Gia,hh.Code,hh.NhaCungCap,hh.MaLoai);

            var rs = db.ExecuteSQL(sql);

            return rs;
        }

        public DataTable GetDataSPTheoNCC(string nhaCungCap)
        {
            string sql = "select p.MaSP, p.TenSP, p.SoLuong, p.MaKho, p.GiaMua, p.GiaBan from SanPham p where p.NhaCungCap = '" + nhaCungCap + "' ";
            var rs = db.GetData(sql);

            return rs;
        }

        public DataTable GetSPTheoMaHang(string mahang)
        {
            string sql = "select * from SanPham p where p.MaSP= '" + mahang + "' ";
            var rs = db.GetData(sql);

            return rs;
        }

        public DataTable GetDataSP()
        {
            string sql = "select p.MaSP, p.TenSP, p.SoLuong, p.MaKho, p.GiaMua, p.GiaBan from SanPham p";
            var rs = db.GetData(sql);

            return rs;
        }
    }
}
