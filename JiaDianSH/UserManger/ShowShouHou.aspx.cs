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

public partial class Admin_ShowShouHou : System.Web.UI.Page
{

    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataReader dr = data.GetDataReader("select * from ShouHou where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {

                txtName.Text = dr["txtName"].ToString();
                txtDs.Text = dr["txtDs"].ToString();
                txtType.Text = dr["txtType"].ToString();
                Label1.Text = dr["ZhuangTai"].ToString();

                Label2.Text = dr["ChuLiXX"].ToString();

                 Label3.Text = dr["ChanPin"].ToString();


            }
        }
    }

  
}
