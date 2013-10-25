using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Libreria.Entity
{
    public class Cliente
    {

        private int idCliente;
        private String nombre;
        private String apellido;
        private int edad;
        private int idVentas;
        private String telefono;

        public int IdVentas
        {
            get { return idVentas; }
            set { idVentas = value; }
        }
        

        public int IdCliente
        {
            get { return idCliente; }
            set { idCliente = value; }
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

        public int Edad
        {
            get { return edad; }
            set { edad = value; }
        }

        public String Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        public Cliente()
        {
            IdCliente=0;
            Nombre = null;
            Apellido = null;
            Edad = 0;
            IdVentas = 0;
            Telefono = null;
        }

        public Cliente(int idCliente, String nombre, String apellido,int edad,int idVentas, String telefono)
        {
            IdCliente = idCliente;
            Nombre = nombre;
            Apellido = apellido;
            Edad = edad;
            IdVentas = idVentas;
            Telefono = telefono;
        }


   }
}
