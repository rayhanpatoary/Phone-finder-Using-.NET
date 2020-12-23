using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Phone_finder
{
    public partial class Post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                string chkBoxResult;
                string uemail = Context.User.Identity.Name;



                if (ownerradio.Checked)
                {
                    chkBoxResult = ownerradio.Text;
                }
                else
                {
                    chkBoxResult = finderradio.Text;
                }

              
                HttpPostedFile postedFile = txtboxPhoto.PostedFile;
                string filename = Path.GetFileName(postedFile.FileName);
                string fileExtension = Path.GetExtension(filename);
                

                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                    || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
                {


                    string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand("sp_post", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        SqlParameter imei = new SqlParameter("@imei", txtBoxImei.Text);
                        SqlParameter phone_model = new SqlParameter("@phone_model", txtboxModel.Text);
                        SqlParameter image = new SqlParameter("@image", txtboxPhoto.FileContent);
                        SqlParameter post_type = new SqlParameter("@post_type", chkBoxResult);
                        SqlParameter area = new SqlParameter("@area", txtboxArea.Text);
                        SqlParameter road_number = new SqlParameter("@road_number", txtboxRoad.Text);
                        SqlParameter block_number = new SqlParameter("@block_number", txtboxBlock.Text);
                        SqlParameter email = new SqlParameter("@email", uemail);
                        SqlParameter contact_number = new SqlParameter("@contact_number", txtboxContact.Text);

                        cmd.Parameters.Add(imei);
                        cmd.Parameters.Add(phone_model);
                        cmd.Parameters.Add(image);
                        cmd.Parameters.Add(post_type);
                        cmd.Parameters.Add(area);
                        cmd.Parameters.Add(road_number);
                        cmd.Parameters.Add(block_number);
                        cmd.Parameters.Add(email);
                        cmd.Parameters.Add(contact_number);


                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                    lblImageNotSupport.Text = "Post successfully uploaded";

                    
                }
                else
                {
                    lblImageNotSupport.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
                }
            }
        }
    }
}