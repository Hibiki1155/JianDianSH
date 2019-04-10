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
public partial class Admin_AddChanPin : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

          

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select Name from ChanPin where Name='" + Name.Text + "'");
        if (dr.Read())
        {
            Label1.Text = "产品名称已经存在";

        }
        else
        {
            Label1.Text = "";
            data.RunSql("insert into  ChanPin(Name,DanJia,CheXing,BeiZhu,CaigouJiaGe)values('" + Name.Text + "','" + DanJia.Text + "','" + CheXing.Text + "','" + BeiZhu.Text + "','"+TextBox1.Text+"')");
            Alert.AlertAndRedirect("添加成功", "ChanPinManger.aspx");
        }
    }
}
