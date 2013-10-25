using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Libreria.Entity;
using Libreria.Generales;

namespace Libreria.DAO
{
    public class DAOCliente
    {

        public static Boolean sqlInsertar(Entity.Cliente cliente)
        {
            try
            {
                String sql = String.Format("insert into cliente (idCliente, nombre, apellido, edad, idVentas ,telefono) values ('" + cliente.IdCliente + "','" + cliente.Nombre + "','" + cliente.Apellido + "','" + cliente.Edad + "','"+cliente.IdVentas+"','" + cliente.Telefono + "')");
                if (!BD.getInstance().sqlCommand(sql))
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch(Exception)
            {
                return false;
            }

        }

        public static Boolean sqlModificar(Entity.Cliente cliente)
        {
            try
            {
                String sql = String.Format("update cliente set nombre='" + cliente.Nombre + "', apellido='" + cliente.Apellido + "', edad='" + cliente.Edad + ", idVentas='"+cliente.IdVentas+"', telefono='" + cliente.Telefono + "' where idCliente ='" + cliente.IdCliente + "'");
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


    }
}
