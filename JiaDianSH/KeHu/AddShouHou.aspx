<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShouHou.aspx.cs" Inherits="UserManger_AddShouHou" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>售后服务申请信息</title>
           <link rel="stylesheet" type="text/css" href="style/base.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><center><b>
    售后服务申请信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
            style="width: 100%">
            <tr>
                <td align="left" colspan="4" style="height: 28px; background-color: #ffffff; width: 113px;">
                    售后标题：</td>
                <td align="left" colspan="1" style="width: 750px; height: 28px; background-color: #ffffff">
                    <asp:TextBox ID="txtName" runat="server" Width="622px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
         
            <tr style="color: #000000">
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 113px;">
                    类型：</td>
                <td align="left" colspan="1" style="width: 750px; height: 33px; background-color: #ffffff">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>产品保养</asp:ListItem>
                       <asp:ListItem>产品调换</asp:ListItem>
                        <asp:ListItem>产品维修</asp:ListItem>
                        <asp:ListItem>其他服务</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 113px; height: 33px; background-color: #ffffff">
                选择产品：</td>
            <td align="left" colspan="1" style="width: 750px; height: 33px; background-color: #ffffff">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
                </asp:DropDownList></td>
        </tr>
            <tr>
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 113px;">
                    问题描述：</td>
                <td align="left" colspan="1" style="height: 33px; background-color: #ffffff; width: 750px;">
                    <asp:TextBox ID="txtDs" runat="server" Height="104px" TextMode="MultiLine" Width="807px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="申请" /></td>
            </tr>
        </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
