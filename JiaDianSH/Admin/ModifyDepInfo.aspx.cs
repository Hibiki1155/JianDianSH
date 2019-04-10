using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class Admin_ModifyDepInfo : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] == null)
            {
                Alert.AlertAndRedirect("对不起您没有登陆", "../Login.aspx");
            }
            else
            {
                GetInfo();
            }
        }
    }

    private void GetInfo()
    {
        SqlDataReader dr = data.GetDataReader("select * from DepInfo where id='" + Request.QueryString["id"].ToString() + "'");
        if (dr.Read())
        {

            name.Text = dr["Name"].ToString();


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            data.RunSql("update DepInfo set Name='" + name.Text + "'  where id='" + Request.QueryString["id"].ToString() + "'");
            Alert.AlertAndRedirect("修改成功", "DepManger.aspx");
        }
        catch
        {
            js.Alertjs("数据错误请重新输入");
        }
    }
}
