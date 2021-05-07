using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace laboratorio14
{
    public class venta: Cliente
    {
        string codigo;
        int cantidad;
        double precio;
        double subtotal;
        double total;

        public string Codigo { get => codigo; set => codigo = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public double Precio { get => precio; set => precio = value; }
        public double Subtotal { get => subtotal; set => subtotal = value; }
        public double Total { get => total; set => total = value; }
    }
}