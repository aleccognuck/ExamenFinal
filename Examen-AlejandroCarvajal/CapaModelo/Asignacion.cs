﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Examen_AlejandroCarvajal.CapaModelo
{
    public class Asignacion
    {
        public int AsignacionID { get; set; }
        public int EmpleadoID { get; set; }
        public int ProyectoID { get; set; }
        public DateTime FechaAsignacion { get; set; }
    }
}