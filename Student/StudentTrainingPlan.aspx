<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentTrainingPlan.aspx.cs" Inherits="Course.Student.StudentTrainingPlan" %>

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
                <h1 style="color:white; margin-left: 1px; width: 246px;">学生系统</h1>
            </div>
            <asp:Button ID="Button1" runat="server" Text="个人信息" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button1_Click" Width="240px" />
            <asp:Button ID="Button2" runat="server" Text="培养计划" BackColor="#706E97" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button2_Click" Width="240px" />
            <asp:Button ID="Button3" runat="server" Text="课表" BackColor="#23274F" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="80px" OnClick="Button3_Click" Width="240px" />
        </div>
        <div style="width: 1040px; float:left; height: 720px; background-color:#AE92D6">
            <div style="float:left; width: 907px;">
                <h1 style="margin-left: 30px; margin-top: 36px; width: 198px;">培养计划</h1>
            </div>
            <div style="float:left; height: 65px; width: 96px; padding-left: 30px;padding-top:30px">
                <asp:Button ID="Button7" runat="server" Text="退出" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="39px" OnClick="Button7_Click" Width="73px" />
            </div>
            <div style="height: 56px; margin-left: 0px; padding-left:35px">
                <div style="float:left; height: 50px; margin:5px;">选择届：<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="140px">
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px;">选择学年：<asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="140px">
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px;">选择学期：<asp:DropDownList ID="DropDownList3" runat="server" Height="30px" Width="140px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList></div>
                <div style="float:left; height: 50px; margin:5px;">
                    <asp:Button ID="Button8" runat="server" Text="确定" BackColor="#23274F" BorderStyle="None" Font-Size="Large" ForeColor="White" Height="30px" OnClick="Button8_Click" Width="73px" />
                </div>
            </div>
            <div style="padding-left: 80px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TrainingPlanNo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="284px" Width="695px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="TrainingPlanNo" HeaderText="TrainingPlanNo" ReadOnly="True" SortExpression="TrainingPlanNo" />
                        <asp:BoundField DataField="SubjectNo" HeaderText="SubjectNo" SortExpression="SubjectNo" />
                        <asp:BoundField DataField="SJie" HeaderText="SJie" SortExpression="SJie" />
                        <asp:BoundField DataField="SGrade" HeaderText="SGrade" SortExpression="SGrade" />
                        <asp:BoundField DataField="SYear" HeaderText="SYear" SortExpression="SYear" />
                        <asp:BoundField DataField="STerm" HeaderText="STerm" SortExpression="STerm" />
                        <asp:BoundField DataField="STime" HeaderText="STime" SortExpression="STime" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT [TrainingPlanNo], [SubjectNo], [SJie], [SGrade], [SYear], [STerm], [STime] FROM [Course_TrainingPlan] WHERE (([SJie] = @SJie) AND ([SYear] = @SYear) AND ([STerm] = @STerm))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="SJie" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="SYear" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="STerm" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
