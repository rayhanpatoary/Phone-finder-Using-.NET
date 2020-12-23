using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Phone_finder
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                string id = Request.QueryString["id"];
                String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("select phone_id,phone_image,phone_model,imei_number,contact_number,block_number,road_number,area from phone where phone_id=@ID", con);
                    cmd.Parameters.AddWithValue("@ID", id);
                    con.Open();


                    SqlDataReader rdr = cmd.ExecuteReader();
                    Repeater1.DataSource = rdr;
                    Repeater1.DataBind();

                }

                Comment();
            
            
            
            
            
        }

        protected void btnCmnt_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("sp_comment", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@comment", txtBoxCmnt.Text);
                    cmd.Parameters.AddWithValue("@user_email", Context.User.Identity.Name);
                    cmd.Parameters.AddWithValue("@phone_id", Request.QueryString["id"]);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    
                }
            }
        }
        protected void Comment()
        {
            String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select comment.comment_value, person.first_name, person.email from comment inner join person on comment.user_id=person.user_id where comment.phone_id=@phoneId ORDER BY comment_id DESC", con);
                cmd.Parameters.AddWithValue("@phoneId", Request.QueryString["id"]);
                con.Open();


                SqlDataReader rdr = cmd.ExecuteReader();
                Repeater2.DataSource = rdr;
                Repeater2.DataBind();

            }
        }
    }
}