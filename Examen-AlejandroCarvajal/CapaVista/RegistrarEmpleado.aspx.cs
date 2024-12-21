using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_AlejandroCarvajal.CapaVista
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string categoria = ddlCategoria.SelectedValue;
            string correo = txtCorreo.Text;
            string telefono = txtTelefono.Text;
            string fechaNacimiento = txtFechaNacimiento.Text;

            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(correo) || string.IsNullOrEmpty(telefono) || string.IsNullOrEmpty(fechaNacimiento))
            {
                
                lblMensaje.Text = "Por favor, complete todos los campos.";
                lblMensaje.CssClass = "alert alert-danger";
                return;
            }

            lblMensaje.Text = "Empleado registrado con éxito.";
            lblMensaje.CssClass = "alert alert-success";
        }
    }
}
