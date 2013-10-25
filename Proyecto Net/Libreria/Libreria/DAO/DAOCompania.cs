using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Libreria.Generales;

namespace Libreria.DAO
{
    public class DAOCompania
    {
        public static Boolean sqlInsertar(Entity.Compania compania)
        {
            try
            {
                String sql = String.Format("insert into compania (idCompania, nombre, idPais) values ('" + compania.IdCompania + "','" + compania.Nombre + "','" + compania.IdPais + "')");
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

        public static Boolean sqlModificar(Entity.Compania compania)
        {
            try
            {
                String sql = String.Format("update compania set nombre='" + compania.Nombre + "', idPais='" + compania.IdPais + "', where idCompania ='" + compania.IdCompania+ "'");
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
