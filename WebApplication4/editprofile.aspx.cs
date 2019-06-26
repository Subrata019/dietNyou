using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection conDatabase = new SqlConnection("Server=dietnyou.database.windows.net;Database=dietNyou_db;Uid=subrata;Pwd=@Aj-Kal406;");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (System.Web.HttpContext.Current.Session["id"] == null)
            {
                Response.Redirect("~/Login");
            }
            if (!Page.IsPostBack)
            {
                try
                {
                    string id;
                    id = System.Web.HttpContext.Current.Session["id"].ToString();
                    conDatabase.Open();
                    string qry = "select ID,Fname,Lname,Email from dbo.users where ID='" + id + "'";
                    SqlCommand cmd = new SqlCommand(qry, conDatabase);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Fname.Text = sdr["Fname"].ToString();
                        Lname.Text = sdr["Lname"].ToString();
                        Email.Text = sdr["Email"].ToString();
                    }
                    conDatabase.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/profile");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string id;
                id = System.Web.HttpContext.Current.Session["id"].ToString();
                conDatabase.Open();
                string qry = "update Users set Fname='" + Fname.Text + "',Lname='" + Lname.Text + "',Email='" + Email.Text + "' where ID='" + id + "'";
                SqlCommand cmd = new SqlCommand(qry, conDatabase);
                SqlDataReader sdr = cmd.ExecuteReader();
                conDatabase.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            Response.Redirect("~/profile");
        }
    }
}