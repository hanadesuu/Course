using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Course.CourseTeacher
{
    public partial class CourseTeacherCourseSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseTeacherSelf.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseTeacherTrainingPlan.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseTeacherTimeTable.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseTeacherTeacherSchedule.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseTeacherCourseSchedule.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseTeacherSuggestion.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = true;
            GridView3.Visible = true;
            GridView4.Visible = true;
            GridView5.Visible = true;

        }

    }
}