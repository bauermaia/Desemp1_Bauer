using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desemp1_Bauer
{
    public partial class ModificacionDirectores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombre.Text = GridView1.SelectedRow.Cells[1].Text;
            txtApellido.Text = GridView1.SelectedRow.Cells[2].Text;

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text != string.Empty && txtApellido.Text != string.Empty) { 
            SqlDataSource1.Update();
            
            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
            arch.WriteLine("Modificación director");
            arch.WriteLine("Nombre:" + this.txtNombre.Text);
            arch.WriteLine("Apellido:" + this.txtApellido.Text);
            arch.WriteLine("------------------");
            arch.Close();
            this.lblResultado.Text = "Datos Modificados";

            txtApellido.Text = string.Empty;
            txtNombre.Text = string.Empty;
            } else
            {
                lblResultado.Text = "No puede ingresar campos vacíos";
            }
        }
    }
}