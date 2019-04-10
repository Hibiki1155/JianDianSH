<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="DegnLu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>家电售后服务管理系统</title>
        <link rel="stylesheet" href="css/font.css">
	<link rel="stylesheet" href="css/xadmin.css">
  
</head>
<body class="login-bg">
    <form id="form1" runat="server">
    <div class="login">
        <div class="message">家电售后服务管理系统</div>
        <div id="darkbannerwrap"></div>
        
      
            <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" id="Text1" runat="server" >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input" id="Password1" runat="server">
            <hr class="hr15">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>管理员</asp:ListItem>
                             <asp:ListItem>维修人员</asp:ListItem>
                             <asp:ListItem>客户</asp:ListItem>
        </asp:DropDownList>
             
            <hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit" id="Submit1" onserverclick="Submit1_ServerClick" runat="server">
            <hr class="hr20" >
         
    </div>

    </form>
</body>
</html>
