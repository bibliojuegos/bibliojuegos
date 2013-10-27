using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Libreria.Entity;
using Libreria.Generales;
using System.Data;

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
        public static DataTable sqlLeerTodas(string nombre)
        {
            DataTable dt = new DataTable();
            BD bd = Generales.BD.getInstance();
            //BD bd = new BD();
            String stSql = "select * from cliente where 1=1";

            if (nombre.Trim() != "") stSql += String.Format(" and nombre like '%{0}%'", nombre);
            //if (nombre.Trim() != "") stSql += String.Format("    and nombre like '%{0}%'", nombre);
            //if (apellidoPaterno.Trim() != "") stSql += String.Format("    and ape_pat like '%{0}%'", apellidoPaterno);
            //if (direccion.Trim() != "") stSql += String.Format("    and direccion like '%{0}%'", direccion);

            dt = bd.sqlSelect(stSql);
            return dt;
        }


    }
}
