using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace GesPresta
{
    public partial class EmpleadosCalendar: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCodEmp.Focus();
        }

        DateTime dtHoy = System.DateTime.Now;

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            lblValores.Visible = true;
            lblValores.Text = "VALORES DEL FORMULARIO" +
            "<br/> Código Empleado: " + txtCodEmp.Text +
            "<br/> NIF: " + txtNifEmp.Text +
            "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
            "<br/> Dirección: " + txtDirEmp.Text +
            "<br/> Ciudad: " + txtCiudEmp.Text +
            "<br/> Teléfonos: " + txtTelEmp.Text +
            "<br/> Fecha de Nacimiento: " + txtFnaEmp.Text +
            "<br/> Fecha de Incorporación: " + txtFinEmp.Text +
            "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
            "<br/> Departamento: " + ddlDepEmp.Text +
            "<br/> Fecha de nacimiento: " + Calendar1.SelectedDate.ToShortDateString() +
            "<br/> Fecha de ingreso: " + Calendar2.SelectedDate.ToShortDateString();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtFechNac.Text = Calendar1.SelectedDate.ToShortDateString();


            DateTime fechaNac = Calendar1.SelectedDate.Date;

            ComprobarErrores(fechaNac);

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtFechIng.Text = Calendar2.SelectedDate.ToShortDateString();

            DateTime fechIng = Calendar2.SelectedDate.Date;
            DateTime fechaNac = Calendar1.SelectedDate.Date;

            ComprobarErrores(fechaNac, fechIng);

            TimeSpan diferencia = dtHoy - Calendar2.SelectedDate;
            DateTime fechaMin = new DateTime(1, 1, 1);
            string anyos, meses, dias;

            bool error = ComprobarAntiguedad(fechIng, dtHoy, out anyos, out meses, out dias);
            ComprobarErrores(error, anyos, meses, dias);

        }

        public void ComprobarErrores(DateTime FechNac, DateTime FechIng)
        {
            if(FechIng < FechNac)
            {
                lblError1.Visible = true;
                lblError1.Text = "Error: La fecha de ingreso es menor que la fecha de nacimiento.";
            }
            else
            {
                lblError1.Visible = false;
                lblError1.Text = "";
            }
            if(FechIng > dtHoy)
            {
                lblError2.Visible = true;
                lblError2.Text = "Error: La fecha de ingreso es mayor que la fecha actual.";
            }
            else
            {
                lblError2.Visible = false;
                lblError2.Text = "";
            }
        }
        public void ComprobarErrores(DateTime FechNac)
        {
            if (FechNac > dtHoy)
            {
                lblError3.Visible = true;
                lblError3.Text = "Error: La fecha de nacimiento es mayor que la fecha actual.";
            }
            else
            {
                lblError3.Visible = false;
                lblError3.Text = "";
            }
        }

        public void ComprobarErrores(bool error, string anyos, string meses, string dias)
        {
            if (error)
            {

                lblError2.Visible = true;
                lblError2.Text = "Error la fecha de ingreso es mayor que la actual";
                txtAnyos.Text = "";
                txtMeses.Text = "";
                txtDias.Text = "";
            }
            else
            {
                lblError2.Visible = false;
                lblError2.Text = "";
                txtAnyos.Text = anyos;
                txtMeses.Text = meses;
                txtDias.Text = dias;
            }
        }

        public bool ComprobarAntiguedad(DateTime ing, DateTime hoy, out string anyos, out string meses, out string dias)
        {
            int Anyos = 0;
            int Meses = 0;
            int Dias = 0;

            bool error = false;


            if (ing > hoy)
            {
                error = true;
            }
            else
            {
                while (ing.AddYears(1) <= hoy)
                {
                    Anyos += 1;
                    ing = ing.AddYears(1);
                }
                while (ing.AddMonths(1) <= hoy)
                {
                    Meses += 1;
                    ing = ing.AddMonths(1);
                }

                while (ing.AddDays(1) <= hoy)
                {
                    Dias += 1;
                    ing = ing.AddDays(1);
                }
            }

            anyos = Anyos.ToString();
            meses = Meses.ToString();
            dias = Dias.ToString();

            return error;
        }

        protected void txtFechNac_TextChanged(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = Convert.ToDateTime(txtFechNac.Text);
            Calendar1.VisibleDate = Convert.ToDateTime(txtFechNac.Text);

            DateTime FechNac = Calendar1.SelectedDate.Date;

            ComprobarErrores(FechNac);
        }

        protected void txtFechIng_TextChanged(object sender, EventArgs e)
        {
            Calendar2.SelectedDate = Convert.ToDateTime(txtFechIng.Text);
            Calendar2.VisibleDate = Convert.ToDateTime(txtFechIng.Text);

            DateTime fechIng = Calendar2.SelectedDate.Date;
            DateTime fechaNac = Calendar1.SelectedDate.Date;

            ComprobarErrores(fechaNac, fechIng);

            string anyos, meses, dias;

            bool error = ComprobarAntiguedad(fechIng, dtHoy, out anyos, out meses, out dias);

            ComprobarErrores(error, anyos, meses, dias);
           
        }
    }
}