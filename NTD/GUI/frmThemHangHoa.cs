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
    public partial class frmThemHangHoa : DevExpress.XtraEditors.XtraForm
    {
        public frmThemHangHoa()
        {
            InitializeComponent();
        }
        
        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        HangHoa_BUS bus_hh = new HangHoa_BUS();
        private void btnLuu_Click(object sender, EventArgs e)
        {
            HangHoa akh = new HangHoa()
            {
                Ma = txtMa.Text,
                Ten = txtTen.Text,
                MoTa = txtMoTa.Text,
                HinhAnh = txtHinhAnh.Text,
                Soluong = int.Parse(txtSoLuong.Text),
                Gia = float.Parse(txtGia.Text),
                Code = txtCode.Text,
                NhaCungCap = cbNhaCC.EditValue.ToString(),
                MaLoai = cbLoai.EditValue.ToString()
            };
            if (bus_hh.ThemHangHoa(akh) > 0)
            {
                MessageBox.Show("Thêm hàng hóa thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        db db = new db();
        private void frmThemHangHoa_Load(object sender, EventArgs e)
        {
            var dataTable = bus_hh.GetAllDataNCC();

            cbNhaCC.Properties.DataSource = dataTable;
            cbNhaCC.Properties.DisplayMember = "Ten";
            cbNhaCC.Properties.ValueMember = "MaNCC";

            var dataTable1 = bus_hh.GetAllDataLoaiSP();

            cbLoai.Properties.DataSource = dataTable1;
            cbLoai.Properties.DisplayMember = "TenLoaiHang";
            cbLoai.Properties.ValueMember = "MaLoaiHang";

            int stt = db.GetSoLuong("SanPham") + 1;
            string maMacDinh = "SP0" + stt;
            txtMa.Text = maMacDinh;
        }
    }
}