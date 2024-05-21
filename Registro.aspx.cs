using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroLoginAjax
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ru = Request["ru"];   // Recibimos los datos de la funcion registro
            string nombre = Request["name"];
            string apellido = Request["ape"];
            string clave = Request["pass"];

            List<Usuario> lista; // Se crea el list de usuario 

            if (Session["lista"] == null)
                lista = new List<Usuario>();
            else

                lista = (List<Usuario>)Session["lista"];
            lista.Add(new Usuario(ru, nombre, apellido, clave));

            Session["lista"] = lista;
            Response.Write("Registrado");
        }
    }
}