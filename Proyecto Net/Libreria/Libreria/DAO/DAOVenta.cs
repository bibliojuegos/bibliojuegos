using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Libreria.Generales;
using Libreria.Entity;
using System.Data.SqlClient;

namespace Libreria.DAO
{
    class DAOVenta
    {
        public static Boolean sqlSelect(Juego juego)
        {
            try
            {
                String sql = String.Format("select * from juegos where nombre='" +juego.Nombre+ "' and precio='" +juego.Precio+ "'");
                if (!BD.getInstance().sqlCommand(sql))
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }

        }

        public static double calcular(int cantidad, Juego precio,int total)
        {
            //int cantidad = 0;
            //cantidad* precio = total;
        }
     
    }
}
/*
 * Para calcular el total de la compra se necesita:
 * -El producto con su precio (nombre,precio)
 * -La cantidad individual del producto(cantidad)
 * Calculamos el valor total de UN producto:
 * (precio * cantidad) = total individual
 * Este valor lo sumamos a un total global (totalCompra)
 * 
*/