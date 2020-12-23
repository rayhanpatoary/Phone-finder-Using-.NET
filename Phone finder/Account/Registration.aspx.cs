using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace Phone_finder.Account
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister(object sender, EventArgs e)
        {
            String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using(SqlConnection con=new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("sp_register", con);
                cmd.CommandType = CommandType.StoredProcedure;
                //string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile("","SHA1");

                SqlParameter first_name = new SqlParameter("@first_name", FirstName.Text);
                SqlParameter last_name = new SqlParameter("@last_name", LastName.Text);
                SqlParameter password = new SqlParameter("@password", Password.Text);
                SqlParameter email = new SqlParameter("@email", Email.Text);
                SqlParameter phone = new SqlParameter("@phone", Phone.Text);
                SqlParameter address = new SqlParameter("@address", Address.Text);


                cmd.Parameters.Add(first_name);
                cmd.Parameters.Add(last_name);
                cmd.Parameters.Add(password);
                cmd.Parameters.Add(email);
                cmd.Parameters.Add(phone);
                cmd.Parameters.Add(address);


                con.Open();
                int registerOrNot = (int)cmd.ExecuteScalar();
                if (registerOrNot == -1)
                {
                    lblError.Text = "Email already in use, please choose another one";
                }
                else
                {
                    lblError.Text = "Registration Successful please Log in";
                }
            }
        }
    }
}