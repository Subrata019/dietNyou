using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection conDatabase = new SqlConnection("Server=dietnyou.database.windows.net;Database=dietNyou_db;Uid=subrata;Pwd=@Aj-Kal406;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["adminid"] == null)
            {
                Response.Redirect("~/admin");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string em = emaill.Text;
                conDatabase.Open();
                string qry = "select Fname,Lname,Email,Password from dbo.users where Email='" + em + "'";
                SqlCommand cmd = new SqlCommand(qry, conDatabase);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label1.Text = "Found User!!";
                    Label2.Text = "";
                    fname.Text = sdr["Fname"].ToString();
                    lname.Text = sdr["Lname"].ToString();
                    email.Text = sdr["Email"].ToString();
                    password.Text = sdr["Password"].ToString();
                }
                else
                {
                    Label1.Text = "";
                    Label2.Text = "Incorrect Email or User Doesn't Exist";
                }
                conDatabase.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (email.Text != "")
                {
                    string em = email.Text;
                    conDatabase.Open();
                    string qry = "delete from dbo.users where Email='" + em + "'";
                    SqlCommand cmd = new SqlCommand(qry, conDatabase);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    Label1.Text = "User deleted";
                    Label2.Text = "";
                    fname.Text = "";
                    lname.Text = "";
                    email.Text = "";
                    password.Text = "";
                }
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/adminwork");
        }
    }
}