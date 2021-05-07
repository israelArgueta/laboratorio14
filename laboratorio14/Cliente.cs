using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace laboratorio14
{
    public class Cliente
    {
        string nombre;
        string apellido;
        string direccion;
        string nit;

        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Nit { get => nit; set => nit = value; }
    }
}