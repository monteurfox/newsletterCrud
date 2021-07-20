using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsLetterMat
{
    public partial class inscreva_se : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txbEmail_TextChanged(object sender, EventArgs e)
        {

            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into dados_usuario (email, fonte) values (@email, @rede_social)";
            cmd.Parameters.AddWithValue("email", txbEmail.Text);
            cmd.Parameters.AddWithValue("rede_social", ddRedeSocial.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void ddRedeSocial_SelectedIndexChanged(object sender, EventArgs e)
        {
      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txbEmail.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Por favor, preencher os campos.')", true);
            }
             ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Inscrição feita com sucesso!')", true);
            
        }
    }
}