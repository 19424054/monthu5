﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Views.Grid;

namespace QuanLyMuaBanXe.myFroms
{
    public partial class frmThongTinSuaChua : DevExpress.XtraEditors.XtraForm
    {
        private int m_id=-1;
        private int m_trangthai = -1;
        public frmThongTinSuaChua(int id)
        {
            InitializeComponent();
            m_id = id;
        }
        public frmThongTinSuaChua(int id, int trangthai)
        {
            InitializeComponent();
            m_id = id;
            m_trangthai = trangthai;
        }

        private void frmThongTinSuaChua_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'dsSystem.BM_ThongTinXeBan' table. You can move, or remove it, as needed.
            loadData();
            // TODO: This line of code loads data into the 'dsSystem.BM_ThongTin_SuaChua' table. You can move, or remove it, as needed.
           // this.bM_ThongTin_SuaChuaTableAdapter.Fill(this.dsSystem.BM_ThongTin_SuaChua);

        }

        private void barLargeButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            saveData();
            this.Close();
        }

        private void barLargeButtonItem4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GridView view = gvMain;
            if(view.FocusedRowHandle>-1)
            {
                if (XtraMessageBox.Show("Bạn có muốn xóa hiện trạng sữa chữa này không", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    if(Convert.ToInt32(view.GetFocusedRowCellValue("Id_sua"))!=-1)
                    {
                        bM_ThongTin_SuaChuaTableAdapter.DeleteQuery(Convert.ToInt32(view.GetFocusedRowCellValue("Id_sua")));
                        loadDetail(m_id);
                    }
                    else
                    {
                        view.DeleteSelectedRows();
                    }
                }
            }
        }

        private void barLargeButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            loadData();
        }
        private void loadData()
        {
            this.bM_ThongTinXeBanTableAdapter.Fill(this.dsSystem.BM_ThongTinXeBan);
            searchLookUpEdit1.EditValue = m_id;
            textEdit1.EditValue = dsSystem.BM_ThongTinXeBan[0]["Loai_xe"];
            if(m_trangthai!=-1)
            {
                barLargeButtonItem2.Enabled = false;
                barLargeButtonItem4.Enabled = false;
                gvMain.OptionsBehavior.ReadOnly = true;
                gvMain.OptionsBehavior.Editable = false;
                searchLookUpEdit1.ReadOnly = true;
            }
        }
        private void saveData()
        {
            if(gvMain.RowCount>0)
            {
                if(XtraMessageBox.Show("Bạn có xác nhận tình trạng sửa chửa hiện tại không?","Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    bMThongTinSuaChuaBindingSource.EndEdit();
                    foreach (DataRow dr in dsSystem.BM_ThongTin_SuaChua)
                    {
                        if (Convert.IsDBNull(dr["Id_xe"]))
                        {
                            dr["Id_xe"] = m_id;
                        }
                    }
                    bM_ThongTin_SuaChuaTableAdapter.Update(dsSystem.BM_ThongTin_SuaChua);

                    dsSystem.BM_ThongTin_SuaChua.AcceptChanges();
                    bM_ThongTinXeBanTableAdapter.UpdateQueryTrangThai("Sửa chữa", m_id);
                }
            }
            else
            {
                bM_ThongTinXeBanTableAdapter.UpdateQueryTrangThai("Đã mua", m_id);
            }
        }
        private void loadDetail(int id)
        {
            bM_ThongTin_SuaChuaTableAdapter.FillBy(dsSystem.BM_ThongTin_SuaChua, id);
        }
        private void searchLookUpEdit1_EditValueChanged(object sender, EventArgs e)
        {     
            textEdit1.EditValue = this.searchLookUpEdit1.Properties.View.GetFocusedRowCellValue("Loai_xe");
            m_id = Convert.ToInt32(searchLookUpEdit1.EditValue);
            loadDetail(m_id);
        }
    }
}