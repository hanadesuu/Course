using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Course.CourseTeacher
{
    public partial class CourseTeacherTrainingPlan : System.Web.UI.Page
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
            Response.Redirect("../HomePage.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO [Course_TrainingPlan] VALUES('2018000014','输入科目代码','2019','高二','2020','2','输入学时')";
            SqlDataSource1.InsertCommand = sql;
            SqlDataSource1.Insert();
            GridView1.DataSourceID = SqlDataSource1.ID;
            GridView1.DataBind();
        }
    }
}