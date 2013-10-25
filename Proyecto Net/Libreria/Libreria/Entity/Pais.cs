using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Libreria.Entity
{
    public class Pais
    {
        private int idPais;
        private String nombre;

        public int IdPais
        {
            get { return idPais; }
            set { idPais = value; }
        }
        

        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public Pais()
        {
            IdPais = 0;
            Nombre = null;
        }

        public Pais(int idPais, String nombre)
        {
            IdPais = idPais;
            Nombre = nombre;
        }

    }
}
