<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Examen_AlejandroCarvajal.CapaVista.WebForm1" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Empleados y Proyectos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px;
        }
        .nav {
            background-color: #333;
            overflow: hidden;
        }
        .nav a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            display: inline-block;
        }
        .nav a:hover {
            background-color: #ddd;
            color: black;
        }
        .content {
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Gestión de Empleados y Proyectos</h1>
    </div>

    <div class="nav">
        <a href="RegistrarEmpleado.aspx">Registrar Empleado</a>
        <a href="RegistroProyecto.aspx">Registrar Proyecto</a>
        <a href="AsignarEmpleado.aspx">Asignar Empleado</a>
    </div>

    <div class="content">
        <h2>Bienvenido a la gestión de empleados y proyectos.</h2>
        <p>Este es un sitio de demostración donde puedes registrar empleados, proyectos, y asignar empleados a proyectos.</p>
    </div>
</body>
</html>
