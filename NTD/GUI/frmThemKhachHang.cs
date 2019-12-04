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
using NTD.BUS;
using NTD.DTO;
using NTD.DAO;

namespace NTD.GUI
{
    public partial class frmThemKhachHang : DevExpress.XtraEditors.XtraForm
    {
        public frmThemKhachHang()
        {
            InitializeComponent();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void btnLuu_Click(object sender, EventArgs e)
        {
            KhachHang akh = new KhachHang()
            {
                MaKH = txtMa.Text,
                Ten = txtTen.Text,
                DiaChi = txtDiaChi.Text,
                SDT = txtSDT.Text,
                MaKV = cbKhuVuc.EditValue.ToString()
            };
            if (BusKH.ThemKhachHang(akh) > 0)
            {
                MessageBox.Show("Thêm tai khoản thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        KhachHang_BUS BusKH = new KhachHang_BUS();
        db db = new db();

        private void frmThemKhachHang_Load(object sender, EventArgs e)
        {
            var dataTable = BusKH.GetAllDataKV();

            cbKhuVuc.Properties.DataSource = dataTable;
            cbKhuVuc.Properties.DisplayMember = "TenKhuVuc";
            cbKhuVuc.Properties.ValueMember = "MaKhuVuc";

            int stt = db.GetSoLuong("KhachHang") + 1;
            string maMacDinh;
            if (stt < 10)
            {
                maMacDinh = "KH00" + stt;
            }
            else
            {
                maMacDinh = "KH0" + stt;
            }
            txtMa.Text = maMacDinh;
        }

    }
}