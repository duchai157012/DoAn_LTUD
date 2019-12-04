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
using NTD.DAO;
using NTD.DTO;
using NTD.BUS;

namespace NTD.GUI
{
    public partial class frmThemKhoHang : DevExpress.XtraEditors.XtraForm
    {
        public frmThemKhoHang()
        {
            InitializeComponent();
        }

        db db = new db();
        KhoHang_BUS kh = new KhoHang_BUS();

        private void frmThemKhoHang_Load(object sender, EventArgs e)
        {
            ConQuanLy.Checked = true;

            int stt = db.GetSoLuong("KhoHang") + 1;
            string maMacDinh = "KHO" + stt;
            txtMa.Text = maMacDinh;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            KhoHang khoHang = new KhoHang()
            {
                Ma = txtMa.Text,
                Ten = txtTen.Text,
                LienHe = txtLienHe.Text,
                DienThoai = txtDienThoai.Text,
                GhiChu = txtGhiChu.Text,
                ConQuanLy = ConQuanLy.Checked
            };
            if (kh.ThemKhoHang(khoHang) > 0)
            {
                MessageBox.Show("Thêm kho hàng thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}