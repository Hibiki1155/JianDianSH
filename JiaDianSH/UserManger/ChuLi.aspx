<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChuLi.aspx.cs" Inherits="UserManger_ChuLi" %>

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
    处理售后服务信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
            style="width: 100%">
            <tr>
                <td align="left" colspan="4" style="height: 28px; background-color: #ffffff; width: 102px;">
                    标题：</td>
                <td align="left" colspan="1" style="width: 911px; height: 28px; background-color: #ffffff">
                    <asp:TextBox ID="txtName" runat="server" Width="622px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
         
            <tr style="color: #000000">
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 102px;">
                    类型：</td>
                <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                    <asp:TextBox ID="txtType" runat="server" Width="190px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtType"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 102px;">
                   内容：</td>
                <td align="left" colspan="1" style="height: 33px; background-color: #ffffff; width: 911px;">
                    <asp:TextBox ID="txtDs" runat="server" Height="104px" TextMode="MultiLine" Width="867px"></asp:TextBox></td>
            </tr>
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                售后状态：</td>
            <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    
                            <asp:ListItem>等待处理</asp:ListItem>
                    <asp:ListItem>处理中</asp:ListItem>
                    <asp:ListItem>处理完成</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                售后备注：</td>
            <td align="left" colspan="1" style="width: 911px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="TextBox1" runat="server" Height="104px" TextMode="MultiLine" Width="867px"></asp:TextBox></td>
        </tr>
            <tr>
                <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="处理" /></td>
            </tr>
        </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
