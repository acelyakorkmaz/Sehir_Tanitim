using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zongi_tanitim
{
    public partial class Sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["kullaniciadi"] != null)
            {
                GetSepet();
                pnlSepet.Visible = true;
                pnlSonuc.Visible = false;
            }
        }

        private void GetSepet()
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string sorgu = @"Select B.* from Sepet AS A
                        INNER JOIN Urunler AS B ON B.Id = A.UrunId
                        WHERE A.KullananiciAdi = @KullananiciAdi AND A.Alindimi = '0'  ";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("@KullananiciAdi", Session["kullaniciadi"].ToString());

            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            lstSepet.DataSource = dr;
            lstSepet.DataBind();
            cnn.Close();
        }

        protected void btnSatinAl_Click(object sender, EventArgs e)
        {
            if (txtAdres.Text != "")
            {

                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                string sorgu = "UPDATE Sepet SET Alindimi=1 where KullananiciAdi=@kullaniciadi and Alindimi=0";
                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();
                try
                {
                    cmd.Parameters.AddWithValue("@kullaniciadi", Session["kullaniciadi"].ToString());


                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    pnlSepet.Visible = false;
                    pnlSonuc.Visible = true;
                }
                catch
                {
                    lblSonuc.Text = "Kayıt yapılamamıştır";

                }
            }
            else {
                lblSonuc.Text = "Adres Gir";
            }




        }
    }
}