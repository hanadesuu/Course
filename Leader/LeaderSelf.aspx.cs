using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Course.Leader
{
    public partial class LeaderSelf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LeaderSelf.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LeaderTrainingPlan.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LeaderCourseSchedule.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("../HomePage.aspx");
        }
    }
}