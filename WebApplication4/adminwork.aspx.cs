using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["adminid"] == null)
            {
                Response.Redirect("~/admin");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/updateuser");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/deleteuser");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}