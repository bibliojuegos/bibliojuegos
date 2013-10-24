using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Libreria.Generales;
using System.Data.SqlClient;

namespace Libreria.DAO
{
    public class DAOJuego
    {
        public static Boolean sqlInsert(Entity.Juego j1)
        {
            try
            {

                String insert = String.Format("insert into Juegos(IdJuego, Nombre, IdPlataforma, Idioma, Año, restriccion, IdCompañia, IdGenero, stock, precio) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')", j1.IdJuego, j1.Nombre, j1.IdPlataforma, j1.Idioma, j1.Ano, j1.Restriccion, j1.IdCompania, j1.IdGenero, j1.Stock, j1.Precio);
                if (!BD.getInstance().sqlCommand(insert))
                {
                    return false;
                    //LibTelefonica.Generales.Log.rutea("error insertar" + insert);
                }
                else return true;
            }
            catch (SqlException)
            {
                return false;
            }
        }

        public static Boolean sqlDelete(String id)
        {
            try
            {
                if (!BD.getInstance().sqlCommand("delete from Juegos where IdJuego = '"+id+"'"))
                    return false;
                else return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static Boolean sqlUpdate(Entity.Juego j1)
        {
            try
            {
                String update = String.Format("update Juegos set Nombre = '{1}', IdPlataforma = '{2}', Idioma = '{3}',Año = '{4}',restriccion='{5}',IdCompañia='{6}',IdGenero='{7}',stock='{8}',precio='{9}' where IdJuego = '{0}')", j1.IdJuego, j1.Nombre, j1.IdPlataforma, j1.Idioma, j1.Ano, j1.Restriccion, j1.IdCompania, j1.IdGenero, j1.Stock, j1.Precio);
                if (!BD.getInstance().sqlCommand(update))
                    return false;
                else return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
