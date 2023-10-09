using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desemp1_Bauer
{
    public partial class Modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombrePelicula.Text = GridView2.SelectedRow.Cells[1].Text;
            drDirector.SelectedValue = GridView2.SelectedRow.Cells[2].Text;

        }

        protected void btnModificarPelicula_Click(object sender, EventArgs e)
        {
            if (txtNombrePelicula.Text != string.Empty)
            {
                SqlDataSource1.Update();

                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
                arch.WriteLine("Modificación película");
                arch.WriteLine("Nombre:" + this.txtNombrePelicula.Text);
                arch.WriteLine("Director id:" + this.drDirector.SelectedValue);
                arch.WriteLine("------------------");
                arch.Close();
                this.lblResultado.Text = "Datos Modificados";

                
                txtNombrePelicula.Text = string.Empty;
            }
            else
            {
                lblResultado.Text = "No puede ingresar campos vacíos";
            }
        }
    }
}