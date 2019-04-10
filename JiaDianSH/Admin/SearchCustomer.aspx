<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchCustomer.aspx.cs" Inherits="Admin_SearchCustomer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>查询客户信息</title>
           <link rel="stylesheet" type="text/css" href="style/base.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><center><b>
    查询客户信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
            style="width: 100%">
            <tr>
                <td align="left" colspan="4" style="height: 28px; background-color: #ffffff; width: 84px;">
                    客户姓名：</td>
                <td align="left" colspan="1" style="width: 457px; height: 28px; background-color: #ffffff">
                    <asp:TextBox ID="txtName" runat="server" Width="191px"></asp:TextBox>
                    </td>
                <td align="left" colspan="1" style="width: 115px; height: 28px; background-color: #ffffff">
                    重要程度：</td>
                <td align="left" colspan="1" style="width: 354px; height: 28px; background-color: #ffffff">
                    <asp:RadioButtonList ID="txtCD" runat="server"  Height="2px"
                        RepeatDirection="Horizontal" Width="229px">
                        <asp:ListItem Value="非常重要">非常重要</asp:ListItem>
                        <asp:ListItem Value="重要">重要</asp:ListItem>
                        <asp:ListItem Value="普通">普通</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
         
            <tr style="color: #000000">
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 84px;">
                    性别： &nbsp;&nbsp;</td>
                <td align="left" colspan="1" style="width: 457px; height: 33px; background-color: #ffffff">
                    <asp:DropDownList ID="txtSex" runat="server" Width="44px">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
                <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
                    所在城市：</td>
                <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
                    <asp:DropDownList ID="txtQY" runat="server" Width="152px">
                        <asp:ListItem>北京市</asp:ListItem>
                        <asp:ListItem>天津市</asp:ListItem>
                        <asp:ListItem>上海市</asp:ListItem>
                        <asp:ListItem>重庆市</asp:ListItem>
                        <asp:ListItem>河北省</asp:ListItem>
                        <asp:ListItem>黑龙江省</asp:ListItem>
                        <asp:ListItem>山西省</asp:ListItem>
                        <asp:ListItem>河南省</asp:ListItem>
                        <asp:ListItem>江苏省</asp:ListItem>
                        <asp:ListItem>湖北省</asp:ListItem>
                        <asp:ListItem>浙江省</asp:ListItem>
                        <asp:ListItem>内蒙古自治区</asp:ListItem>
                        <asp:ListItem>安徽省</asp:ListItem>
                        <asp:ListItem>辽宁省</asp:ListItem>
                        <asp:ListItem>福建省</asp:ListItem>
                        <asp:ListItem>河南省</asp:ListItem>
                        <asp:ListItem>吉林省</asp:ListItem>
                        <asp:ListItem>江西省</asp:ListItem>
                        <asp:ListItem>广东省</asp:ListItem>
                        <asp:ListItem>云南省</asp:ListItem>
                        <asp:ListItem>陕西省</asp:ListItem>
                        <asp:ListItem>海南省</asp:ListItem>
                        <asp:ListItem>甘肃省</asp:ListItem>
                        <asp:ListItem>四川省</asp:ListItem>
                        <asp:ListItem>青海省</asp:ListItem>
                        <asp:ListItem>贵州省</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr style="color: #000000">
                <td align="left" colspan="4" style="height: 33px; background-color: #ffffff; width: 84px;">
                    客户级别：</td>
                <td align="left" colspan="1" style="width: 457px; height: 33px; background-color: #ffffff">
                    <asp:DropDownList ID="txtKHJB" runat="server" Width="154px">
                        <asp:ListItem>VIP客户</asp:ListItem>
                        <asp:ListItem>普通客户</asp:ListItem>
                    </asp:DropDownList></td>
                <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
                    </td>
                <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
                    </td>
            </tr>
            <tr>
                <td align="center" colspan="7" style="height: 25px; background-color: #ffffff">
                    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" /></td>
            </tr>
        </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
