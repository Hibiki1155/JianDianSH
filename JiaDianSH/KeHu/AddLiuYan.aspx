<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddLiuYan.aspx.cs" Inherits="UserManger_AddLiuYan" %>

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
    添加留言信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table border="0" cellpadding="5" cellspacing="0" width="100%">
        <tr>
            <td align="left" height="2">
                &nbsp; &nbsp; &nbsp; &nbsp;
                <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
                    style="width: 100%">
                    <tr>
                        <td align="left" colspan="4" style="width: 68px; height: 28px; background-color: #ffffff">
                            标题：</td>
                        <td align="left" colspan="1" style="width: 784px; height: 28px; background-color: #ffffff">
                            <asp:TextBox ID="txtName" runat="server" Width="622px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 68px; height: 33px; background-color: #ffffff">
                            内容：</td>
                        <td align="left" colspan="1" style="width: 784px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtDs" runat="server" Height="104px" TextMode="MultiLine" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                            &nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" style="height: 2px">
                &nbsp;</td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
