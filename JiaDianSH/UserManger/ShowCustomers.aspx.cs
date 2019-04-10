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
public partial class Admin_ShowCustomers : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetInfo();
        }
    }
    private void GetInfo()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from Customer where id=" + id);
        dr.Read();
        txtName.Text = dr["txtName"].ToString();
      
        txtAge.Text = dr["txtAge"].ToString();

        txtCD.Text = dr["txtCD"].ToString();
     
        txttel.Text = dr["txttel"].ToString();
        txtKHJB.Text = dr["txtKHJB"].ToString();
      
        txtemal.Text = dr["txtemal"].ToString();
        txtQY.Text = dr["txtQY"].ToString();
        txtaddress.Text = dr["txtaddress"].ToString();
       
        txtDs.Text = dr["txtDs"].ToString();
      
        Image2.ImageUrl = "../Photo/" + dr["txtPic"].ToString();
    }
  
}
