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
public partial class Admin_AnPai : System.Web.UI.Page
{

    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            DropDownList1.DataSource = data.GetDataReader("select * from dbo.Users where Roule='维修人员'");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "TName";
            DropDownList1.DataBind();

         

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlConn update = new SqlConn();


        update.RunSql("update  ShouHou set ShouHouUserID='" + DropDownList1.SelectedValue + "',  ShouHouUserName='" + DropDownList1.SelectedItem.Text + "',ZhuangTai='已分配维修人员'  where id=" + id);

        Alert.AlertAndRedirect("分配成功", "ShouHouManger.aspx");

    }
}
