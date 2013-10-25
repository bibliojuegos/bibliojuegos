using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Libreria.Entity
{
    public class Empleados
    {

        private int idEmpleado;
        private string rut;
        private String nombre;
        private String apellido;
        private String telefono;
        private int idSucursal;

        public int IdSucursal
        {
            get { return idSucursal; }
            set { idSucursal = value; }
        }

        public int IdEmpleado
        {
            get { return idEmpleado; }
            set { idEmpleado = value; }
        }
       

        public string Rut
        {
            get { return rut; }
            set { rut = value; }
        }
        

        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
       

        public String Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }
        

        public String Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        public Empleados()
        {
            IdEmpleado=0;
            Rut = null;
            Nombre = null;
            Apellido = null;
            Telefono = null;
            IdSucursal = 0;
        }

        public Empleados(int idEmpleado,String rut, String nombre, String apellido, String telefono, int idSucursal)
        {
            IdEmpleado = idEmpleado;
            Rut = rut;
            Nombre = nombre;
            Apellido = apellido;
            Telefono = telefono;
            IdSucursal = idSucursal;
        }


    }
}
