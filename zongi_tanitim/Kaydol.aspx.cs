using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace zongi_tanitim
{
    public partial class Kaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAdi.Text != "" && txtSifre.Text != "")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                string sorgu = "Insert into Kullanicilar(KullaniciAdi, Sifre) Values(@kullaniciadi,@sifre)";
                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();
                try
                {
                    cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
                    cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    lblSonuc.Text = "Başarıyla kayıt yapılmıştır.";
                }
                catch
                {
                    lblSonuc.Text = "Kayıt yapılamamıştır";

                }

            }
            else
            {
                lblSonuc.Text = "Boş alanları doldurunuz";
            }

        }
    }
}