<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XiuGai.aspx.cs" Inherits="KeHu_XiuGai" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>基于网络的家电售后服务管理系统</title>
     <link rel="stylesheet" href="css/style.css"type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><center><b>
    修改留言</td></tr>
<tr bgcolor=#ffffff><td>
    &nbsp;<table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 239px; height: 28px; background-color: #ffffff">
                标题：</td>
            <td align="left" colspan="1" style="width: 769px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="622px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 239px; height: 33px; background-color: #ffffff">
                留言内容：</td>
            <td align="left" colspan="1" style="width: 769px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtDs" runat="server" Height="104px" ReadOnly="True" TextMode="MultiLine"
                    Width="100%"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
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
