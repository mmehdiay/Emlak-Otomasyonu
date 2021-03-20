using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Emlak
{
    public partial class frmLogin : Form
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SAMIR\SQLEXPRESS2017;Initial Catalog=emlak;Integrated Security=True");
        public frmLogin()
        {
            InitializeComponent();
        }

        private void btnGiris_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM admin WHERE adminKullaniciAdi='" + txtGirisKullaniciadi.Text.Trim() + "'AND adminPassword='" + txtGirisPassword.Text.Trim() +"'",conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                frmIlanEkle frEkle = new frmIlanEkle();
                frEkle.Show();
            }
            else
                MessageBox.Show("Yanlış Kulanıcı Adı Veya Şifre");

        }

        private void btnKayit_Click(object sender, EventArgs e)
        {
            
            if (txtKayitIsim.Text != "" && txtKayitSoyad.Text != "" && txtKayitKullaniciAdi.Text != "" && txtKayitPassword.Text != "")
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO admin(adminAd, adminSoyad, adminKullaniciAdi, adminPassword) VALUES ('"+txtKayitIsim.Text+ "','" + txtKayitSoyad.Text + "','" + txtKayitKullaniciAdi.Text + "','" + txtKayitPassword.Text + "')",conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                MessageBox.Show("Kayıt Başarılı Bir şekilde Oluşturuldu");

            }
            else
                MessageBox.Show("Lütfen Tüm Alanları Doldurun");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmTumilanlar frTum = new frmTumilanlar();
            frTum.Show();
        }
    }
}
