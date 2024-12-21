<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarEmpleado.aspx.cs" Inherits="Examen_AlejandroCarvajal.CapaVista.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar Empleado</title>
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
        input, select {
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
        <h2>Registrar Empleado</h2>
        <form id="form1" runat="server">
            <label for="txtNombre">Nombre:</label>
            <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese el nombre" />
            
            <label for="ddlCategoria">Categoría:</label>
            <asp:DropDownList ID="ddlCategoria" runat="server">
                <asp:ListItem Value="Administrador">Administrador</asp:ListItem>
                <asp:ListItem Value="Operario">Operario</asp:ListItem>
                <asp:ListItem Value="Peón">Peón</asp:ListItem>
            </asp:DropDownList>

            <label for="txtCorreo">Correo:</label>
            <asp:TextBox ID="txtCorreo" runat="server" placeholder="Ingrese el correo" />

            <label for="txtTelefono">Teléfono:</label>
            <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ingrese el teléfono" />

            <label for="txtFechaNacimiento">Fecha de Nacimiento:</label>
            <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" />

            <button type="submit" OnClick="btnRegistrar_Click">Registrar</button>

            <asp:Label ID="lblMensaje" runat="server" CssClass="alert" />
        </form>
    </div>
</body>
</html>


