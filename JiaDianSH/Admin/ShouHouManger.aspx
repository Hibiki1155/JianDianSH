﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShouHouManger.aspx.cs" Inherits="UserManger_ShouHouManger" %>

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
    售后安排管理</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="5" style="height: 25px; background-color: #ffffff">
                <asp:GridView ID="GvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
                    OnRowDataBound="gvFilms_RowDataBound" PageSize="12" Width="100%">
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                           <asp:TemplateField HeaderText="标题">
                                <ItemTemplate>
                                    <asp:Label ID="txtName" runat="server" Text='<%# Bind("txtName") %>' Width="128px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                                 <asp:TemplateField HeaderText="客户">
                                <ItemTemplate>
                                    <asp:Label ID="KHName" runat="server" Text='<%# Bind("KHName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField> <asp:TemplateField HeaderText="售后类型">
                                <ItemTemplate>
                                    <asp:Label ID="txtType" runat="server" Text='<%# Bind("txtType") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                               <asp:TemplateField HeaderText="产品名称">
                                <ItemTemplate>
                                    <asp:Label ID="ChanPin" runat="server" Text='<%# Bind("ChanPin") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                           <asp:TemplateField HeaderText="申请时间">
                                <ItemTemplate>
                                    <asp:Label ID="AddTime" runat="server" Text='<%# Bind("AddTime","{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                          
                              <asp:TemplateField HeaderText="售后状态">
                                <ItemTemplate>
                                    <asp:Label ID="ZhuangTai" runat="server" Text='<%# Bind("ZhuangTai") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                            
                             
                            <asp:TemplateField HeaderText="查看">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ShowShouHou.aspx?id="+Eval("id") %>'
                                        Text="查看"></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="安排售后人员">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "AnPai.aspx?id="+Eval("id") %>'
                                        Text="安排售后人员" Width="92px"></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="选择">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    选择
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="40px" />
                            </asp:TemplateField>
                        </Columns>
                    <PagerTemplate>
                        <table border="0" width="100%">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                        CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                    共
                                    <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                    第
                                    <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                </td>
                                <td align="right" width="20%">
                                </td>
                            </tr>
                        </table>
                    </PagerTemplate>
                    <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#F6F6F6" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td align="center">
    <asp:Button ID="btnSelectAll" runat="server" OnClick="btnSelectAll_Click" Text="全选" /><asp:Button
        ID="btnDel" runat="server" OnClick="btnDel_Click" OnClientClick="javascript:return confirm('确定删除么？');"
        Text="删除" />
    <a href=# target=_blank><font color=blue></font></a></table></div>
    </form>
    
</body>
</html>
