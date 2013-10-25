using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Libreria.Entity;
using Libreria.Generales;

namespace Libreria.DAO
{
     public class DAOEmpleados
    {
         //Insertar
         public static Boolean sqlInsertar(Entity.Empleados empleados)
         {
             try
             {
                 String sql = String.Format("Insert into empleado (idempleado, rut, nombre, apellido, telefono) values ('" +empleados.IdEmpleado+ "','"+empleados.Rut+"','" +empleados.Nombre+ "','" +empleados.Apellido+ "','" +empleados.Telefono+ "')");
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

         //Modificar
         public static Boolean sqlModificar(Entity.Empleados empelados)
         {
             try
             {
                 String sql = String.Format("Update empleados set rut='" +empelados.Rut+ "', nombre='" +empelados.Nombre+ "', apellido='" +empelados.Apellido+ ", Telefono='" + empelados.Telefono + "' where idEmpleado ='" + empelados.IdEmpleado + "'");
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
