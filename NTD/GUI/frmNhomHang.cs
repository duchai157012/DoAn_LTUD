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

namespace NTD.GUI
{
    public partial class frmNhomHang : DevExpress.XtraEditors.XtraForm
    {
        public frmNhomHang()
        {
            InitializeComponent();
        }

        private void layoutControl1_Click(object sender, EventArgs e)
        {

        }
        NhomHang_BUS BusNH = new NhomHang_BUS();
        private void LoadData()
        {
            var dataTable = BusNH.GetAllData();
            gcNhomHang.DataSource = dataTable;
        }
        private void frmNhomHang_Load(object sender, EventArgs e)
        {
            int tag = int.Parse(this.Tag.ToString());
            var roleform = GlobalVar.dictRoleForm[tag];
            usChucNang1.EnnableFunction(roleform);
            LoadData();
            usChucNang1.Controls["btnthem"].Click += ThemNhomHang;
            usChucNang1.Controls["btnxoa"].Click += XoaNhomHang;
            usChucNang1.Controls["btnsua"].Click += SuaNhomHang;

        }

        private void SuaNhomHang(object sender, EventArgs e)
        {

            NhomHang nh = new NhomHang()
            {
                Ma= grv_rootnhomhang.GetRowCellValue(grv_rootnhomhang.FocusedRowHandle, "Mã").ToString(),
                Ten= grv_rootnhomhang.GetRowCellValue(grv_rootnhomhang.FocusedRowHandle, "Tên").ToString()
            };

            frmThemNhomHang tnh = new frmThemNhomHang(nh);          
            tnh.ShowDialog();
            LoadData();
        }

        private void XoaNhomHang(object sender, EventArgs e)
        {
            string ma = grv_rootnhomhang.GetRowCellValue(grv_rootnhomhang.FocusedRowHandle, "Mã").ToString();

            if(grv_rootnhomhang.GetRowCellValue(grv_rootnhomhang.FocusedRowHandle, "Mã").ToString() != null)
            {
                var rs = BusNH.DeleteById(ma);

                if (rs > 0)
                {
                    LoadData();
                    MessageBox.Show("Delete Successfully!!!!!!!!");
                }
            } 

          
        }

        private void ThemNhomHang(object sender, EventArgs e)
        {
            frmThemNhomHang tnh = new frmThemNhomHang();            
            tnh.ShowDialog();
            LoadData();
        }
    }
}