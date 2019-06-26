using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection conDatabase = new SqlConnection("Server=dietnyou.database.windows.net;Database=dietNyou_db;Uid=subrata;Pwd=@Aj-Kal406;");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (System.Web.HttpContext.Current.Session["id"] != null)
            {
                Response.Redirect("~/profile");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string cmd_cnt;

                conDatabase.Open();
                cmd_cnt = "insert into dbo.users(Fname,Lname,Email,Password) values('" + fname.Text + "','" + lname.Text + "','" + email.Text + "','" + pass.Text + "')";


                SqlCommand db_cmd = new SqlCommand(cmd_cnt, conDatabase);
                SqlDataReader dbread = db_cmd.ExecuteReader();

                /*if (dbread.NextResult())
                {
                    Label1.Text = "Sign up successful";
                    //Response.Redirect("Confirm.aspx");
                }

                if (conDatabase.State == System.Data.ConnectionState.Open)
                {
                    Label1.Text="database connected";
                }*/
                conDatabase.Close();
                Response.Redirect("~/Login");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}