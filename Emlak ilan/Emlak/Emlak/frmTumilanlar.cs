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
    public partial class frmTumilanlar : Form
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SAMIR\SQLEXPRESS2017;Initial Catalog=emlak;Integrated Security=True");
        public frmTumilanlar()
        {
            InitializeComponent();
        }
        int ilnId;
        public void ilan_sil(string query)
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@iln", ilnId);
            cmd.ExecuteNonQuery();

        }
        ///datagrid viewe tüm ilanları çekme
        public void yenile()
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT ilanID, ilanBaslik, ilanFiyat, paraCinsi, ilanTarih, kategoriAd, islemAd, kimdenUnvan, ilanResim, sehir,ilce,  ilanAciklama FROM ilan " +
               "JOIN paraCinsi ON ilan.paraCinsiID = paraCinsi.paraCinsiID JOIN kategori ON ilan.kategoriID = kategori.kategoriID " +
               "JOIN islem ON ilan.islemID = islem.islemID JOIN kimden ON ilan.kimdenID = kimden.kimdenID JOIN sehir ON ilan.sehirID = sehir.sehirID LEFT " +
               " JOIN ilce ON  ilan.ilceID = ilce.ilceID ", conn);
            DataTable tbl = new DataTable();
            da.Fill(tbl);
            dataGridView1.DataSource = tbl;
            conn.Close();
        }

        private void frmTumilanlar_Load(object sender, EventArgs e)
        {
            yenile();
            dataGridView1.ClearSelection();//datagrid viewin ilk yüklendiğinde seçili olarak gelmesini önlüyor 
           
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            frmIlanDetay frDetay = new frmIlanDetay();
            frDetay.idNumber = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            frDetay.Show();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            
            ilnId =int.Parse(dataGridView1.CurrentRow.Cells[0].Value.ToString());
            conn.Open();
            ilan_sil("DELETE FROM ilanDetay WHERE ilanID=@iln");
            ilan_sil("DELETE FROM icOzellik WHERE ilanID=@iln");
            ilan_sil("DELETE FROM disOzellik WHERE ilanID=@iln");
            ilan_sil("DELETE FROM muhit WHERE ilanID=@iln");
            ilan_sil("DELETE FROM ulasim WHERE ilanID=@iln");
            ilan_sil("DELETE FROM ilan WHERE ilanID=@iln");
            conn.Close();
            yenile();

        }

        public  bool ctrl = false;
 
        ///Eğer datagrid view de hiçbir hücreye click yapılmadıysa  güncelle butonuna basıldığında frmIlanEkle formu açılmayacak
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            ctrl = true;
        }

        private void btnUpdate_Click_1(object sender, EventArgs e)
        {
            frmIlanEkle ekle = new frmIlanEkle();

            if (ctrl == false)
            {
                MessageBox.Show("önce bir ilan seçin");
            }
            else
            {
                ekle.guncelleID = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                ekle.guncelleKontrol();
                ekle.ShowDialog();
            }
        }
    }
}
