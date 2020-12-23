using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Security;


namespace Phone_finder.Account
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed16_Click(object sender, EventArgs e)
        {

        }

        protected void btnlogin(object sender, EventArgs e)
        {
            if(Login(Email.Text,Password.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(Email.Text, chkBoxRememberMe.Checked);
                // string co = FormsAuthentication.FormsCookieName;
                string a = Email.Text;
                
            }
            
        }
        private bool Login(string email, string password)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("splogin", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter parPass = new SqlParameter("@password", password);
                SqlParameter parEmail = new SqlParameter("@email", email);

                cmd.Parameters.Add(parPass);
                cmd.Parameters.Add(parEmail);
                

                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;
            }
        }
    }
}