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

public partial class Admin_ShowLiuYan : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from LiuYanInfo where id=" + id);
            dr.Read();
            txtName.Text = dr["txtName"].ToString();
            txtDs.Text = dr["txtDs"].ToString();
            HuiFu.Text = dr["HuiFu"].ToString();

            txtType.Text = dr["AddTime"].ToString();


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update LiuYanInfo set HuiFuDate='" + DateTime.Now + "',HuiFu='" + HuiFu.Text + "',IsHuiFu='是' where id=" + id);
        Alert.AlertAndRedirect("回复成功", "LiuYanManger.aspx");

    }
}
