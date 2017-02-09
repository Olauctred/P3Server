using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Empleados : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime hoy = System.DateTime.Now;
        txtCodEmp.Focus();
    }

    protected void rblSexEmp_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void cmdEnviar_Click(object sender, EventArgs e)
    {
        lblValores.Visible = true;
        lblValores.Text = "VALORES DEL FORMULARIO" +
            "<br/> Código Empleado: " + txtCodEmp.Text +
            "<br/> NIF: " + txtNifEmp.Text +
            "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
            "<br/> Dirección: " + txtDirEmp.Text +
            "<br/> Ciudad: " + txtCiuEmp.Text +
            "<br/> Teléfonos: " + txtTelEmp.Text +
            "<br/> Fecha de Nacimiento: " + txtFnaEmp.Text +
            "<br/> Fecha de Incorporación: " + txtFinEmp.Text +
            "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
            "<br/> Departamento: " + ddlDepEmp.Text;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtFnaEmp.Text = Calendar1.SelectedDate.ToShortDateString();
        checkFecha();
        calcularAnt();
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtFinEmp.Text = Calendar2.SelectedDate.ToShortDateString();
        checkFecha();
        calcularAnt();
    }

    protected void txtFnaEmp_TextChanged(object sender, EventArgs e)
    {
        DateTime curDate = DateTime.Now;
        if (DateTime.TryParse(txtFnaEmp.Text, out curDate))
        {
            Calendar1.SelectedDate = Convert.ToDateTime(txtFnaEmp.Text);
            Calendar1.VisibleDate = Calendar1.SelectedDate;
        }
        checkFecha();
        calcularAnt();
    }

    protected void txtFinEmp_TextChanged(object sender, EventArgs e)
    {
        DateTime curDate = DateTime.Now;
        if (DateTime.TryParse(txtFinEmp.Text, out curDate))
        {
            Calendar2.SelectedDate = Convert.ToDateTime(txtFinEmp.Text);
            Calendar2.VisibleDate = Calendar2.SelectedDate;
        }
        checkFecha();
        calcularAnt();
    }

    private void checkFecha()
    {
        if(txtFinEmp.Text != "" && txtFnaEmp.Text != "")
        {
            DateTime hoy = System.DateTime.Now;
            if (Calendar1.SelectedDate.Date > Calendar2.SelectedDate.Date)
            {
                error1.Visible = true;
            }
            else { error1.Visible = false; }
            if (Calendar2.SelectedDate.Date > hoy)
            {
                error2.Visible = true;
            }
            else { error2.Visible = false; }
        }        
    }

    private void calcularAnt()
    {
        if (txtFinEmp.Text != "" && txtFnaEmp.Text != "" )
        {
            DateTime hoy = System.DateTime.Now;
            TimeSpan ant = Calendar2.SelectedDate.Date - hoy.Date;

            int yy = (ant.Days / 360);
            int mm = ((ant.Days % 360) / 30);
            int dd = ((ant.Days % 360) % 30);

            if(yy <= 0 && mm <= 0 && dd <= 0 )
            {
                i1.Value = (yy*-1).ToString();
                i2.Value = (mm*-1).ToString();
                i3.Value = (dd*-1).ToString();
            }
            else
            {
                i1.Value = "";
                i2.Value = "";
                i3.Value = "";
            }
            
        }
    }
}