<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Introduction.aspx.cs" Inherits="Course.排课管理系统" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 720px; width: 1280px; margin-left: 300px; background-color:#AE92D6">
        <div style="float:left; width: 420px; height: 720px;">
            <img style="width: 420px; height: 720px;" src="/Image/left.png" />
        </div>
            <div style="width: 851px; float:left; height: 715px;">
        <div style="float:left; width: 110px; margin-left: 40px; margin-top: 30px;">
            <asp:ImageButton ID="ImageButton1" runat="server" style="height: 50px; width: 50px;" src="/Image/back.png" OnClick="ImageButton1_Click"/>
        </div>
                <h1 style="margin-left: 30px; margin-top: 36px">功能介绍</h1>
        <br />
        <br />
        <div>
            <div style="border: 3px solid #555199; float:left; width: 141px; height: 411px; margin-left: 37px; padding:3px"><h2>学生</h2>
                Student
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                查看自己的课表以及培养方案</div>
            <div style="border: 3px solid #555199; float:left; width: 141px; height: 411px; margin-left: 37px; padding:3px"><h2>排课老师</h2>
                Course<br />
                Scheduling<br />
                Teacher<br />
                <br />
                <br />
                <br />
                查看自己的课表

            </div>
            <div style="border: 3px solid #555199; float:left; width: 141px; height: 411px; margin-left: 37px; padding:3px"><h2>任课老师</h2>
                Teacher
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                1、查看学生的培养计划<br />
                2、选择任课老师、年级和班级<br />
                3、制订课表</div>
            <div style="border: 3px solid #555199; float:left; width: 141px; height: 411px; margin-left: 37px; padding:3px"><h2>领导</h2>
                Leader<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                查看全部学生的课表并提出修改意见</div>
        </div>
    </div>
        </div>
    </form>
</body>
</html>
