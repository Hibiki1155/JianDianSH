﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnPai.aspx.cs" Inherits="Admin_AnPai" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>修改售后服务信息</title>
           <link rel="stylesheet" type="text/css" href="style/base.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><center><b>
    安排售后人员</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
            style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                选择售后人员：</td>
            <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                </asp:DropDownList></td>
        </tr>
            <tr>
                <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="安排" /></td>
            </tr>
        </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
