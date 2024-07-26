<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Cuentas.aspx.cs" Inherits="FinalTp4.Resumen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="id" Height="16px" Width="126px">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filtrar" Width="85px" style="height: 29px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="27px" OnClick="Button2_Click" Text="Desfiltrar" Width="86px" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
            <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
            <asp:BoundField DataField="idCuenta" HeaderText="idCuenta" SortExpression="idCuenta" />
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
    &nbsp;&nbsp;
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
        <br />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
