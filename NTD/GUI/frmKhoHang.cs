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
    public partial class frmKhoHang : DevExpress.XtraEditors.XtraForm
    {
        public frmKhoHang()
        {
            InitializeComponent();
        }

        KhoHang_BUS khohang = new KhoHang_BUS(); 

        private void frmKhoHang_Load(object sender, EventArgs e)
        {
            int tag = int.Parse(this.Tag.ToString());
            var roleform = GlobalVar.dictRoleForm[tag];
            usChucNang1.EnnableFunction(roleform);

            gridControl1.DataSource = khohang.GetAllData();

            usChucNang1.Controls["btnthem"].Click += ThemKH;
        }

        private void ThemKH(object sender, EventArgs e)
        {
            frmThemKhoHang kh = new frmThemKhoHang();
            kh.ShowDialog();
        }
    }
}