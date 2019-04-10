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
public partial class Admin_ModifyChanPin : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from ChanPin where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {

                Name.Text = dr["Name"].ToString();
                DanJia.Text = dr["DanJia"].ToString();
                BeiZhu.Text = dr["BeiZhu"].ToString();
                CheXing.Text = dr["CheXing"].ToString();

                TextBox1.Text = dr["CaigouJiaGe"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("update ChanPin set  Name='" + Name.Text + "',DanJia='" + DanJia.Text + "', CheXing='" + CheXing.Text + "',BeiZhu='" + BeiZhu.Text + "',CaigouJiaGe='"+TextBox1.Text+"'  where id=" + Request.QueryString["id"].ToString());
        Alert.AlertAndRedirect("修改成功", "ChanPinManger.aspx");
    }
}
