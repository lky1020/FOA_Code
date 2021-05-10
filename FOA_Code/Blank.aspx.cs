using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FOA_Code
{
    public partial class Blank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                //Session
                txtStaffID.Text = Session["staffID"].ToString();
                Session.Timeout = 1;

                //Application
                txtNumVisitor.Text = Application["intVisitors"].ToString();

                //Cookie
                HttpCookie cookie = Request.Cookies["Leave"];

                if (cookie != null)
                {
                    txtStaffIDCookie.Text = cookie["staffID"];
                    txtDepartmentCookie.Text = cookie["department"];
                    txtFromCookie.Text = cookie["from"];
                    txtToCookie.Text = cookie["to"];
                    txtApplicationCookie.Text = cookie["application"];
                    txtTypeCookie.Text = cookie["type"];
                    txtSupervisorNameCookie.Text = cookie["supervisorName"];
                }

                //QueryString
                txtStaffIDQuery.Text = Request.QueryString["staffID"];
                txtDepartmentQuery.Text = Request.QueryString["department"];
                txtFromQuery.Text = Request.QueryString["from"];
                txtToQuery.Text = Request.QueryString["to"];
                txtApplicationQuery.Text = Request.QueryString["application"];
                txtTypeQuery.Text = Request.QueryString["type"];
                txtSupervisorNameQuery.Text = Request.QueryString["supervisorName"];

            }
        }
    }
}