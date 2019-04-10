<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyCustomers.aspx.cs" Inherits="UserManger_ModifyCustomers" %>

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
    修改客户信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 90px; height: 28px; background-color: #ffffff">
                    客户姓名：</td>
            <td align="left" colspan="1" style="width: 398px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="txtName" runat="server" Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td align="left" colspan="1" style="width: 115px; color: #000000; height: 28px; background-color: #ffffff">
                    性别： &nbsp;&nbsp;</td>
            <td align="left" colspan="1" style="width: 354px; height: 28px; background-color: #ffffff">
                <asp:DropDownList ID="txtSex" runat="server" Width="44px">
                    <asp:ListItem Selected="True">男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 90px; height: 33px; background-color: #ffffff">
                    年龄：</td>
            <td align="left" colspan="1" style="width: 398px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtAge" runat="server" Width="41px"></asp:TextBox></td>
            <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
                    重要程度：</td>
            <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
                <asp:RadioButtonList ID="txtCD" runat="server" Height="2px" RepeatDirection="Horizontal"
                    Width="229px">
                    <asp:ListItem Value="非常重要">非常重要</asp:ListItem>
                    <asp:ListItem Value="重要">重要</asp:ListItem>
                    <asp:ListItem Value="普通">普通</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 90px; height: 33px; background-color: #ffffff">
                    联系电话：</td>
            <td align="left" colspan="1" style="width: 398px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txttel" runat="server" Width="259px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txttel"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
                    客户级别：</td>
            <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
                <asp:DropDownList ID="txtKHJB" runat="server" Width="154px">
                    <asp:ListItem>VIP客户</asp:ListItem>
                    <asp:ListItem>普通客户</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 90px; height: 33px; background-color: #ffffff">
                    电子邮件：</td>
            <td align="left" colspan="1" style="width: 398px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtemal" runat="server" Width="256px"></asp:TextBox></td>
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
        <tr>
            <td align="left" colspan="4" style="width: 90px; height: 33px; background-color: #ffffff">
                    通讯地址：</td>
            <td align="left" colspan="1" style="width: 398px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtaddress" runat="server" Width="289px"></asp:TextBox></td>
            <td align="left" colspan="1" style="width: 115px; height: 33px; background-color: #ffffff">
            </td>
            <td align="left" colspan="1" style="width: 354px; height: 33px; background-color: #ffffff">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 90px; height: 33px; background-color: #ffffff">
                    客户描述：</td>
            <td align="left" colspan="3" style="height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtDs" runat="server" Height="43px" TextMode="MultiLine" Width="783px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 90px; height: 33px; background-color: #ffffff">
                    照片：</td>
            <td align="left" colspan="3" style="height: 33px; background-color: #ffffff">
                <asp:Image ID="Image2" runat="server" Height="129px" Width="138px" /><br />
                <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                    id="file1" runat="server" class="inputBox" style="width: 159px" type="file" />
                <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click"
                    Text="上传照片" />
                <asp:Label ID="Label1" runat="server" Visible="False" Width="87px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="7" style="height: 25px; background-color: #ffffff">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />&nbsp;</td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
