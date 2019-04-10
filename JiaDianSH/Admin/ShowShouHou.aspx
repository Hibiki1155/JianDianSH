<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowShouHou.aspx.cs" Inherits="Admin_ShowShouHou" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>合同信息</title>
           <link rel="stylesheet" type="text/css" href="style/base.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><center><b>
    售后服务信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
            style="width: 100%">
            <tr>
                <td align="left" colspan="4" style="height: 28px; background-color: #ffffff; width: 80px;">
                    标题：</td>
                <td align="left" colspan="1" style="width: 911px; height: 28px; background-color: #ffffff">
                    <asp:Label ID="txtName" runat="server" ></asp:Label>
                    </td>
               
            </tr>
         
            <tr style="color: #000000">
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 80px;">
                    类型：</td>
                <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                    <asp:Label ID="txtType" runat="server"  ></asp:Label>
                    </td>
            </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 80px; height: 33px; background-color: #ffffff">
                产品：</td>
            <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 80px; height: 33px; background-color: #ffffff">
                状态：</td>
            <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                <asp:Label ID="Label1" runat="server"  ></asp:Label></td>
        </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 80px;">
                   内容：</td>
                <td align="left" colspan="1" style="height: 33px; background-color: #ffffff; width: 911px;">
                    <asp:Label ID="txtDs" runat="server"  ></asp:Label></td>
            </tr>
        <tr>
            <td align="left" colspan="4" style="width: 80px; height: 33px; background-color: #ffffff">
                处理人：</td>
            <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 80px; height: 33px; background-color: #ffffff">
                处理信息：</td>
            <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                <asp:Label ID="Label2" runat="server" ></asp:Label></td>
        </tr>
            <tr>
                <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
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
