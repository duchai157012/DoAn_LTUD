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
    public partial class frmHangHoa : DevExpress.XtraEditors.XtraForm
    {
        public frmHangHoa()
        {
            InitializeComponent();          
        }
        HangHoa_BUS hh = new HangHoa_BUS();
        private void frmHangHoa_Load(object sender, EventArgs e)
        {
            int tag = int.Parse(this.Tag.ToString());
            var roleform = GlobalVar.dictRoleForm[tag];
            usChucNang1.EnnableFunction(roleform);

            usChucNang1.Controls["btnthem"].Click += ThemHH;

            var dataTable = hh.GetAllData();
            gcHangHoa.DataSource = dataTable;
        }

        private void ThemHH(object sender, EventArgs e)
        {
            frmThemHangHoa thh = new frmThemHangHoa();
            thh.ShowDialog();
        }
    }
}