﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desemp1_Bauer
{
    public partial class BajaDirectores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBaja_Click(object sender, EventArgs e)
        {
            

            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/OperacionesABM.txt", true);
            arch.WriteLine("Eliminación de director");
            arch.WriteLine("Nombre:" + this.GridView1.SelectedRow.Cells[1].Text);
            arch.WriteLine("Apellido:" + this.GridView1.SelectedRow.Cells[2].Text);
            arch.WriteLine("------------------");
            arch.Close();
            SqlDataSource1.Delete();
            lblResultado.Text = "Se eliminó el director";
        }
    }
}