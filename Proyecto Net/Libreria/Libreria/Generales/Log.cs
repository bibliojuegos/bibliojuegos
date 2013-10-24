using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace LibTelefonica.Generales
{
    public class Log
    {
        static Boolean swRutea = true;
        public static void rutea(String msg)
        {
            if(swRutea)
                File.AppendAllText("c:/rutea.txt",DateTime.Now.ToString("yyyy/MM/dd")   +":"+  msg + "\n");
        }
    }
}
