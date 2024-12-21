<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AsignarEmpleado.aspx.cs" Inherits="Examen_AlejandroCarvajal.CapaVista.AsignarEmpleado" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Asignar Empleado a Proyecto</title>
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
        select {
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
    </style>
</head>
<body>
    <div class="container">
        <h2>Asignar Empleado a Proyecto</h2>
        <form id="form1" runat="server">
            <label for="ddlEmpleados">Empleado:</label>
            <asp:DropDownList ID="ddlEmpleados" runat="server">
            </asp:DropDownList>

            <label for="ddlProyectos">Proyecto:</label>
            <asp:DropDownList ID="ddlProyectos" runat="server">
            </asp:DropDownList>

   
            <asp:Button ID="btnAsignar" runat="server" Text="Asignar" OnClick="btnAsignar_Click" CssClass="btn btn-primary" />
        </form>
    </div>
</body>
</html>
