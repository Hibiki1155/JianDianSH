﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddUserInfo.aspx.cs" EnableEventValidation="false"  ValidateRequest="false"  Inherits="Admin_AddUserInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>基于网络的家电售后服务管理系统</title>
           <link rel="stylesheet" type="text/css" href="style/base.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 100%">
<tr bgcolor=#cccccc><td><center><b>
    添加用户信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 94px; height: 28px; background-color: #ffffff">
                登陆账号：</td>
            <td align="left" colspan="1" style="width: 993px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="TextBox1" runat="server" Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 94px; height: 28px; background-color: #ffffff">
                登陆密码：</td>
            <td align="left" colspan="1" style="width: 993px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 94px; height: 33px; background-color: #ffffff">
                姓名： &nbsp;</td>
            <td align="left" colspan="1" style="width: 993px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtUser" runat="server" Width="101px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUser"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 94px; height: 33px; background-color: #ffffff">
                用户角色：</td>
            <td align="left" colspan="1" style="width: 993px; height: 33px; background-color: #ffffff">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="111px">
                    <asp:ListItem>管理员</asp:ListItem>
                    
                    <asp:ListItem>维修人员</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 94px; height: 33px; background-color: #ffffff">
                所在部门：</td>
            <td align="left" colspan="1" style="width: 993px; height: 33px; background-color: #ffffff">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 94px; height: 33px; background-color: #ffffff">
                联系电话：</td>
            <td align="left" colspan="1" style="width: 993px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="TextBox2" runat="server" Width="209px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 94px; height: 33px; background-color: #ffffff">
                家庭住址：</td>
            <td align="left" colspan="1" style="width: 993px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="TextBox3" runat="server" Width="475px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />&nbsp;</td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td style="height: 24px">

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
