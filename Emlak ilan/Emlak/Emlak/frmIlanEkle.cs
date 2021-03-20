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
using System.IO;

namespace Emlak
{
    public partial class frmIlanEkle : Form
    {
        public frmIlanEkle()
        {
            InitializeComponent();
        }

        SqlConnection conn = new SqlConnection(@"Data Source=SAMIR\SQLEXPRESS2017;Initial Catalog=emlak;Integrated Security=True");
       

        public void fillCombobox(string path, ComboBox cbx)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(path, conn);
            cmd.Parameters.AddWithValue("@p1", cbxil.SelectedIndex + 1);//bu satır yalnızca ilçe comboboxına veriler girildiğinde çalışacak
            SqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                cbx.Items.Add(read[0].ToString());
            }
            read.Close();
            conn.Close();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ////////TapPageIlan Part//////
            ///kategori
            fillCombobox("SELECT kategoriAd FROM kategori",cbxKategori);
            ///Para Cinsi
            fillCombobox("SELECT paraCinsi FROM paraCinsi", cbxParaCinsi);
            /////işlem
            fillCombobox("SELECT islemAd FROM islem", cbxİslem);
            ////kimden
            fillCombobox("SELECT kimdenUnvan FROM kimden", cbxKimden);         
            /////il
            fillCombobox("SELECT sehir FROM sehir", cbxil);

