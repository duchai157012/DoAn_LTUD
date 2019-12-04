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
    public partial class frmKhuVuc : DevExpress.XtraEditors.XtraForm
    {
        public frmKhuVuc()
        {
            InitializeComponent();
        }
        KhuVuc_BUS Bus_kv = new KhuVuc_BUS();
        private void frmKhuVuc_Load(object sender, EventArgs e)
        {
            int tag = int.Parse(this.Tag.ToString());
            var roleform = GlobalVar.dictRoleForm[tag];
            usChucNang1.EnnableFunction(roleform);
            usChucNang1.Controls["btndong"].Click += Dong;
            usChucNang1.Controls["btnthem"].Click += ThemKV;

            var dataTable = Bus_kv.GetAllData();

            gcKhuVuc.DataSource = dataTable;


        }

        private void ThemKV(object sender, EventArgs e)
        {
            frmThemKhuVuc tkv = new frmThemKhuVuc();
            tkv.ShowDialog();
        }

        private void Dong(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}