<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chitiethd.aspx.cs" Inherits="WebApplication1.chitiethd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="purchase_no" HeaderText="purchase_no" 
                SortExpression="purchase_no" />
            <asp:BoundField DataField="HoaDon_id" HeaderText="HoaDon_id" 
                SortExpression="HoaDon_id" />
            <asp:BoundField DataField="ChiTietSanPham_id" HeaderText="ChiTietSanPham_id" 
                SortExpression="ChiTietSanPham_id" />
        </Columns>
    </asp:GridView>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            purchase_no:
            <asp:TextBox ID="purchase_noTextBox" runat="server" 
                Text='<%# Bind("purchase_no") %>' />
            <br />
            HoaDon_id:
            <asp:TextBox ID="HoaDon_idTextBox" runat="server" 
                Text='<%# Bind("HoaDon_id") %>' />
            <br />
            ChiTietSanPham_id:
            <asp:TextBox ID="ChiTietSanPham_idTextBox" runat="server" 
                Text='<%# Bind("ChiTietSanPham_id") %>' />
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
            purchase_no:
            <asp:TextBox ID="purchase_noTextBox" runat="server" 
                Text='<%# Bind("purchase_no") %>' />
            <br />
            HoaDon_id:
            <asp:TextBox ID="HoaDon_idTextBox" runat="server" 
                Text='<%# Bind("HoaDon_id") %>' />
            <br />
            ChiTietSanPham_id:
            <asp:TextBox ID="ChiTietSanPham_idTextBox" runat="server" 
                Text='<%# Bind("ChiTietSanPham_id") %>' />
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
            purchase_no:
            <asp:Label ID="purchase_noLabel" runat="server" 
                Text='<%# Bind("purchase_no") %>' />
            <br />
            HoaDon_id:
            <asp:Label ID="HoaDon_idLabel" runat="server" Text='<%# Bind("HoaDon_id") %>' />
            <br />
            ChiTietSanPham_id:
            <asp:Label ID="ChiTietSanPham_idLabel" runat="server" 
                Text='<%# Bind("ChiTietSanPham_id") %>' />
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
        DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [ChiTietHoaDon] ([id], [purchase_no], [HoaDon_id], [ChiTietSanPham_id]) VALUES (@id, @purchase_no, @HoaDon_id, @ChiTietSanPham_id)" 
        SelectCommand="SELECT * FROM [ChiTietHoaDon]" 
        UpdateCommand="UPDATE [ChiTietHoaDon] SET [purchase_no] = @purchase_no, [HoaDon_id] = @HoaDon_id, [ChiTietSanPham_id] = @ChiTietSanPham_id WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="purchase_no" Type="String" />
            <asp:Parameter Name="HoaDon_id" Type="Int32" />
            <asp:Parameter Name="ChiTietSanPham_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="purchase_no" Type="String" />
            <asp:Parameter Name="HoaDon_id" Type="Int32" />
            <asp:Parameter Name="ChiTietSanPham_id" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
