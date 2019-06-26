using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["id"] != null)
            {
                prof.Visible = true;
                log.Visible = true;
                Label1.Text = "  " + System.Web.HttpContext.Current.Session["fname"].ToString();
                Label1.Text = Label1.Text + " " + System.Web.HttpContext.Current.Session["lname"].ToString();
            }
            else if (System.Web.HttpContext.Current.Session["adminid"] != null)
            {
                prof.Visible = true;
                log.Visible = true;
                Label1.Text = "  " + System.Web.HttpContext.Current.Session["adminid"].ToString();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            prof.Visible = false;
            log.Visible = false;
            if (System.Web.HttpContext.Current.Session["id"] != null)
            {
                System.Web.HttpContext.Current.Session.Remove("id");
                System.Web.HttpContext.Current.Session.Remove("fname");
                System.Web.HttpContext.Current.Session.Remove("lname");
                
            }
            else if (System.Web.HttpContext.Current.Session["adminid"] != null)
            {
                System.Web.HttpContext.Current.Session.Remove("adminid");
            }
            Response.Redirect("~/default");
        }
    }
}