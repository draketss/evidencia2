<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="RegistroLoginAjax.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery-3.7.1.min.js"></script>
    <script src="Funciones.js"></script>
    <script>
        $(document).ready(function () { // Verifica cuando la página esté lista
            $("#btnRegistrar").click(function (e) { // Llama al btnRegistrar cuando das click
                e.preventDefault(); // Para enviar los valores registrados
            });
        }); 
       
    </script>
    <title></title>
    <link href="Estilos3.css" rel="stylesheet" />
</head>
<body>
    <center><h1><font face="Arial"></font></h1></center>
    <br /><br />
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Registro único:</td>
                    <td><asp:TextBox ID="txtRegistro" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Nombre:</td>
                    <td><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td>Apellido:</td>
                    <td><asp:TextBox ID="txtApellido" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Contraseña:</td>
                    <td><asp:TextBox ID="txtContra" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>


                <tr>
                    <td colspan="2" align="center">
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClientClick="registro()" CssClass="btn" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>