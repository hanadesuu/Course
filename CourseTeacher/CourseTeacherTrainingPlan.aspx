<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseTeacherTrainingPlan.aspx.cs" Inherits="Course.CourseTeacher.CourseTeacherTrainingPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 720px; width: 1280px; margin-left: 300px">
        <div style="float:left; width: 240px; height: 720px; background-color:#23274F">
            <div style="margin-top: 30px; width: 189px; margin-left: 24px; margin-bottom:60px;">
                <h1 style="color:white; margin-left: 1px; width: 246px;">排课老师系统</h1>
            </div>
            <asp:Button ID="Button1" runat="server" Text="个人信息" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button1_Click" Width="240px" />
            <asp:Button ID="Button2" runat="server" Text="培养计划" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button2_Click" Width="240px" />
            <asp:Button ID="Button3" runat="server" Text="时间表" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button3_Click" Width="240px" />
            <asp:Button ID="Button4" runat="server" Text="任课老师" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button4_Click" Width="240px" />
            <asp:Button ID="Button5" runat="server" Text="课表" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button5_Click" Width="240px" />
            <asp:Button ID="Button6" runat="server" Text="领导意见" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button6_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div style="float:left; width: 907px;">
                <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">培养计划</h1>
            </div>
            <div style="float:left; height: 65px; width: 96px; padding-left: 30px;padding-top:30px">
                <asp:Button ID="Button7" runat="server" Text="退出" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" />
            </div>
            <div style="height: 56px; margin-left: 0px; padding-left:35px">
                <div style="float:left; height: 50px; margin:5px;">选择年级：<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="100px">
                    <asp:ListItem Value="高一">高一</asp:ListItem>
                    <asp:ListItem Value="高二">高二</asp:ListItem>
                    <asp:ListItem Value="高三">高三</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px;">选择学年：<asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="100px">
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px;">选择学期：<asp:DropDownList ID="DropDownList3" runat="server" Height="30px" Width="100px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px;">
                    <asp:Button ID="Button8" runat="server" Text="确定" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button8_Click" Width="73px" />
                </div>
                <div style="float:left; height: 50px; margin:5px;">
                    <asp:Button ID="Button9" runat="server" Text="增加" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button9_Click" Width="73px" />
                </div>
                
                
            </div>

            <div style="padding-left: 50px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TrainingPlanNo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="284px" Width="870px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="TrainingPlanNo" HeaderText="TrainingPlanNo" ReadOnly="True" SortExpression="TrainingPlanNo" />
                        <asp:BoundField DataField="SubjectNo" HeaderText="SubjectNo" SortExpression="SubjectNo" />
                        <asp:BoundField DataField="Sjie" HeaderText="Sjie" SortExpression="Sjie" />
                        <asp:BoundField DataField="SGrade" HeaderText="SGrade" SortExpression="SGrade" />
                        <asp:BoundField DataField="SYear" HeaderText="SYear" SortExpression="SYear" />
                        <asp:BoundField DataField="STerm" HeaderText="STerm" SortExpression="STerm" />
                        <asp:BoundField DataField="Stime" HeaderText="Stime" SortExpression="Stime" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT * FROM [Course_TrainingPlan] WHERE (([STerm] = @STerm) AND ([SYear] = @SYear) AND ([SGrade] = @SGrade))" DeleteCommand="DELETE FROM [Course_TrainingPlan] WHERE [TrainingPlanNo] = @TrainingPlanNo" InsertCommand="INSERT INTO [Course_TrainingPlan] ([TrainingPlanNo], [SubjectNo], [Sjie], [SGrade], [SYear], [STerm], [Stime]) VALUES (@TrainingPlanNo, @SubjectNo, @Sjie, @SGrade, @SYear, @STerm, @Stime)" UpdateCommand="UPDATE [Course_TrainingPlan] SET [SubjectNo] = @SubjectNo, [Sjie] = @Sjie, [SGrade] = @SGrade, [SYear] = @SYear, [STerm] = @STerm, [Stime] = @Stime WHERE [TrainingPlanNo] = @TrainingPlanNo">
            <DeleteParameters>
                <asp:Parameter Name="TrainingPlanNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TrainingPlanNo" Type="String" />
                <asp:Parameter Name="SubjectNo" Type="String" />
                <asp:Parameter Name="Sjie" Type="String" />
                <asp:Parameter Name="SGrade" Type="String" />
                <asp:Parameter Name="SYear" Type="String" />
                <asp:Parameter Name="STerm" Type="String" />
                <asp:Parameter Name="Stime" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="STerm" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="SYear" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="SGrade" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="SubjectNo" Type="String" />
                <asp:Parameter Name="Sjie" Type="String" />
                <asp:Parameter Name="SGrade" Type="String" />
                <asp:Parameter Name="SYear" Type="String" />
                <asp:Parameter Name="STerm" Type="String" />
                <asp:Parameter Name="Stime" Type="String" />
                <asp:Parameter Name="TrainingPlanNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [SubjectName], [SubjectNo] FROM [Teacher_SujectNoName]"></asp:SqlDataSource>
    </form>
</body>
</html>
