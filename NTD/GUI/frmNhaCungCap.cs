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
    public partial class frmNhaCungCap : DevExpress.XtraEditors.XtraForm
    {
        public frmNhaCungCap()
        {
            InitializeComponent();
        }
        NhaCC_BUS Bus_ncc = new NhaCC_BUS();
        private void frmNhaCungCap_Load(object sender, EventArgs e)
        {
            int tag = int.Parse(this.Tag.ToString());
            var roleform = GlobalVar.dictRoleForm[tag];
            usChucNang1.EnnableFunction(roleform);
            usChucNang1.Controls["btnthem"].Click += ThemNCC;

            var dataTable = Bus_ncc.GetAllData();

            gcNhaCC.DataSource = dataTable;
        }

        private void ThemNCC(object sender, EventArgs e)
        {
            frmThemNCC ncc = new frmThemNCC();
            ncc.ShowDialog();
        }
    }
}