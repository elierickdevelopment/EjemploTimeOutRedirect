<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EjemploTimeOutRedirect.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script type="text/javascript">

         var myVar;
         var state = false;

         function Iniciar_Recuento_Sesion() {
             
             if (state == false) {
                 clearTimeout(myVar);
                 myVar = setTimeout(function () {
                     alert("La sesión ha caducado.");
                     window.location.href = "https://www.google.com";
                 }, 10000);
             }
             document.getElementById("CuentaAtras").innerHTML = myVar;
         }

         //1800000

         function Detect_keypress(event) {
             var key = event.keyCode || event.which;
             if (key > 0) {
                 Iniciar_Recuento_Sesion();
             }
         }

    </script>

        <style>
            html, body {
        height: 100%;
        margin: 0;
        font-family: 'Montserrat', 'sans-serif';
}
    </style>
</head>
<body style="background-color:gray" onkeypress="Detect_keypress(event)" onmousemove="Iniciar_Recuento_Sesion()" onload="Iniciar_Recuento_Sesion()"" >
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               <h3 id='CuentaAtras' style="color: #0000FF">
                    &nbsp;</h3>
            </ContentTemplate>

        </asp:UpdatePanel>
                
    </form>
</body>
</html>
