<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hoadon.aspx.cs" Inherits="WebApplication1.hoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="amount" HeaderText="amount" 
                SortExpression="amount" />
            <asp:BoundField DataField="KhachHang_id" HeaderText="KhachHang_id" 
                SortExpression="KhachHang_id" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            amount:
            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
            <br />
            KhachHang_id:
            <asp:TextBox ID="KhachHang_idTextBox" runat="server" 
                Text='<%# Bind("KhachHang_id") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EmptyDataTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </EmptyDataTemplate>
        <InsertItemTemplate>
            id:
            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
            <br />
            amount:
            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
            <br />
            KhachHang_id:
            <asp:TextBox ID="KhachHang_idTextBox" runat="server" 
                Text='<%# Bind("KhachHang_id") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            amount:
            <asp:Label ID="amountLabel" runat="server" Text='<%# Bind("amount") %>' />
            <br />
            KhachHang_id:
            <asp:Label ID="KhachHang_idLabel" runat="server" 
                Text='<%# Bind("KhachHang_id") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" 
        DeleteCommand="DELETE FROM [HoaDon] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [HoaDon] ([id], [amount], [KhachHang_id]) VALUES (@id, @amount, @KhachHang_id)" 
        SelectCommand="SELECT * FROM [HoaDon]" 
        UpdateCommand="UPDATE [HoaDon] SET [amount] = @amount, [KhachHang_id] = @KhachHang_id WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="KhachHang_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="KhachHang_id" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
