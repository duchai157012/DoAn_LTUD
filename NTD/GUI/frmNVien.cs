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
    public partial class frmNVien : DevExpress.XtraEditors.XtraForm
    {
        public frmNVien()
        {
            InitializeComponent();
           
        }

        private void CapNhatNhanVien(object sender, EventArgs e)
        {
            //throw new NotImplementedException();
        }

        NhanVien_BUS bus_NV = new NhanVien_BUS();
        private void frmNVien_Load(object sender, EventArgs e)
        {
            int tag = int.Parse(this.Tag.ToString());
            var roleform = GlobalVar.dictRoleForm[tag];
            usChucNang1.EnnableFunction(roleform);
            usChucNang1.Controls["btnthem"].Click += ThemNV;
            usChucNang1.Controls["btndong"].Click += DongNV;
            usChucNang1.Controls["btnsua"].Click += SuaNV;

            var dataTable = bus_NV.GetAllData();

            gcNhanVien.DataSource = dataTable;

        }

        private void SuaNV(object sender, EventArgs e)
        {
            //frmThemNhanVien nv = new frmThemNhanVien(NhanVien nv);
            //nv.ShowDialog();
        }

        private void DongNV(object sender, EventArgs e)
        {
            this.Close();
        }

        private void ThemNV(object sender, EventArgs e)
        {
            frmThemNhanVien nv = new frmThemNhanVien();
            nv.ShowDialog();
        }
    }
}