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
    public partial class RecentPost : System.Web.UI.Page
    {
       


        protected void Page_Load(object sender, EventArgs e)
        {
            String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select phone_id,phone_image,phone_model,imei_number,contact_number,block_number,road_number,area from phone order by phone_id DESC", con);
                con.Open();
                
                
                SqlDataReader rdr = cmd.ExecuteReader();
                Repeater1.DataSource = rdr;
                Repeater1.DataBind();

            }
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string id = btn.CommandArgument.ToString();
            Response.Redirect("~/Comments.aspx?id=" + id);
        }
    }
}