            ///////////TopPageIlanDetay part//////
            ///Oda sayısı
            fillCombobox("SELECT odaSayisi FROM odaSayisi", cbxOdaSayisi);
            ////Bina Yaşı
            fillCombobox("SELECT binaYasi FROM binaYasi", cbxBinaYasi);


        }

        private void cbxil_SelectedIndexChanged(object sender, EventArgs e)
        {
            ///ilçe
            cbxilce.Items.Clear();
            fillCombobox("SELECT ilce FROM ilce where sehirID=@p1", cbxilce);
           
        }

        private void btnilanEkle_Click(object sender, EventArgs e)
        {
            // debug içindeki img klasörüne vitrin resmini kaydetme
            string imageFile = Path.GetFileName(openFileDialog1.FileName);
            string imagePath = Path.Combine(Application.StartupPath + "\\img\\" + imageFile);
            File.Copy(openFileDialog1.FileName, imagePath, true);

           
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO ilan (ilanBaslik,ilanFiyat,paraCinsiID,kategoriID,islemID,kimdenID,ilanResim,sehirID,ilceID,ilanAciklama) VALUES ('" + txtilanBasligi.Text + "','" +int.Parse(txtFiyat.Text) + "','" + (cbxParaCinsi.SelectedIndex+1) + "','" + (cbxKategori.SelectedIndex+1)+"','"+(cbxİslem.SelectedIndex+1)+ "','"+(cbxKimden.SelectedIndex+1)+ "','" + txtResim.Text + "','" + (cbxil.SelectedIndex+1)+ "','" + (cbxilce.SelectedIndex + 1) + "','" + richTxtAciklama.Text+"')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            ///tabPageDetay daki cbxSonilan için son kaydın ilanID'sini alıyoruz
            fillCombobox("SELECT TOP 1 ilanID FROM ilan ORDER BY ilanID desc", cbxSonIlan);
            cbxSonIlan.SelectedIndex = 0;


            conn.Open();
          ///ilce comboboxında seçilen indexi ilceId olarak kaydettiği için hep 1. ilin ilçelerini döndürürüyor. Bu yüzden ilan daki ilceID sütünunu güncelliyoruz
            SqlCommand up = new SqlCommand("UPDATE ilan SET ilan.ilceID = (Select ilce.ilceID from ilce where ilce='" + cbxilce.SelectedItem.ToString().Trim() + "') WHERE  ilanID='"+cbxSonIlan.SelectedItem.ToString().Trim()+"'", conn);
            up.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("ilan Eklendi");


            //texboxları temizliyelim
            txtilanBasligi.Text = ""; txtFiyat.Text = ""; richTxtAciklama.Text = ""; txtResim.Text = "";
            cbxil.SelectedIndex = -1;cbxilce.SelectedIndex = -1; cbxKategori.SelectedIndex = -1;cbxParaCinsi.SelectedIndex = -1;cbxKimden.SelectedIndex = -1;
            cbxİslem.SelectedIndex = -1;

        }
       
        private void btnSec_Click(object sender, EventArgs e)
        {
            openFileDialog1.Title = "Vitrin için bir fotoğraf seçiniz";
            openFileDialog1.InitialDirectory = @"C:\Users\AY\Pictures";
            openFileDialog1.Filter = "JPG Files|*.jpg|PNG Files|*.png|JPEG Files|*.jpeg";
            if(openFileDialog1.ShowDialog()==DialogResult.OK)
            {
                txtResim.Text = openFileDialog1.SafeFileName.ToString();
                pictureBox1.ImageLocation = openFileDialog1.FileName;
            }
            

        }




        //////////////////////TabPageDetay /////////////////////
        private void btnilanDetayEkle_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO ilanDetay (odaSayisiID,metrekareBrut,metrekareNet,iDetayBinaKatSayisi,binaYasiID,iDetayKacinciKat,iDetayIsitma,iDetayDepozito,iDetayEsya,ilanID) VALUES ('"+(cbxOdaSayisi.SelectedIndex+1)+"','"+int.Parse(txtBrut.Text)+ "','" + int.Parse(txtNet.Text) + "','"+int.Parse(txtKatSayisi.Text)+"','"+(cbxBinaYasi.SelectedIndex+1)+"','"+int.Parse(txtKacinciKat.Text)+ "','"+txtIsitma.Text+"','"+int.Parse(txtDepozito.Text)+"','"+chckBoxEsyali.Checked+"','"+int.Parse(cbxSonIlan.Text)+"')",conn);
            cmd.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("INSERT INTO icOzellik (asansor,somine,banyoSayisi,ilanID) VALUES ('"+chckAsansor.Checked+ "','" + chckSomine.Checked + "','" + int.Parse(txtBanyo.Text) + "','" + int.Parse(cbxSonIlan.Text)+ "')", conn);
            cmd2.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("INSERT INTO disOzellik (park,havuz,alarm,siteMi,ilanID) VALUES ('" + chckDısPark.Checked + "','" + chckHavuz.Checked + "','" + chckAlarm.Checked + "','" + chckSite.Checked + "','" + int.Parse(cbxSonIlan.Text) + "')", conn);
            cmd3.ExecuteNonQuery();
            SqlCommand cmd4 = new SqlCommand("INSERT INTO muhit (mezarlik, eczane, camii, market, alisverisMerkezi, park, ilkokul, lise, üniversite, semtPazari, ilanID) VALUES ('" + chckMezarlik.Checked + "','" + chckEczane.Checked + "','" + chckCami.Checked + "','" + chckMarket.Checked + "','" + chckAlisveris.Checked + "','" + chckMuhitPark.Checked + "','" + chckilkokul.Checked + "','" + chckLise.Checked + "','" + chckUniversite.Checked + "','" + chckSemtPazari.Checked + "','" + int.Parse(cbxSonIlan.Text) + "')", conn);
            cmd4.ExecuteNonQuery();
            SqlCommand cmd5 = new SqlCommand("INSERT INTO ulasim (marmaray, metro, vapur, otobusDuragi, metrobus, anayol, tramvay, dolmus, taksiDuragi, havalimani, ilanID) VALUES ('" + chckMarmaray.Checked + "','" + chckMetro.Checked + "','" + chckVapur.Checked + "','" + chckOtobus.Checked + "','" + chckMetrobus.Checked + "','" + chckAnayol.Checked + "','" + chckTramvay.Checked + "','" + chckDolmus.Checked + "','" + chckTaxi.Checked + "','" + chckHavalimani.Checked + "','" + int.Parse(cbxSonIlan.Text) + "')", conn);
            cmd5.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("İlan Detayları Eklendi");
            //eklemeden sonra texboxları temizliyelim
            txtNet.Text = ""; txtBrut.Text = ""; txtBanyo.Text = ""; txtIsitma.Text = ""; txtKatSayisi.Text = "";
            txtKacinciKat.Text = ""; txtDepozito.Text = ""; txtBanyo.Text = "";
            cbxOdaSayisi.SelectedIndex = -1;cbxBinaYasi.SelectedIndex = -1;
            chckAlarm.Checked = false;chckAlisveris.Checked = false;chckAnayol.Checked = false;chckAsansor.Checked = false;chckBoxEsyali.Checked = false;
            chckCami.Checked = false;chckDolmus.Checked = false;chckDısPark.Checked = false;chckEczane.Checked = false;chckHavalimani.Checked = false;
            chckHavuz.Checked = false;chckilkokul.Checked = false;chckLise.Checked = false;chckMarket.Checked = false;chckMarmaray.Checked = false;chckMetro.Checked = false;
            chckMetrobus.Checked = false;chckMezarlik.Checked = false;chckMuhitPark.Checked = false;chckOtobus.Checked = false;chckSemtPazari.Checked = false;
            chckSite.Checked = false;chckSomine.Checked = false;chckTaxi.Checked = false;chckTramvay.Checked = false;chckUniversite.Checked = false;
            chckVapur.Checked = false;


        }

















        /////////////////////////////güncelleme/////////////////////////////////////////////////////////////// 
        /////seçili ilanın tüm bilgilerini textbox,radiobuton ve comboboxlara doldurma
        public string guncelleID = "";
        public void guncelleKontrol()
        {
            btnilanEkle.Enabled = false;
            btnilanDetayEkle.Enabled = false;
            btnIlanGuncelle.Enabled = true;
            
            conn.Open();
            SqlDataReader da;
            //groupbox ilan 
            SqlCommand cmd = new SqlCommand("SELECT ilanBaslik, ilanFiyat, paraCinsi,  kategoriAd, islemAd, kimdenUnvan, ilanResim, sehir,ilce,  ilanAciklama FROM ilan " +
                "JOIN paraCinsi ON ilan.paraCinsiID = paraCinsi.paraCinsiID JOIN kategori ON ilan.kategoriID = kategori.kategoriID " +
                "JOIN islem ON ilan.islemID = islem.islemID JOIN kimden ON ilan.kimdenID = kimden.kimdenID JOIN sehir ON ilan.sehirID = sehir.sehirID LEFT " +
                "JOIN ilce ON  ilan.ilceID = ilce.ilceID WHERE ilanID=@ID", conn);
            cmd.Parameters.AddWithValue("@ID", int.Parse(guncelleID));
            da = cmd.ExecuteReader();


           
            while (da.Read())
            {
                txtilanBasligi.Text = da.GetValue(0).ToString();
                txtFiyat.Text = da.GetValue(1).ToString();
                cbxParaCinsi.SelectedItem= da.GetValue(2);
                cbxKategori.SelectedItem = da.GetValue(3);
                cbxİslem.SelectedItem = da.GetValue(4).ToString();
                cbxKimden.SelectedItem = da.GetValue(5).ToString();
                if (da.GetValue(6).ToString() != "")
                {
                    string imagePath = Application.StartupPath.Substring(0, (Application.StartupPath.Length));
                    pictureBox1.Image = Image.FromFile(imagePath + "\\img\\" + da["ilanResim"].ToString());
                }
                else
                {
                    string imagePath = Application.StartupPath.Substring(0, (Application.StartupPath.Length));
                    pictureBox1.Image = Image.FromFile(imagePath + "\\img\\noImage.png".ToString());
                }

                cbxil.SelectedItem = da.GetValue(7).ToString();
                cbxilce.SelectedItem = da.GetValue(8).ToString();
                richTxtAciklama.Text = da.GetValue(9).ToString();
            }
            da.Close();

            if (txtilanBasligi.Text == "")
                txtilanBasligi.Text = "belirtilmemiş";

            if (richTxtAciklama.Text == "")
                richTxtAciklama.Text = "belirtilmemiş";


           
            ///ilan detay groupbox ///
            SqlCommand cmd2 = new SqlCommand("SELECT odaSayisi, metrekareBrut, metrekareNet, iDetayBinaKatSayisi, binaYasi, iDetayKacinciKat, iDetayIsitma, iDetayDepozito, iDetayEsya FROM ilanDetay" +
                "  JOIN odaSayisi ON ilanDetay.odaSayisiID=odaSayisi.odaSayisiID  JOIN binaYasi ON ilanDetay.binaYasiID=binaYasi.binaYasiID WHERE ilanID=@ID", conn);
            cmd2.Parameters.AddWithValue("@ID", int.Parse(guncelleID));
            da = cmd2.ExecuteReader();

            while (da.Read())
            {
                cbxOdaSayisi.SelectedItem = da.GetValue(0).ToString();
                txtBrut.Text= da.GetValue(1).ToString();
                txtNet.Text = da.GetValue(2).ToString();
                txtKatSayisi.Text = da.GetValue(3).ToString();
                cbxBinaYasi.SelectedItem = da.GetValue(4).ToString();
                txtKacinciKat.Text = da.GetValue(5).ToString();
                txtIsitma.Text = da.GetValue(6).ToString();
                txtDepozito.Text = da.GetValue(7).ToString();
                if (da.GetValue(8).Equals(true))
                {
                    chckBoxEsyali.CheckState = CheckState.Checked;
                }
            }
            da.Close();

            ///gropbox ilan detaydaki textboxlar eğer boş ise;
            if (txtBrut.Text == "")
                txtBrut.Text = "belirtilmemiş";

            if (txtNet.Text == "")
                txtNet.Text = "belirtilmemiş";

            if (txtKatSayisi.Text == "")
                txtKatSayisi.Text = "belirtilmemiş";
           
            if (txtKacinciKat.Text == "")
                txtKacinciKat.Text = "belirtilmemiş";

            if (txtIsitma.Text == "")
                txtIsitma.Text = "belirtilmemiş";

            if (txtDepozito.Text == "")
                txtDepozito.Text = "belirtilmemiş";



            /////groupbox iç özelliler///////
            SqlCommand cmd3 = new SqlCommand("SELECT asansor,somine,banyoSayisi FROM icOzellik WHERE ilanID=@ID", conn);
            cmd3.Parameters.AddWithValue("@ID", int.Parse(guncelleID));
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
            cmd4.Parameters.AddWithValue("@ID", int.Parse(guncelleID));
            da = cmd4.ExecuteReader();

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
            cmd5.Parameters.AddWithValue("@ID", int.Parse(guncelleID));
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
            cmd6.Parameters.AddWithValue("@ID", int.Parse(guncelleID));
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




        private void btnIlanGuncelle_Click(object sender, EventArgs e)
        {
            // debug içindeki img klasörüne vitrin resmini kaydetme
            string imageFile = Path.GetFileName(openFileDialog1.FileName);
            string imagePath = Path.Combine(Application.StartupPath + "\\img\\" + imageFile);
            File.Copy(openFileDialog1.FileName, imagePath, true);
            ///tabPageIlan güncelleme
            conn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE ilan SET ilanBaslik='" + txtilanBasligi.Text + "',ilanFiyat='" + int.Parse(txtFiyat.Text)+"',paraCinsiID='"+(cbxParaCinsi.SelectedIndex+1)+"',kategoriID='"+(cbxKategori.SelectedIndex+1)+"',islemID='"+(cbxİslem.SelectedIndex+1)+"',kimdenID='"+(cbxKimden.SelectedIndex+1)+"',ilanResim='"+txtResim.Text+"',sehirID='"+(cbxil.SelectedIndex+1)+"',ilceID='"+(cbxilce.SelectedIndex+1)+"',ilanAciklama='"+richTxtAciklama.Text+"' WHERE ilanID='"+int.Parse(guncelleID)+"'",conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            ///
            conn.Open();
            ///ilce comboboxında seçilen indexi ilceId olarak kaydettiği için hep 1. ilin ilçelerini döndürürüyor. Bu yüzden ilan daki ilceID sütünunu güncelliyoruz
            SqlCommand up = new SqlCommand("UPDATE ilan SET ilan.ilceID = (Select ilce.ilceID from ilce where ilce='" + cbxilce.SelectedItem.ToString().Trim() + "') WHERE  ilanID='" + guncelleID + "'", conn);
            up.ExecuteNonQuery();
            conn.Close();

            ////tabPageDetay--İlan detay güncelleme
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("UPDATE ilanDetay SET odaSayisiID='" + (cbxOdaSayisi.SelectedIndex + 1) + "',metrekareBrut='" + int.Parse(txtBrut.Text) + "',metrekareNet='" + int.Parse(txtNet.Text) + "',iDetayBinaKatSayisi='" +int.Parse(txtKatSayisi.Text) + "',binaYasiID='"+(cbxBinaYasi.SelectedIndex+1)+"',iDetayKacinciKat='" + int.Parse(txtKacinciKat.Text) + "',iDetayIsitma='" + txtIsitma.Text + "',iDetayDepozito='" + int.Parse(txtDepozito.Text) + "',iDetayEsya='" + chckBoxEsyali.Checked + "' WHERE ilanID= '"+int.Parse(guncelleID)+"'", conn);
            cmd1.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("UPDATE icOzellik SET asansor='" + chckAsansor.Checked + "',somine='" + chckSomine.Checked + "',banyoSayisi='" + int.Parse(txtBanyo.Text) + "'WHERE ilanID='" + int.Parse(guncelleID) + "'", conn);
            cmd2.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("UPDATE disOzellik SET park='" + chckDısPark.Checked + "',havuz='" + chckHavuz.Checked + "',alarm='" + chckAlarm.Checked + "',siteMi='" + chckSite.Checked + "' WHERE ilanID= '" + int.Parse(guncelleID) + "'", conn);
            cmd3.ExecuteNonQuery();
            SqlCommand cmd4 = new SqlCommand("UPDATE muhit SET mezarlik='" + chckMezarlik.Checked + "', eczane='" + chckEczane.Checked + "', camii='" + chckCami.Checked + "', market='"+chckMarket.Checked+"', alisverisMerkezi='" + chckAlisveris.Checked + "', park='" + chckMuhitPark.Checked + "', ilkokul='" + chckilkokul.Checked + "', lise='" + chckLise.Checked + "', üniversite='" + chckUniversite.Checked + "', semtPazari='" + chckSemtPazari.Checked + "' WHERE ilanID= '" + int.Parse(guncelleID) + "'", conn);
            cmd4.ExecuteNonQuery();
            SqlCommand cmd5 = new SqlCommand("UPDATE ulasim SET marmaray='" + chckMarmaray.Checked + "', metro='" + chckMetro.Checked + ", vapur='" + chckVapur.Checked + "', otobusDuragi='" + chckOtobus.Checked + "', metrobus='" + chckMetrobus.Checked + "', anayol='" + chckAnayol.Checked + "', tramvay='" + chckTramvay.Checked + "', dolmus='" + chckDolmus.Checked + "', taksiDuragi='" + chckTaxi.Checked + "', havalimani='" + chckHavalimani.Checked + "'WHERE ilanID='" + int.Parse(guncelleID)+ "'", conn);
            cmd5.ExecuteNonQuery();
            conn.Close();




            guncelleID = "";
            MessageBox.Show("güncelleme yapıldı");
            btnilanEkle.Enabled = true;
            btnilanDetayEkle.Enabled = true;
            frmTumilanlar tum = new frmTumilanlar();
            tum.yenile();
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmTumilanlar frtum = new frmTumilanlar();
            frtum.yenile();
            frtum.Show();
            this.Hide();
        }
    }
}
