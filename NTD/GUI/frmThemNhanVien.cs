using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using NTD.DTO;
using NTD.BUS;
using NTD.DAO;

namespace NTD.GUI
{
    public partial class frmThemNhanVien : DevExpress.XtraEditors.XtraForm
    {
        public frmThemNhanVien()
        {
            InitializeComponent();
        }
        NhanVien_BUS busNV = new NhanVien_BUS();
        private void btnLuu_Click(object sender, EventArgs e)
        {
            NhanVien nhanVien = new NhanVien()
            {
                MaNV = txtMa.Text,
                HoTen = txtHoTen.Text,
                DiaChi=txtDiaChi.Text,
                DienThoai= txtDienThoai.Text
            };
            if (busNV.ThemNV(nhanVien) > 0)
            {
                MessageBox.Show("Thêm nhan vien thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        public void DeXuatThongTinMaNV()
        {

        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        db db = new db();

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {
            int stt = db.GetSoLuong("NhanVien") + 1;
            string maMacDinh;
            if (stt < 10)
            {
                maMacDinh = "NV00" + stt;
            }
            else
            {
                maMacDinh = "NV0" + stt;
            }
            txtMa.Text = maMacDinh;
        }
    }
}