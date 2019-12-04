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

namespace NTD.GUI
{
    public partial class frmThemKhuVuc : DevExpress.XtraEditors.XtraForm
    {
        public frmThemKhuVuc()
        {
            InitializeComponent();
        }
        KhuVuc_BUS Bus_kv = new KhuVuc_BUS();
        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtMa.Text.Length == 0 || txtTen.Text.Length == 0)
            {
                MessageBox.Show("Mã hoặc tên không được bỏ trống ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                KhuVuc kv = new KhuVuc()
                {
                    MaKV = txtMa.Text,
                    TenKV = txtTen.Text

                };
                if (Bus_kv.ThemKV(kv) > 0)
                {
                    MessageBox.Show("Thêm khu vực thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }
    }
}