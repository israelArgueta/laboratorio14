using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace laboratorio14
{
    public class producto
    {
        string codigo;
        string descripcion;
        string foto;
        double precio;
        int cantidad;

        public string Codigo { get => codigo; set => codigo = value; }
        public double Precio { get => precio; set => precio = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public string Foto { get => foto; set => foto = value; }
    }
}