﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyDepInfo.aspx.cs" Inherits="Admin_ModifyDepInfo" %>

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
    修改部门信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 28px; background-color: #ffffff">
                部门名称：</td>
            <td align="left" colspan="1" style="width: 905px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="name" runat="server" ForeColor="Gray" Width="268px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />&nbsp;</td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
