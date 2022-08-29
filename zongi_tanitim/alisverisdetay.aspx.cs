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
    public partial class alisverisdetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && HttpContext.Current.Request["id"]!=null)
                GeturunlerDetay();
        }

        private void GeturunlerDetay()
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string sorgu = "Select * from Urunler  where Id=@ID";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("@ID", HttpContext.Current.Request["id"].ToString());

          cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            lstUrun.DataSource = dr;
            lstUrun.DataBind();
            cnn.Close();
        }

        protected void SepeteEkle_Click(object sender, EventArgs e)
        {
            if (Session["kullaniciadi"]!=null)
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                string sorgu = "Insert into Sepet(UrunId, KullananiciAdi,Alindimi) Values(@UrunId,@KullananiciAdi,@Alindimi)";
                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();
                try
                {
                    cmd.Parameters.AddWithValue("@UrunId", HttpContext.Current.Request["id"].ToString());
                    cmd.Parameters.AddWithValue("@KullananiciAdi", Session["kullaniciadi"].ToString());
                    cmd.Parameters.AddWithValue("@Alindimi","0");
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    lblSonuc.Text = "Sepetinize ürün eklenmiştir.";
                }
                catch
                {
                    lblSonuc.Text = "Kayıt yapılamamıştır";

                }

            }
            else
            {
                lblSonuc.Text = "Önce kayıt olup giriş yapmanız gerekmektedir.";
            }
        }
    }
}