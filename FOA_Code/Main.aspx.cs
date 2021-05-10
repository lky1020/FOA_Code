using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FOA_Code
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Hide Calendar (comment the code to unhide the calendar by default)
            calLeaveDurationFrom.Visible = false;
            calLeaveDurationTo.Visible = false;

        }

        protected void imgBtnCalendarFrom_Click(object sender, ImageClickEventArgs e)
        {
            if (calLeaveDurationFrom.Visible)
            {
                calLeaveDurationFrom.Visible = false;
            }
            else
            {
                calLeaveDurationFrom.Visible = true;
            }

            calLeaveDurationFrom.Attributes.Add("style", "position:absolute");
        }

        protected void calLeaveDurationFrom_SelectionChanged(object sender, EventArgs e)
        {
            txtFromDate.Text = calLeaveDurationFrom.SelectedDate.ToString("dd/MM/yyyy");
            calLeaveDurationFrom.Visible = false;
        }

        protected void imgBtnCalendarTo_Click(object sender, ImageClickEventArgs e)
        {
            if (calLeaveDurationTo.Visible)
            {
                calLeaveDurationTo.Visible = false;
            }
            else
            {
                calLeaveDurationTo.Visible = true;
            }

            calLeaveDurationTo.Attributes.Add("style", "position:absolute");
        }

        protected void calLeaveDurationTo_SelectionChanged(object sender, EventArgs e)
        {
            txtToDate.Text = calLeaveDurationTo.SelectedDate.ToString("dd/MM/yyyy");
            calLeaveDurationTo.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Session
            Session["staffID"] = txtStaffID.Text;

            //Cookie
            HttpCookie cookie = new HttpCookie("Leave");
            cookie["staffID"] = txtStaffID.Text;
            cookie["department"] = ddlDepartment.SelectedValue;
            cookie["from"] = txtFromDate.Text;
            cookie["to"] = txtToDate.Text;
            cookie["application"] = rblApplication.SelectedValue;
            cookie["type"] = rblType.SelectedValue;
            cookie["supervisorName"] = txtSupervisorName.Text;
            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddSeconds(60);

            //Query String
            Response.Redirect("~/Blank.aspx?staffID=" + txtStaffID.Text + "&" +
                                "department=" + ddlDepartment.SelectedValue  + "&" +
                                "from=" + txtFromDate.Text + "&" +
                                "to=" + txtFromDate.Text + "&" +
                                "application=" + rblApplication.SelectedValue + "&" +
                                "type=" + rblType.SelectedValue + "&" +
                                "supervisorName=" + txtSupervisorName.Text + "&", true);
        }
    }
}