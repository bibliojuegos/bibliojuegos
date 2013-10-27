using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Libreria.Entity
{
    class Venta
    {

        private int cantidad;
        private double precio;
        private double total;

        public double Total
        {
            get { return total; }
            set { total = value; }
        }

        public double Precio
        {
            get { return precio; }
            set { precio = value; }
        }
        

        public int Cantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }

        public Venta()
        {
            Cantidad = 0;
            Precio = 0;
            Total = 0;
        }

        public Venta(int cantidad, double precio, double total)
        {
            Cantidad = cantidad;
            Precio = precio;
            Total = total;
        }

    }
}
