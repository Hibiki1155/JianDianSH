<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowUserInfo.aspx.cs" Inherits="Admin_ShowUserInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>基于网络的家电售后服务管理系统</title>
           <link rel="stylesheet" type="text/css" href="style/base.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><center><b>
    修改用户信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 28px; background-color: #ffffff">
                登陆账号：</td>
            <td align="left" colspan="1" style="width: 972px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="TextBox1" runat="server" Width="191px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                姓名： &nbsp;</td>
            <td align="left" colspan="1" style="width: 972px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtUser" runat="server" Width="101px" ReadOnly="True"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                联系电话：</td>
            <td align="left" colspan="1" style="width: 972px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="TextBox2" runat="server" Width="209px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                &nbsp;所在部门：</td>
            <td align="left" colspan="1" style="width: 972px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="209px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                家庭住址：</td>
            <td align="left" colspan="1" style="width: 972px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="TextBox3" runat="server" Width="475px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                </td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
