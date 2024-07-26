using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalTp4
{
    public partial class Resumen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)  //filtrar
        {
           SqlDataSource2.FilterExpression = "idCuenta = " + DropDownList1.SelectedValue;
        }

        protected void Button2_Click(object sender, EventArgs e)  //desfiltar
        {
              SqlDataSource2.FilterExpression = string.Empty;
               SqlDataSource2.FilterParameters.Clear();
        }

    }
}