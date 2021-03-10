namespace QuanLyMuaBanXe
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraEditors.TileItemElement tileItemElement1 = new DevExpress.XtraEditors.TileItemElement();
            DevExpress.XtraEditors.TileItemElement tileItemElement2 = new DevExpress.XtraEditors.TileItemElement();
            DevExpress.XtraEditors.TileItemElement tileItemElement3 = new DevExpress.XtraEditors.TileItemElement();
            DevExpress.XtraEditors.TileItemElement tileItemElement4 = new DevExpress.XtraEditors.TileItemElement();
            this.tileMain = new DevExpress.XtraEditors.TileControl();
            this.tileGroup2 = new DevExpress.XtraEditors.TileGroup();
            this.tileItem3 = new DevExpress.XtraEditors.TileItem();
            this.tileItem4 = new DevExpress.XtraEditors.TileItem();
            this.tileItem2 = new DevExpress.XtraEditors.TileItem();
            this.tileItem1 = new DevExpress.XtraEditors.TileItem();
            this.SuspendLayout();
            // 
            // tileMain
            // 
            this.tileMain.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.tileMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tileMain.Groups.Add(this.tileGroup2);
            this.tileMain.Location = new System.Drawing.Point(0, 0);
            this.tileMain.MaxId = 7;
            this.tileMain.Name = "tileMain";
            this.tileMain.Size = new System.Drawing.Size(544, 313);
            this.tileMain.TabIndex = 0;
            this.tileMain.Text = "tileControl1";
            // 
            // tileGroup2
            // 
            this.tileGroup2.Items.Add(this.tileItem3);
            this.tileGroup2.Items.Add(this.tileItem4);
            this.tileGroup2.Items.Add(this.tileItem2);
            this.tileGroup2.Items.Add(this.tileItem1);
            this.tileGroup2.Name = "tileGroup2";
            // 
            // tileItem3
            // 
            tileItemElement1.Text = "QUẢN LÝ";
            this.tileItem3.Elements.Add(tileItemElement1);
            this.tileItem3.Id = 6;
            this.tileItem3.ItemSize = DevExpress.XtraEditors.TileItemSize.Wide;
            this.tileItem3.Name = "tileItem3";
            this.tileItem3.ItemClick += new DevExpress.XtraEditors.TileItemClickEventHandler(this.tileItem3_ItemClick);
            // 
            // tileItem4
            // 
            tileItemElement2.Text = "BỘ PHẬN TIẾP NHẬN";
            this.tileItem4.Elements.Add(tileItemElement2);
            this.tileItem4.Id = 3;
            this.tileItem4.ItemSize = DevExpress.XtraEditors.TileItemSize.Wide;
            this.tileItem4.Name = "tileItem4";
            this.tileItem4.ItemClick += new DevExpress.XtraEditors.TileItemClickEventHandler(this.tileItem4_ItemClick);
            // 
            // tileItem2
            // 
            tileItemElement3.Text = "BỘ PHẬN KINH DOANH";
            this.tileItem2.Elements.Add(tileItemElement3);
            this.tileItem2.Id = 5;
            this.tileItem2.ItemSize = DevExpress.XtraEditors.TileItemSize.Wide;
            this.tileItem2.Name = "tileItem2";
            this.tileItem2.ItemClick += new DevExpress.XtraEditors.TileItemClickEventHandler(this.tileItem2_ItemClick);
            // 
            // tileItem1
            // 
            tileItemElement4.Text = "BỘ PHẬN KỸ THUẬT";
            this.tileItem1.Elements.Add(tileItemElement4);
            this.tileItem1.Id = 4;
            this.tileItem1.ItemSize = DevExpress.XtraEditors.TileItemSize.Wide;
            this.tileItem1.Name = "tileItem1";
            this.tileItem1.ItemClick += new DevExpress.XtraEditors.TileItemClickEventHandler(this.tileItem1_ItemClick);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(544, 313);
            this.Controls.Add(this.tileMain);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QUẢN LÝ HỆ THỐNG MUA BÁN ĐIỆN THOẠI";
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TileControl tileMain;
        private DevExpress.XtraEditors.TileGroup tileGroup2;
        private DevExpress.XtraEditors.TileItem tileItem3;
        private DevExpress.XtraEditors.TileItem tileItem4;
        private DevExpress.XtraEditors.TileItem tileItem1;
        private DevExpress.XtraEditors.TileItem tileItem2;
    }
}