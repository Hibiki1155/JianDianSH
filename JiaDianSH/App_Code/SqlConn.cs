using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
/// <summary>
/// SqlConn 的摘要说明
/// </summary>
public class SqlConn
{
    public static readonly string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    private SqlConnection con;
    private SqlCommand cmd;

    private SqlDataAdapter sda;
    private SqlDataReader sdr;
    private DataSet ds;
    private DataView dv;

    public static SqlConnection getConnection()//定义成静态的，很重要！
    {
        return new SqlConnection(connstring);
    }
    /// <summary>
    /// 打开数据库连接
    /// </summary>
    public void OpenDataBase()
    {
        con = new SqlConnection(connstring);
        con.Open();
    }
    /// <summary>
    /// 关闭数据库连接
    /// </summary>
    public void CloseDataBase()
    {

        con.Close();
        con.Dispose();

    }
    /// <summary>
    /// 返回DataSet数据集
    /// </summary>
    /// <param name="SqlStr">数据库查询字符串</param>
    /// <returns>dataset</returns>
    public DataSet GetDs(string SqlStr, string TableName)
    {
        OpenDataBase();
        sda = new SqlDataAdapter(SqlStr, con);
        ds = new DataSet();
        sda.Fill(ds, TableName);
        CloseDataBase();
        return ds;
    }
    public DataView GetDv(string SqlStr)
    {
        OpenDataBase();
        sda = new SqlDataAdapter(SqlStr, con);
        ds = new DataSet();
        sda.Fill(ds);
        dv = ds.Tables[0].DefaultView;
        CloseDataBase();
        return dv;

    }
    /// <summary>
    /// 返回Datareader对象
    /// </summary>
    /// <param name="Sqlstr">查询字符串</param>
    /// <returns>返回值</returns>
    public SqlDataReader GetDataReader(string Sqlstr)
    {
        OpenDataBase();
        cmd = new SqlCommand(Sqlstr, con);
        sdr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);

        return sdr;


    }

    /// <summary>
    /// 执行Sql语句方法没有返回值
    /// </summary>
    /// <param name="SqlStr">传入的查询参数</param>
    public void RunSql(string SqlStr)
    {
        OpenDataBase();
        cmd = new SqlCommand(SqlStr, con);
        cmd.ExecuteNonQuery();
        CloseDataBase();
    }
    /// <summary>
    /// 返回查询结果的首行首列
    /// </summary>
    /// <param name="SqlStr">查询字符串</param>
    /// <returns>返回结果</returns>
    public string ReturnSql(string SqlStr)
    {
        OpenDataBase();
        string ReturnSql = "";
        try
        {
            cmd = new SqlCommand(SqlStr, con);
            ReturnSql = cmd.ExecuteScalar().ToString();
        }
        catch { }
        CloseDataBase();
        return ReturnSql;
    }
    public void DataCom(string sqlstr)
    {
        OpenDataBase();
        SqlCommand sqlcom = new SqlCommand(sqlstr, con);
        sqlcom.ExecuteNonQuery();
        CloseDataBase();
    }
    public void gvDataBind(GridView gv, string sqlstr)
    {
        OpenDataBase();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, con);
        DataSet myds = new DataSet();
        myda.Fill(myds);
        gv.DataSource = myds;
        gv.DataBind();
        CloseDataBase();
    }
    public void dlDataBind(DataList dl, string sqlstr)
    {
        OpenDataBase();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, con);
        DataSet myds = new DataSet();
        myda.Fill(myds);
        dl.DataSource = myds;
        dl.DataBind();
        CloseDataBase();
    }
    public void ddlDataBind(DropDownList ddl, string sqlstr, string dvf)
    {
        OpenDataBase();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, con);
        DataSet myds = new DataSet();
        myda.Fill(myds);
        ddl.DataSource = myds;
        ddl.DataValueField = dvf;
        ddl.DataBind();
        CloseDataBase();
    }

}
