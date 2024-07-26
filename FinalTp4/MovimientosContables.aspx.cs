using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalTp4
{
    public partial class Deudas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)  //agregar
        {
            int result = SqlDataSource2.Insert();
            if (result != 0)
            {
                Label1.Text = "Se a agregado " + result.ToString() + " registro";
                TextBox1.Text = string.Empty; TextBox2.Text = string.Empty;
                GridView1.DataBind(); // ME SIRVE PARA ACTUALIZAR
            }
            else
            {
                Label1.Text = "No se agregaron registros";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)  //modificar
        {
            int result = SqlDataSource2.Update();
            if (result != 0)
            {
                Label1.Text = "Se a Modificado " + result.ToString() + " registro";
                TextBox1.Text = string.Empty; TextBox2.Text = string.Empty;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No se modificado los registros";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[3].Text;
        }



    }
}