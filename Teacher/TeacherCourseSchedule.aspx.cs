using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Course.Teacher
{
    public partial class TeacherCourseSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherSelf.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherCourseSchedule.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("../HomePage.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = true;
            GridView3.Visible = true;
            GridView4.Visible = true;
            GridView5.Visible = true;

        }

        protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}