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

    public partial class frmIlanDetay : Form
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SAMIR\SQLEXPRESS2017;Initial Catalog=emlak;Integrated Security=True");

        public frmIlanDetay()
        {
            InitializeComponent();
        }

        public string idNumber;// Tümilanlar formundan ulaşmak
        private void frmIlanDetay_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlDataReader da;
            //groupbox ilan 
            SqlCommand cmd = new SqlCommand("SELECT ilanBaslik, ilanFiyat, paraCinsi, ilanTarih, kategoriAd, islemAd, kimdenUnvan, ilanResim, sehir,ilce,  ilanAciklama FROM ilan " +
                "JOIN paraCinsi ON ilan.paraCinsiID = paraCinsi.paraCinsiID JOIN kategori ON ilan.kategoriID = kategori.kategoriID " +
                "JOIN islem ON ilan.islemID = islem.islemID JOIN kimden ON ilan.kimdenID = kimden.kimdenID JOIN sehir ON ilan.sehirID = sehir.sehirID LEFT " +
                "JOIN ilce ON  ilan.ilceID = ilce.ilceID WHERE ilanID=@ID", conn);
            cmd.Parameters.AddWithValue("@ID", int.Parse(idNumber));
            da= cmd.ExecuteReader();

            while(da.Read())
            {
                txtilanBasligi.Text = da.GetValue(0).ToString();
                txtFiyat.Text = da.GetValue(1).ToString();
                txtParaCinsi.Text = da.GetValue(2).ToString();
                txtTarih.Text = da.GetValue(3).ToString();
                txtKategori.Text = da.GetValue(4).ToString();
                txtIslem.Text = da.GetValue(5).ToString();
                txtKimden.Text = da.GetValue(6).ToString();
                if (da.GetValue(7).ToString() != "")
                {
                    string imagePath = Application.StartupPath.Substring(0,(Application.StartupPath.Length));
                    pictureBox1.Image = Image.FromFile(imagePath+ "\\img\\"+ da["ilanResim"].ToString());
                }
                else
                {
                    string imagePath = Application.StartupPath.Substring(0, (Application.StartupPath.Length));
                    pictureBox1.Image = Image.FromFile(imagePath + "\\img\\noImage.png".ToString());

                }
               
                txtSehir.Text = da.GetValue(8).ToString();
                txtIlce.Text = da.GetValue(9).ToString();
                richTxtAciklama.Text = da.GetValue(10).ToString();
            }
            da.Close();

            if (txtilanBasligi.Text == "")
                txtilanBasligi.Text = "belirtilmemiş";

            if (richTxtAciklama.Text == "")
                richTxtAciklama.Text = "belirtilmemiş";

           


            ////
            ///groupbox ilan detay
            SqlCommand cmd2 = new SqlCommand("SELECT odaSayisi, metrekareBrut, metrekareNet, iDetayBinaKatSayisi, binaYasi, iDetayKacinciKat, iDetayIsitma, iDetayDepozito, iDetayEsya FROM ilanDetay" +
                "  JOIN odaSayisi ON ilanDetay.odaSayisiID=odaSayisi.odaSayisiID  JOIN binaYasi ON ilanDetay.binaYasiID=binaYasi.binaYasiID WHERE ilanID=@ID", conn);
            cmd2.Parameters.AddWithValue("@ID", int.Parse(idNumber));
            da = cmd2.ExecuteReader();

            while (da.Read())
            {
                txtOdaSayisi.Text = da.GetValue(0).ToString();
                txtBrut.Text = da.GetValue(1).ToString();
                txtNet.Text = da.GetValue(2).ToString();
                txtKatSayisi.Text = da.GetValue(3).ToString();
                txtBinaYasi.Text = da.GetValue(4).ToString();
                txtKacinciKat.Text = da.GetValue(5).ToString();
                txtIsitma.Text = da.GetValue(6).ToString();
                txtDepozito.Text = da.GetValue(7).ToString();
                if(da.GetValue(8).Equals(true))
                {
                    chckBoxEsyali.CheckState =CheckState.Checked;
                }  
            }
            da.Close();
           

            ///gropbox ilan detaydaki textboxlar eğer boş ise;
            if (txtOdaSayisi.Text == "")
                txtOdaSayisi.Text = "belirtilmemiş";

            if (txtBrut.Text == "")
                txtBrut.Text = "belirtilmemiş";

            if (txtNet.Text == "")
                txtNet.Text = "belirtilmemiş";

            if (txtKatSayisi.Text == "")
                txtKatSayisi.Text = "belirtilmemiş";

            if (txtBinaYasi.Text == "")
                txtBinaYasi.Text = "belirtilmemiş";

            if (txtKacinciKat.Text == "")
                txtKacinciKat.Text = "belirtilmemiş";

            if (txtIsitma.Text == "")
                txtIsitma.Text = "belirtilmemiş";

            if (txtDepozito.Text == "")
                txtDepozito.Text = "belirtilmemiş";



            /////groupbox iç özelliler///////
            SqlCommand cmd3 = new SqlCommand("SELECT asansor,somine,banyoSayisi FROM icOzellik WHERE ilanID=@ID", conn);
            cmd3.Parameters.AddWithValue("@ID", int.Parse(idNumber));
            da = cmd3.ExecuteReader();

            while (da.Read())
            {
                
                if (da.GetValue(0).Equals(true))
                    chckAsansor.CheckState = CheckState.Checked;

                if (da.GetValue(1).Equals(true))
                    chckSomine.CheckState = CheckState.Checked;

                txtBanyo.Text = da.GetValue(2).ToString();

            }
            da.Close();

            if (txtBanyo.Text == "")
                txtBanyo.Text = "belirtilmemiş";


            //////groupbox dış özellikler//////
            SqlCommand cmd4 = new SqlCommand("SELECT park,havuz,alarm,siteMi from disOzellik WHERE ilanID=@ID", conn);
            cmd4.Parameters.AddWithValue("@ID", int.Parse(idNumber));
            da= cmd4.ExecuteReader();
            
            while (da.Read())
            {

                if (da.GetValue(0).Equals(true))
                    chckDısPark.CheckState = CheckState.Checked;

                if (da.GetValue(1).Equals(true))
                    chckHavuz.CheckState = CheckState.Checked;

                if (da.GetValue(2).Equals(true))
                    chckAlarm.CheckState = CheckState.Checked;

                if (da.GetValue(3).Equals(true))
                    chckSite.CheckState = CheckState.Checked;
            }
            da.Close();


            ////gropubox muhit////////
            SqlCommand cmd5 = new SqlCommand("SELECT mezarlik, eczane, camii, market, alisverisMerkezi, park, ilkokul, lise, üniversite, semtPazari FROM muhit WHERE ilanID=@ID", conn);
            cmd5.Parameters.AddWithValue("@ID", int.Parse(idNumber));
            da = cmd5.ExecuteReader();

            while (da.Read())
            {

                if (da.GetValue(0).Equals(true))
                    chckMezarlik.CheckState = CheckState.Checked;

                if (da.GetValue(1).Equals(true))
                    chckEczane.CheckState = CheckState.Checked;

                if (da.GetValue(2).Equals(true))
                    chckCami.CheckState = CheckState.Checked;

                if (da.GetValue(3).Equals(true))
                    chckMarket.CheckState = CheckState.Checked;

                if (da.GetValue(4).Equals(true))
                    chckAlisveris.CheckState = CheckState.Checked;

                if (da.GetValue(5).Equals(true))
                    chckMuhitPark.CheckState = CheckState.Checked;

                if (da.GetValue(6).Equals(true))
                    chckilkokul.CheckState = CheckState.Checked;

                if (da.GetValue(7).Equals(true))
                    chckLise.CheckState = CheckState.Checked;

                if (da.GetValue(8).Equals(true))
                    chckUniversite.CheckState = CheckState.Checked;

                if (da.GetValue(9).Equals(true))
                    chckSemtPazari.CheckState = CheckState.Checked;
            }
            da.Close();




            /////groupbox ulaşım////////
            SqlCommand cmd6 = new SqlCommand("SELECT marmaray, metro, vapur, otobusDuragi, metrobus, anayol, tramvay, dolmus, taksiDuragi, havalimani FROM ulasim WHERE ilanID=@ID", conn);
            cmd6.Parameters.AddWithValue("@ID", int.Parse(idNumber));
            da = cmd6.ExecuteReader();

            while (da.Read())
            {
                if (da.GetValue(0).Equals(true))
                    chckMarmaray.CheckState = CheckState.Checked;

                if (da.GetValue(1).Equals(true))
                    chckMetro.CheckState = CheckState.Checked;

                if (da.GetValue(2).Equals(true))
                    chckVapur.CheckState = CheckState.Checked;

                if (da.GetValue(3).Equals(true))
                    chckOtobus.CheckState = CheckState.Checked;

                if (da.GetValue(4).Equals(true))
                    chckMetrobus.CheckState = CheckState.Checked;

                if (da.GetValue(5).Equals(true))
                    chckAnayol.CheckState = CheckState.Checked;

                if (da.GetValue(6).Equals(true))
                    chckTramvay.CheckState = CheckState.Checked;

                if (da.GetValue(7).Equals(true))
                    chckDolmus.CheckState = CheckState.Checked;

                if (da.GetValue(8).Equals(true))
                    chckTaxi.CheckState = CheckState.Checked;

                if (da.GetValue(9).Equals(true))
                    chckHavalimani.CheckState = CheckState.Checked;
            }
            da.Close();

            conn.Close();


        }

    }
}
