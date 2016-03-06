<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="anhbtpd1502_assignment.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="ID_SanPham" DataSourceID="SqlDataSource1" 
            GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="ID_SanPham" HeaderText="ID_SanPham" ReadOnly="True" 
                    SortExpression="ID_SanPham" />
                <asp:BoundField DataField="ID_LoaiSanPham" HeaderText="ID_LoaiSanPham" 
                    SortExpression="ID_LoaiSanPham" />
                <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" 
                    SortExpression="TenSanPham" />
                <asp:BoundField DataField="GiaSanPham" HeaderText="GiaSanPham" 
                    SortExpression="GiaSanPham" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QuanLyDonHangConnectionString %>" 
            DeleteCommand="DELETE FROM [SanPham] WHERE [ID_SanPham] = @ID_SanPham" 
            InsertCommand="INSERT INTO [SanPham] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [GiaSanPham]) VALUES (@ID_SanPham, @ID_LoaiSanPham, @TenSanPham, @GiaSanPham)" 
            SelectCommand="SELECT * FROM [SanPham]" 
            UpdateCommand="UPDATE [SanPham] SET [ID_LoaiSanPham] = @ID_LoaiSanPham, [TenSanPham] = @TenSanPham, [GiaSanPham] = @GiaSanPham WHERE [ID_SanPham] = @ID_SanPham">
            <DeleteParameters>
                <asp:Parameter Name="ID_SanPham" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_SanPham" Type="Int32" />
                <asp:Parameter Name="ID_LoaiSanPham" Type="Int32" />
                <asp:Parameter Name="TenSanPham" Type="String" />
                <asp:Parameter Name="GiaSanPham" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_LoaiSanPham" Type="Int32" />
                <asp:Parameter Name="TenSanPham" Type="String" />
                <asp:Parameter Name="GiaSanPham" Type="Decimal" />
                <asp:Parameter Name="ID_SanPham" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
