using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection conDatabase = new SqlConnection("Server=dietnyou.database.windows.net;Database=dietNyou_db;Uid=subrata;Pwd=@Aj-Kal406;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string em = emaill.Text;
                string pass = passwordl.Text;
                conDatabase.Open();
                string qry = "select ID,Fname,Lname,Email,Password from dbo.users where Email='" + em + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, conDatabase);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label1.Text = "Sucess......!!";
                    Label2.Text = "";
                    
                    if (System.Web.HttpContext.Current.Session["adminid"] != null)
                    {
                        System.Web.HttpContext.Current.Session.Remove("adminid");
                    }
                    System.Web.HttpContext.Current.Session["id"] = sdr["ID"].ToString();
                    System.Web.HttpContext.Current.Session["fname"] = sdr["Fname"].ToString();
                    System.Web.HttpContext.Current.Session["lname"] = sdr["Lname"].ToString();
                    System.Web.HttpContext.Current.Response.Redirect("~/profile");
                }
                else
                {
                    Label2.Text = "Incorrect E-mail or password..Try again..!!";

                }
                conDatabase.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }        
    }
}