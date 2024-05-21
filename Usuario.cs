using Microsoft.Owin;
using Owin;
using System;
using System.Threading.Tasks;

[assembly: OwinStartup(typeof(RegistroLoginAjax.Usuario))]

namespace RegistroLoginAjax
{
    public class Usuario
    {
        private string ru;
        private string nombre;
        private string apellido;
        private string contra;

        public Usuario()
        {
        }

        public Usuario(string ru, string nombre, string apellido, string contra)
        {
            this.ru = ru;
            this.nombre = nombre;
            this.apellido = apellido;
            this.contra = contra;
        }

        public string RU { get => ru; set => ru = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Contra { get => contra; set => contra = value; }
    }
}

       