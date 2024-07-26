<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="MovimientosContables.aspx.cs" Inherits="FinalTp4.Deudas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Fecha"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="id">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp; INGRESE MONTO:
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Monto" style="margin-left: 0px"></asp:TextBox>
        &nbsp;&nbsp; TIPO:&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                <asp:BoundField DataField="idCuenta" HeaderText="idCuenta" SortExpression="idCuenta" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
<p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP4_2024ConnectionString %>" DeleteCommand="DELETE FROM [Cuentas] WHERE [id] = @id" InsertCommand="INSERT INTO [Cuentas] ([descripcion]) VALUES (@descripcion)" SelectCommand="SELECT * FROM [Cuentas]" UpdateCommand="UPDATE [Cuentas] SET [descripcion] = @descripcion WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="descripcion" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TP4_2024ConnectionString %>" DeleteCommand="DELETE FROM [MovimientosContables] WHERE [id] = @id" InsertCommand="INSERT INTO [MovimientosContables] ([fecha], [monto], [tipo], [idCuenta]) VALUES (@fecha, @monto, @tipo, @idCuenta)" SelectCommand="SELECT * FROM [MovimientosContables]" UpdateCommand="UPDATE [MovimientosContables] SET [fecha] = @fecha, [monto] = @monto, [tipo] = @tipo, [idCuenta] = @idCuenta WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="monto" Type="Decimal" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="idCuenta" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="monto" Type="Decimal" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="idCuenta" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Debe ingresar fecha valida" ForeColor="#FF3300" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/(\d{4})$"></asp:RegularExpressionValidator>
    <p>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Debe ingresar &quot;D&quot; o &quot;H&quot;" ForeColor="Red" ValidationExpression="^(D|H)$"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Completar el campo fecha" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Completar el campo monto" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
    </p>
</asp:Content>
