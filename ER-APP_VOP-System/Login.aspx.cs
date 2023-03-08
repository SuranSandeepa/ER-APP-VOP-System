using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ER_APP_VOP_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Ltbun.Text.ToLower() == "admin" && Ltbpw.Text == "12345")
            {
                Session["un"] = "Admin";
                Session["pw"] = Ltbpw.Text;

                Response.Redirect("HomePage.aspx");
            }
            else if (Ltbun.Text.ToLower() == "er" && Ltbpw.Text == "123")
            {
                Session["un"] = "ER";
                Session["pw"] = Ltbpw.Text;

                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Login');</script>");
            }
        }
    }
}