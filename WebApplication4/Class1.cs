using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        MySqlConnection conDatabase = new MySqlConnection("Server=localhost;Database=database_dietnyou;Uid=root;Pwd=root;");
        //string cmd_cnt;

        conDatabase.Open();
        /*cmd_cnt = "insert into users values";
        string strName;

        MySqlCommand db_cmd = new MySqlCommand(cmd_cnt, conDatabase);
        MySqlDataReader dbread = db_cmd.ExecuteReader();

        if (dbread.Read())
        {
            strName = dbread[0].ToString();
            Label1.Text = strName.ToString();

        }
        else
        /*{
            return;
        }*/
        if (conDatabase.State == System.Data.ConnectionState.Open)
        {
            Console.WriteLine("database connected");
        }
        conDatabase.Close();

    }
}