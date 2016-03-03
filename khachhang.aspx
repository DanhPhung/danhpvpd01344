<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="khachhang.aspx.cs" Inherits="WebApplication1.khachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
            SortExpression="id" />
        <asp:BoundField DataField="full_name" HeaderText="full_name" 
            SortExpression="full_name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" 
    DeleteCommand="DELETE FROM [KhachHang] WHERE [id] = @id" 
    InsertCommand="INSERT INTO [KhachHang] ([id], [full_name], [email]) VALUES (@id, @full_name, @email)" 
    SelectCommand="SELECT * FROM [KhachHang]" 
    UpdateCommand="UPDATE [KhachHang] SET [full_name] = @full_name, [email] = @email WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="Int32" />
        <asp:Parameter Name="full_name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="full_name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
    DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        id:
        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
        <br />
        full_name:
        <asp:TextBox ID="full_nameTextBox" runat="server" 
            Text='<%# Bind("full_name") %>' />
        <br />
        email:
        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
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
        full_name:
        <asp:TextBox ID="full_nameTextBox" runat="server" 
            Text='<%# Bind("full_name") %>' />
        <br />
        email:
        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
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
        full_name:
        <asp:Label ID="full_nameLabel" runat="server" Text='<%# Bind("full_name") %>' />
        <br />
        email:
        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
</asp:Content>
