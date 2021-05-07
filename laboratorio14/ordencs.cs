using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace laboratorio14
{
    public class ordencs
    {
        string codigo;
        int cantidad;
        double subtotal;

        public string Codigo { get => codigo; set => codigo = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public double Subtotal { get => subtotal; set => subtotal = value; }
    }
}