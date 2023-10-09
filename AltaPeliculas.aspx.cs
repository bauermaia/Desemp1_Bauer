using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desemp1_Bauer
{
    public partial class Alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            if (txtNombrePelicula.Text != string.Empty && drDirector.SelectedValue != string.Empty)
            {
                SqlDataSource1.Insert();
            
                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
                arch.WriteLine("Alta Pelicula");
                arch.WriteLine("Nombre:" + this.txtNombrePelicula.Text);
                arch.WriteLine("Director Id:" + this.drDirector.SelectedValue);
                arch.WriteLine("------------------");
                arch.Close();
                this.lblResultado.Text = "Datos registrados";

               
                txtNombrePelicula.Text = string.Empty;

            }
            else
            {
                lblResultado.Text = "No se pueden dejar campos en blanco";
            }
        }
    }
}