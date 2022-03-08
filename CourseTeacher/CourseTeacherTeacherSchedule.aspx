<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseTeacherTeacherSchedule.aspx.cs" Inherits="Course.CourseTeacher.CourseTeacherTeacherSchedule" %>

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
            <asp:Button ID="Button4" runat="server" Text="任课老师" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button4_Click" Width="240px" />
            <asp:Button ID="Button5" runat="server" Text="课表" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button5_Click" Width="240px" />
            <asp:Button ID="Button6" runat="server" Text="领导意见" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button6_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div style="float:left; width: 907px;">
                <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">任课老师</h1>
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
                <div style="float:left; height: 50px; margin:5px;">
                    <asp:Button ID="Button8" runat="server" Text="确定" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button8_Click" Width="73px" />
                </div>
            </div>
            <div style="width: 642px; margin-left: 176px">
                语文：<asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数学：<asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource2" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList></br>
                英语：<asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="SqlDataSource3" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 生物：<asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource4" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList></br>
                化学：<asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource13" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 物理：<asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource5" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList></br>
                信息：<asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource6" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 音乐：<asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource7" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList>
                </br>
                体育：<asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource8" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 政治：<asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="SqlDataSource9" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList></br>
                历史：<asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="SqlDataSource10" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地理：<asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource11" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList></br>
                美术：<asp:DropDownList ID="DropDownList17" runat="server" DataSourceID="SqlDataSource12" DataTextField="TeaName" DataValueField="TeaName" Height="35px" Width="150px"></asp:DropDownList>
                
            </div>
            
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT DISTINCT [TeaName] FROM [V_TAS]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT DISTINCT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
            <SelectParameters>
                <asp:Parameter DefaultValue="MA" Name="SubjectNo" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT DISTINCT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="RT" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT DISTINCT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="EG" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="HS" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="BG" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="PH" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="IT" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="RT" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="PE" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="PO" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="GG" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TeaName] FROM [V_TAS] WHERE ([SubjectNo] = @SubjectNo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="CH" Name="SubjectNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
