using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection conDatabase = new SqlConnection("Server=dietnyou.database.windows.net;Database=dietNyou_db;Uid=subrata;Pwd=@Aj-Kal406;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["adminid"] != null)
            {
                Response.Redirect("~/adminwork");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = adminid.Text;
                string pass = adpass.Text;
                conDatabase.Open();
                string qry = "select AdminId,Password from dbo.admin where AdminId='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, conDatabase);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    if (System.Web.HttpContext.Current.Session["id"] != null)
                    {
                        System.Web.HttpContext.Current.Session.Remove("id");
                        System.Web.HttpContext.Current.Session.Remove("fname");
                        System.Web.HttpContext.Current.Session.Remove("lname");
                    }
                    Label1.Text = "Sucess......!!";
                    Label2.Text = "";
                    System.Web.HttpContext.Current.Session["adminid"] = adminid.Text;
                    Response.Redirect("~/adminwork");
                }
                else
                {
                    Label2.Text = "Incorrect id or password..Try again..!!";

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