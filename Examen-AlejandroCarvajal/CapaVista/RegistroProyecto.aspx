<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroProyecto.aspx.cs" Inherits="Examen_AlejandroCarvajal.CapaVista.RegistroProyecto" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar Proyecto</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            margin-bottom: 5px;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
        }
        button:hover {
            background-color: #218838;
        }
        .alert {
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 4px;
            text-align: center;
        }
        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
        }
        .alert-success {
            background-color: #d4edda;
            color: #155724;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registrar Proyecto</h2>
        <form id="form1" runat="server">
            <label for="txtCodigo">Código:</label>
            <asp:TextBox ID="txtCodigo" runat="server" placeholder="Ingrese el código" />

            <label for="txtNombreProyecto">Nombre:</label>
            <asp:TextBox ID="txtNombreProyecto" runat="server" placeholder="Ingrese el nombre del proyecto" />

            <label for="txtFechaInicio">Fecha de Inicio:</label>
            <asp:TextBox ID="txtFechaInicio" runat="server" TextMode="Date" />

            <label for="txtFechaFin">Fecha de Fin:</label>
            <asp:TextBox ID="txtFechaFin" runat="server" TextMode="Date" />

            <button type="submit" OnClick="btnRegistrarProyecto_Click">Registrar Proyecto</button>

            <asp:Label ID="lblMensaje" runat="server" CssClass="alert" />
        </form>
    </div>
</body>
</html>

