﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyChanPin.aspx.cs" Inherits="Admin_ModifyChanPin" %>

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
    修改产品信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 27px; background-color: #ffffff">
                产品名称：</td>
            <td align="left" colspan="1" style="width: 790px; height: 27px; background-color: #ffffff">
                <asp:TextBox ID="Name" runat="server" Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 28px; background-color: #ffffff">
                销售单价：</td>
            <td align="left" colspan="1" style="width: 790px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="DanJia" runat="server" Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DanJia"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr> <tr>
            <td align="left" colspan="4" style="width: 102px; height: 28px; background-color: #ffffff">
                采购价格：</td>
            <td align="left" colspan="1" style="width: 853px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="TextBox1" runat="server" Width="191px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                产品分类： &nbsp;</td>
            <td align="left" colspan="1" style="width: 790px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="CheXing" runat="server" Width="101px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CheXing"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 174px; background-color: #ffffff">
                产品备注：</td>
            <td align="left" colspan="1" style="width: 790px; height: 174px; background-color: #ffffff">
                <asp:TextBox ID="BeiZhu" runat="server" Width="641px" Height="181px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />&nbsp;<asp:Label
                    ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
