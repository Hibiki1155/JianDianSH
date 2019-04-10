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
public partial class DegnLu : System.Web.UI.Page
{

    SqlConn data = new SqlConn();
    SqlDataReader dr;
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


        }

    }
 
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "客户")
        {
            if (Text1.Value == "" && Password1.Value == "")
            {
                Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


            }
            else
            {
                dr = data.GetDataReader("select * from  dbo.Customer where LoginName='" + Text1.Value + "'and LoginPWd='" + Password1.Value + "' ");
                if (dr.Read())
                {
                    Session["Name"] = dr["txtName"].ToString();

                    Session["UserId"] = dr["id"].ToString();


                    Response.Redirect("KeHu/index.html");

                }
                else
                {
                    Alert.AlertAndRedirect("登陆失败请重新登陆！", "Login.aspx");
                }
            }

        }
        else
        {
            if (Text1.Value == "" && Password1.Value == "")
            {
                Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


            }
            else
            {
                dr = data.GetDataReader("select * from  Users where Name='" + Text1.Value + "'and pwd='" + Password1.Value + "' and Roule='" + DropDownList1.SelectedValue + "'");
                if (dr.Read())
                {
                    Session["Name"] = dr["Name"].ToString();
                    Session["Roule"] = dr["Roule"].ToString();
                    Session["UserId"] = dr["id"].ToString();
                    Session["DepId"] = dr["DepId"].ToString();
                    if (Session["Roule"].ToString() == "维修人员")
                    {

                        Response.Redirect("UserManger/index.html");
                    }

                    if (Session["Roule"].ToString() == "管理员")
                    {
                        Response.Redirect("Admin/index.html");
                    }
                }
                else
                {
                    Alert.AlertAndRedirect("登陆失败请重新登陆！", "Login.aspx");
                }
            }
        }


    }
}
