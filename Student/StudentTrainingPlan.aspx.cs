using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Course.Student
{
    public partial class StudentTrainingPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentSelf.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentTrainingPlan.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentCourseSchedule.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("../HomePage.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {

        }
    }
}