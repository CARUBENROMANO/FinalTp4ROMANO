using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalTp4
{
    public partial class Cobranzas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader reader = (SqlDataReader)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            if (reader.Read())
            {
                TextBox1.Text = reader["nombre"].ToString();
                TextBox2.Text = reader["apellido"].ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int result = SqlDataSource1.Insert();
            if (result != 0)
            {
                Label1.Text = "Se ha agregado " + result.ToString() + " registros";
                TextBox1.Text = string.Empty; TextBox2.Text = string.Empty;
            }
            else
            {
                Label1.Text = "No se agregaron registros";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int result = SqlDataSource1.Update();
            if (result != 0)
            {
                Label1.Text = "Actualizado " + result.ToString() + " registros";
                TextBox1.Text = string.Empty; TextBox2.Text = string.Empty;
            }
            else
            {
                Label1.Text = "No se actualizado registros";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
            DropDownList2.SelectedValue = GridView1.SelectedRow.Cells[3].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = "idCliente =" + DropDownList1.SelectedValue;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = string.Empty;
            SqlDataSource1.FilterParameters.Clear();
        }
    }
}