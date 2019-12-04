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

namespace NTD.GUI
{
    public partial class frmKhachHang : DevExpress.XtraEditors.XtraForm
    {
        public frmKhachHang()
        {
            InitializeComponent();
        }
        KhachHang_BUS Bus_kh = new KhachHang_BUS();
        private void frmKhachHang_Load(object sender, EventArgs e)
        {
            int tag = int.Parse(this.Tag.ToString());
            var roleform = GlobalVar.dictRoleForm[tag];
            usChucNang1.EnnableFunction(roleform);
            usChucNang1.Controls["btndong"].Click += dong;
            usChucNang1.Controls["btnthem"].Click += ThemKH;

            var dataTable = Bus_kh.GetAllData();

            gcKhachHang.DataSource = dataTable;
        }

        private void ThemKH(object sender, EventArgs e)
        {
            frmThemKhachHang tkh = new frmThemKhachHang();
            tkh.ShowDialog();
        }

        private void dong(object sender, EventArgs e)
        {
            this.Close();
        }

        private void gridControl1_Click(object sender, EventArgs e)
        {

        }
    }
}