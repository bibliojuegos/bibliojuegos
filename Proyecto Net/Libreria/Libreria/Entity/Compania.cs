using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Libreria.Entity
{
    public class Compania
    {
        private int idCompania;
        private String nombre;
        private int idPais;

        public Compania()
        {
            IdCompania = 0;
            Nombre = String.Empty;
            IdPais = 0;
        }

        public Compania(int idCompania, String nombre, int idPais)
        {
            IdCompania = idCompania;
            Nombre = nombre;
            IdPais = idPais;
        }

        public int IdCompania
        {
            get { return idCompania; }
            set { idCompania = value; }
        }

        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public int IdPais
        {
            get { return idPais; }
            set { idPais = value; }
        }
    }
}
