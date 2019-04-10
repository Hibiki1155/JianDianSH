<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowCustomers.aspx.cs" Inherits="Admin_ShowCustomers" %>

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
    查看客户信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
            style="width: 100%">
            <tr>
                <td align="left" colspan="4" style="height: 28px; background-color: #ffffff; width: 90px;">
                    客户姓名：</td>
                <td align="left" colspan="1" style="width: 457px; height: 28px; background-color: #ffffff">
                    <asp:TextBox ID="txtName" runat="server" Width="191px" ReadOnly="True"></asp:TextBox>
                    </td>
                <td align="left" colspan="1" style="width: 115px; height: 28px; background-color: #ffffff">
                    性别： &nbsp;&nbsp;</td>
                <td align="left" colspan="1" style="width: 354px; height: 28px; background-color: #ffffff">
                    </td>
            </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 90px;">
                    年龄：</td>
                <td align="left" colspan="1" style="width: 457px; height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txtAge" runat="server" Width="41px" ReadOnly="True"></asp:TextBox></td>
                <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
                    重要程度：</td>
                <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txtCD" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 90px;">
                    联系电话：</td>
                <td align="left" colspan="1" style="width: 457px; height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txttel" runat="server" Width="259px" ReadOnly="True"></asp:TextBox>
                    </td>
                <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
                    客户级别：</td>
                <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txtKHJB" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 90px;">
                    电子邮件：</td>
                <td align="left" colspan="1" style="width: 457px; height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txtemal" runat="server" Width="256px" ReadOnly="True"></asp:TextBox></td>
                <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
                    所在城市：</td>
                <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txtQY" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 90px;">
                    通讯地址：</td>
                <td align="left" colspan="1" style="width: 457px; height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txtaddress" runat="server" Width="447px" ReadOnly="True"></asp:TextBox></td>
                <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
                    </td>
                <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
                    </td>
            </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 90px;">
                    客户描述：</td>
                <td align="left" colspan="3" style="height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txtDs" runat="server" Height="104px" TextMode="MultiLine" Width="907px" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 90px;">
                    照片：</td>
                <td align="left" colspan="3" style="height: 33px; background-color: #ffffff">
                    <asp:Image ID="Image2" runat="server" Height="129px" Width="138px" /></td>
            </tr>
            <tr>
                <td align="center" colspan="7" style="height: 25px; background-color: #ffffff">
                    &nbsp;&nbsp;</td>
            </tr>
        </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
