<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="laboratorio14.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Red" Text="Productos:"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button4" runat="server" Text="ver carrito" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Codigo:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="191px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="162px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Existencia:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Precio:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="193px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aceptar" Width="115px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="#CC0000" Text="Editar:"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
            <Columns>
                <asp:ButtonField Text="Editar" />
                <asp:ButtonField Text="Comprar" />
                <asp:ImageField DataImageUrlField="Foto" HeaderText="Imagenes">
                </asp:ImageField>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                <asp:BoundField DataField="Cantidad" HeaderText="Existencia" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" Text="Cambiar" OnClick="Button2_Click" />
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Precio:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Existencia:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button3" runat="server" Text="Guardar" OnClick="Button3_Click" />
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="ventas"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label10" runat="server" Text="Unidades:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;
    </p>
    <p>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="agregar" />
    </p>
    <p>
        <asp:Label ID="Label11" runat="server" Font-Size="XX-Large" Text="Carrito de ventas"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView2" runat="server">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:Button ID="Button6" runat="server" Text="Factura de pago" />
    </p>
    <p>
        <asp:Label ID="Label12" runat="server" Text="SUBTOTAL"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label13" runat="server" Font-Size="XX-Large" Text="FACTURACION Y PAGO"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label14" runat="server" Text="Nit"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label15" runat="server" Text="Nombre"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label16" runat="server" Text="Direccion"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button7" runat="server" Text="Pagar" />
    </p>
    <p>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Efectivo" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Tarjeta" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Text="aceptar " />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button9" runat="server" Text="confirmar" />
    </p>
    <p>
        <asp:Label ID="Label17" runat="server" Text="N. DE TARJETA"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label18" runat="server" Text="FECHA DE VENCIMIENTO"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="CODIGO DE SEGURIDAD"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label20" runat="server" Font-Size="XX-Large" Text="PEDIDOS Y ACTUALIZACION"></asp:Label>
    </p>
    <p>
        ESTADO DEL PEDIDO</p>
    <p>
        <asp:RadioButton ID="RadioButton3" runat="server" Text="El Pedido Está Siendo Procesado" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton4" runat="server" Text="En espera" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton5" runat="server" Text="En camino" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton6" runat="server" Text="Entregado" />
    </p>
    <p>
        <asp:Button ID="Button10" runat="server" Text="Actualizar" />
    </p>
    <p>
        <asp:GridView ID="GridView3" runat="server">
            <Columns>
                <asp:CommandField SelectText="Actualizar Estado" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
