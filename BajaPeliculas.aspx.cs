using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desemp1_Bauer
{
    public partial class Baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
            arch.WriteLine("Eliminación de película");
            arch.WriteLine("Nombre:" + this.GridView1.SelectedRow.Cells[1].Text);
            arch.WriteLine("Apellido:" + this.GridView1.SelectedRow.Cells[3].Text);
            arch.WriteLine("------------------");
            arch.Close();
            lblResultado.Text = "Se eliminó la película";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = "idDirector = " + DropDownList1.SelectedValue;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = string.Empty;
            SqlDataSource1.FilterParameters.Clear();    
        }
    }
}