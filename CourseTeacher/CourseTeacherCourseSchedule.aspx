<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseTeacherCourseSchedule.aspx.cs" Inherits="Course.CourseTeacher.CourseTeacherCourseSchedule" %>

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
            <asp:Button ID="Button3" runat="server" Text="时间表" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button3_Click" Width="240px" />
            <asp:Button ID="Button4" runat="server" Text="任课老师" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button4_Click" Width="240px" />
            <asp:Button ID="Button5" runat="server" Text="课表" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button5_Click" Width="240px" />
            <asp:Button ID="Button6" runat="server" Text="领导意见" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button6_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div style="float:left; width: 907px;">
                <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">课表&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" Text="排课" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" style="margin-left: 0px" />
                </h1>
            </div>
            <div style="float:left; height: 62px; width: 96px; padding-left: 30px;padding-top:30px">
                <asp:Button ID="Button7" runat="server" Text="退出" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" />
            </div>
            <div style="height: 56px; margin-left: 0px; padding-left:35px; width: 982px;">
                <div style="float:left; height: 50px; margin:5px;">选择年级：<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="100px">
                    <asp:ListItem Value="2018">高一</asp:ListItem>
                    <asp:ListItem Value="2019">高二</asp:ListItem>
                    <asp:ListItem Value="2020">高三</asp:ListItem>
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
                <div style="float:left; height: 50px; margin:5px;">选择班级：<asp:DropDownList ID="DropDownList4" runat="server" Height="30px" Width="100px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px; width: 152px;">
                    <asp:Button ID="Button8" runat="server" Text="确定" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button8_Click" Width="73px" />
                </div>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <div style="float :left; padding-left: 70px;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="130px" BorderColor="Black" BorderWidth="5px" Visible="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="SubjectName" HeaderText="周" SortExpression="SubjectName" ShowHeader="False" >
                            <HeaderStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TeaName" HeaderText="一" SortExpression="TeaName" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" Width="50px" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                <div style="float :left;">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="130px" BorderColor="Black" BorderWidth="5px" Visible="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="SubjectName" HeaderText="周" SortExpression="SubjectName" />
                            <asp:BoundField DataField="TeaName" HeaderText="二" SortExpression="TeaName" />
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

                <div style="float :left;">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="130px" BorderColor="Black" BorderWidth="5px" Visible="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="SubjectName" HeaderText="周" SortExpression="SubjectName" />
                            <asp:BoundField DataField="TeaName" HeaderText="三" SortExpression="TeaName" />
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

                <div style="float :left;">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="130px" BorderColor="Black" BorderWidth="5px" Visible="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="SubjectName" HeaderText="周" SortExpression="SubjectName" />
                            <asp:BoundField DataField="TeaName" HeaderText="四" SortExpression="TeaName" />
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

                <div style="float :left;">
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Width="130px" BorderColor="Black" BorderWidth="5px" Visible="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="SubjectName" HeaderText="周" SortExpression="SubjectName" />
                            <asp:BoundField DataField="TeaName" HeaderText="五" SortExpression="TeaName" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [SubjectName], [TeaName] FROM [View_1] WHERE ([CourseWeek] = @CourseWeek)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="CourseWeek" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName], [SubjectName] FROM [View_1] WHERE ([CourseWeek] = @CourseWeek)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="CourseWeek" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName], [SubjectName] FROM [View_1] WHERE ([CourseWeek] = @CourseWeek)">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="CourseWeek" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [SubjectName], [TeaName] FROM [View_1] WHERE ([CourseWeek] = @CourseWeek)">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="CourseWeek" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName], [SubjectName] FROM [View_1] WHERE ([CourseWeek] = @CourseWeek)">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="CourseWeek" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
