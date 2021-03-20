namespace Emlak
{
    partial class frmLogin
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
            this.txtKayitKullaniciAdi = new System.Windows.Forms.TextBox();
            this.txtKayitPassword = new System.Windows.Forms.TextBox();
            this.btnKayit = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtGirisPassword = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtGirisKullaniciadi = new System.Windows.Forms.TextBox();
            this.btnGiris = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtKayitIsim = new System.Windows.Forms.TextBox();
            this.txtKayitSoyad = new System.Windows.Forms.TextBox();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtKayitKullaniciAdi
            // 
            this.txtKayitKullaniciAdi.BackColor = System.Drawing.Color.White;
            this.txtKayitKullaniciAdi.ForeColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.txtKayitKullaniciAdi.Location = new System.Drawing.Point(20, 151);
            this.txtKayitKullaniciAdi.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtKayitKullaniciAdi.Name = "txtKayitKullaniciAdi";
            this.txtKayitKullaniciAdi.Size = new System.Drawing.Size(153, 22);
            this.txtKayitKullaniciAdi.TabIndex = 2;
            this.txtKayitKullaniciAdi.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtKayitPassword
            // 
            this.txtKayitPassword.BackColor = System.Drawing.Color.White;
            this.txtKayitPassword.ForeColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.txtKayitPassword.Location = new System.Drawing.Point(205, 151);
            this.txtKayitPassword.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtKayitPassword.Name = "txtKayitPassword";
            this.txtKayitPassword.Size = new System.Drawing.Size(151, 22);
            this.txtKayitPassword.TabIndex = 5;
            this.txtKayitPassword.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btnKayit
            // 
            this.btnKayit.BackColor = System.Drawing.Color.PaleGoldenrod;
            this.btnKayit.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnKayit.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnKayit.Location = new System.Drawing.Point(116, 222);
            this.btnKayit.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnKayit.Name = "btnKayit";
            this.btnKayit.Size = new System.Drawing.Size(132, 39);
            this.btnKayit.TabIndex = 6;
            this.btnKayit.Text = "KAYDOL";
            this.btnKayit.UseVisualStyleBackColor = false;
            this.btnKayit.Click += new System.EventHandler(this.btnKayit_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.LightGoldenrodYellow;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel1.Controls.Add(this.txtGirisPassword);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.txtGirisKullaniciadi);
            this.panel1.Controls.Add(this.btnGiris);
            this.panel1.Location = new System.Drawing.Point(71, 74);
            this.panel1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(347, 287);
            this.panel1.TabIndex = 8;
            // 
            // txtGirisPassword
            // 
            this.txtGirisPassword.BackColor = System.Drawing.Color.White;
            this.txtGirisPassword.Location = new System.Drawing.Point(80, 151);
            this.txtGirisPassword.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtGirisPassword.Name = "txtGirisPassword";
            this.txtGirisPassword.Size = new System.Drawing.Size(175, 22);
            this.txtGirisPassword.TabIndex = 20;
            this.txtGirisPassword.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.ForeColor = System.Drawing.Color.Black;
            this.label3.Location = new System.Drawing.Point(136, 126);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(88, 17);
            this.label3.TabIndex = 19;
            this.label3.Text = "PASSWORD";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.ForeColor = System.Drawing.Color.Black;
            this.label4.Location = new System.Drawing.Point(119, 36);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(103, 17);
            this.label4.TabIndex = 18;
            this.label4.Text = "KULLANICI ADI";
            // 
            // txtGirisKullaniciadi
            // 
            this.txtGirisKullaniciadi.BackColor = System.Drawing.Color.White;
            this.txtGirisKullaniciadi.Location = new System.Drawing.Point(80, 60);
            this.txtGirisKullaniciadi.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtGirisKullaniciadi.Name = "txtGirisKullaniciadi";
            this.txtGirisKullaniciadi.Size = new System.Drawing.Size(175, 22);
            this.txtGirisKullaniciadi.TabIndex = 11;
            this.txtGirisKullaniciadi.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btnGiris
            // 
            this.btnGiris.BackColor = System.Drawing.Color.PaleGoldenrod;
            this.btnGiris.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnGiris.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnGiris.Location = new System.Drawing.Point(97, 222);
            this.btnGiris.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnGiris.Name = "btnGiris";
            this.btnGiris.Size = new System.Drawing.Size(132, 39);
            this.btnGiris.TabIndex = 15;
            this.btnGiris.Text = "GİRİŞ";
            this.btnGiris.UseVisualStyleBackColor = false;
            this.btnGiris.Click += new System.EventHandler(this.btnGiris_Click);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.LightYellow;
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.txtKayitIsim);
            this.panel2.Controls.Add(this.txtKayitSoyad);
            this.panel2.Controls.Add(this.txtKayitKullaniciAdi);
            this.panel2.Controls.Add(this.btnKayit);
            this.panel2.Controls.Add(this.txtKayitPassword);
            this.panel2.Location = new System.Drawing.Point(447, 74);
            this.panel2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(380, 290);
            this.panel2.TabIndex = 9;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.ForeColor = System.Drawing.Color.Black;
            this.label6.Location = new System.Drawing.Point(225, 127);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(88, 17);
            this.label6.TabIndex = 20;
            this.label6.Text = "PASSWORD";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.ForeColor = System.Drawing.Color.Black;
            this.label5.Location = new System.Drawing.Point(37, 126);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(103, 17);
            this.label5.TabIndex = 19;
            this.label5.Text = "KULLANICI ADI";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(236, 36);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(63, 17);
            this.label2.TabIndex = 17;
            this.label2.Text = "SOYİSİM";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(81, 36);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(34, 17);
            this.label1.TabIndex = 16;
            this.label1.Text = "İSİM";
            // 
            // txtKayitIsim
            // 
            this.txtKayitIsim.BackColor = System.Drawing.Color.White;
            this.txtKayitIsim.ForeColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.txtKayitIsim.Location = new System.Drawing.Point(20, 60);
            this.txtKayitIsim.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtKayitIsim.Name = "txtKayitIsim";
            this.txtKayitIsim.Size = new System.Drawing.Size(153, 22);
            this.txtKayitIsim.TabIndex = 9;
            this.txtKayitIsim.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtKayitSoyad
            // 
            this.txtKayitSoyad.BackColor = System.Drawing.Color.White;
            this.txtKayitSoyad.ForeColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.txtKayitSoyad.Location = new System.Drawing.Point(205, 60);
            this.txtKayitSoyad.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtKayitSoyad.Name = "txtKayitSoyad";
            this.txtKayitSoyad.Size = new System.Drawing.Size(151, 22);
            this.txtKayitSoyad.TabIndex = 10;
            this.txtKayitSoyad.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // frmLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Beige;
            this.ClientSize = new System.Drawing.Size(899, 503);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.ForeColor = System.Drawing.SystemColors.ControlDark;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmLogin";
            this.Text = "frmLogin";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.TextBox txtKayitKullaniciAdi;
        private System.Windows.Forms.TextBox txtKayitPassword;
        private System.Windows.Forms.Button btnKayit;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtGirisKullaniciadi;
        private System.Windows.Forms.Button btnGiris;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txtKayitIsim;
        private System.Windows.Forms.TextBox txtKayitSoyad;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtGirisPassword;
    }
}