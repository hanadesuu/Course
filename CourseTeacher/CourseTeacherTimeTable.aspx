<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseTeacherTimeTable.aspx.cs" Inherits="Course.CourseTeacher.CourseTeacherTimeTable" %>

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
            <asp:Button ID="Button2" runat="server" Text="培养计划" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button2_Click" Width="240px" />
            <asp:Button ID="Button3" runat="server" Text="时间表" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button3_Click" Width="240px" />
            <asp:Button ID="Button4" runat="server" Text="任课老师" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button4_Click" Width="240px" />
            <asp:Button ID="Button5" runat="server" Text="课表" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button5_Click" Width="240px" />
            <asp:Button ID="Button6" runat="server" Text="领导意见" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button6_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div>
                <div style="float:left; width: 907px;">
                    <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">时间表</h1>
                </div>
                <div style="float:left; height: 67px; width: 96px; padding-left: 30px;padding-top:30px">
                    <asp:Button ID="Button7" runat="server" Text="退出" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" />
                </div>
            </div>
            <div style="height: 60px; padding-left:35px; padding-bottom:5px; width:850px;">
                <div style="float:left; height: 50px; margin:5px;">选择星期：<asp:DropDownList ID="DropDownList4" runat="server" Height="30px" Width="100px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px;">
                    <asp:Button ID="Button8" runat="server" Text="确定" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button8_Click" Width="73px" />
                </div>
                <div style="float:left; height: 50px; margin:5px;">
                    <asp:Button ID="Button9" runat="server" Text="增加" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button9_Click" Width="73px" />
                </div>
            </div>

            <div style="margin-left: 223px">
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="CourseNo,CourseWeek">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CourseStartTime" HeaderText="CourseStartTime" SortExpression="CourseStartTime" />
                        <asp:BoundField DataField="CourseEndTime" HeaderText="CourseEndTime" SortExpression="CourseEndTime" />
                        <asp:BoundField DataField="CourseNo" HeaderText="CourseNo" SortExpression="CourseNo" ReadOnly="True" />
                        <asp:BoundField DataField="CourseWeek" HeaderText="CourseWeek" ReadOnly="True" SortExpression="CourseWeek" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [CourseStartTime], [CourseEndTime], [CourseNo], [CourseWeek] FROM [Course_TimeTable] WHERE ([CourseWeek] = @CourseWeek)" DeleteCommand="DELETE FROM [Course_TimeTable] WHERE [CourseNo] = @CourseNo AND [CourseWeek] = @CourseWeek" InsertCommand="INSERT INTO [Course_TimeTable] ([CourseStartTime], [CourseEndTime], [CourseNo], [CourseWeek]) VALUES (@CourseStartTime, @CourseEndTime, @CourseNo, @CourseWeek)" UpdateCommand="UPDATE [Course_TimeTable] SET [CourseStartTime] = @CourseStartTime, [CourseEndTime] = @CourseEndTime WHERE [CourseNo] = @CourseNo AND [CourseWeek] = @CourseWeek">
                    <DeleteParameters>
                        <asp:Parameter Name="CourseNo" Type="String" />
                        <asp:Parameter Name="CourseWeek" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Time" Name="CourseStartTime" />
                        <asp:Parameter DbType="Time" Name="CourseEndTime" />
                        <asp:Parameter Name="CourseNo" Type="String" />
                        <asp:Parameter Name="CourseWeek" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList4" Name="CourseWeek" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Time" Name="CourseStartTime" />
                        <asp:Parameter DbType="Time" Name="CourseEndTime" />
                        <asp:Parameter Name="CourseNo" Type="String" />
                        <asp:Parameter Name="CourseWeek" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
