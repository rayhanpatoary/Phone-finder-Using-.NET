using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Phone_finder
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
            
        {
            
            if (!IsPostBack)
            {
                RecentPost();
            }
            if (IsPostBack)
            {
                RecentpostDiv.Visible = false;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select phone_id, phone_image,phone_model,imei_number,contact_number,block_number,road_number,area from phone where imei_number like @searchValue", con);
                cmd.Parameters.AddWithValue("@searchValue", "%"+inputSearch.Text+"%");
                con.Open();


                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    h4resultnotfound.Visible = false;
                    Repeater1.DataSource = rdr;
                    Repeater1.DataBind();
                }
                else
                {
                    h4resultnotfound.Visible = true;
                    lblResultnotFound.Text = "Result not found !";
                }

            }
        }

        protected void RecentPost()
        {
            String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select phone_id, phone_image,phone_model,imei_number,contact_number,block_number,road_number,area from phone ORDER BY phone_id DESC", con);
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