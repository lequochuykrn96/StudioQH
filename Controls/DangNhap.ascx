<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DangNhap.ascx.cs" Inherits="Controls_DangNhap" %>
<style type="text/css">
    .auto-style2
    {
        width: 100%;
    }
</style>

<table class="auto-style2" runat="server" id="FormTable">
    <tr>
        <td>Tài Khoản</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TKDangNhap" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TKDangNhap" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Chưa có tài khoản">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Mật Khẩu</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="MKDangNhap" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MKDangNhap" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Chưa nhập mật khẩu">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="bntDangKy" runat="server" Text="Đăng Ký" CssClass="bntDangKy" Height="24px" Width="70px" />
            <asp:Button ID="bntDangNhap" runat="server" OnClick="bntDangNhap_Click" OnClientClick="return confirm" Text="Đăng Nhập" CssClass="bntDangNhap" Height="24px" Width="78px" />
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
</table>
<asp:Label ID="HienThiDangNhap" runat="server" Text="HienThi" Visible="False"></asp:Label>

