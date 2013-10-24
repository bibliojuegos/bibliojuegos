using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Libreria.Entity
{
    public class Juego
    {
        private int idJuego;
        private String nombre;
        private int idPlataforma;
        private String idioma;
        private int ano;
        private String restriccion;
        private int idCompania;
        private int idGenero;
        private int stock;
        private int precio;

        public Juego()
        {

        }

        public Juego(int idJuego, String nombre, int idPlataforma, String idioma, int ano, String restriccion, int idCompania,
             int idGenero, int stock, int precio)
        {
            IdJuego = idJuego;
            Nombre = nombre;
            IdPlataforma = idPlataforma;
            Idioma = idioma;
            Ano = ano;
            Restriccion = restriccion;
            IdCompania = idCompania;
            IdGenero = idGenero;
            Stock = stock;
            Precio = precio;
        }

        public Juego(int idJuego)
        {
            IdJuego = idJuego;
        }

        public int IdJuego
        {
            get { return idJuego; }
            set { idJuego = value; }
        }
        
        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public int IdPlataforma
        {
            get { return idPlataforma; }
            set { idPlataforma = value; }
        }

        public String Idioma
        {
            get { return idioma; }
            set { idioma = value; }
        }

        public int Ano
        {
            get { return ano; }
            set { ano = value; }
        }

        public String Restriccion
        {
            get { return restriccion; }
            set { restriccion = value; }
        }

        public int IdCompania
        {
            get { return idCompania; }
            set { idCompania = value; }
        }

        public int IdGenero
        {
            get { return idGenero; }
            set { idGenero = value; }
        }

        public int Stock
        {
            get { return stock; }
            set { stock = value; }
        }

        public int Precio
        {
            get { return precio; }
            set { precio = value; }
        }
    }
}
