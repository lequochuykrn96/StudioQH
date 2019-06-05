<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DangKyTK.ascx.cs" Inherits="Controls_DangKyTK" %>
<script src="../JS/DangKy.js"></script>
<table class="auto-style1" runat="server" id="FormTable" >
    <tr>
        <td class="auto-style4">Họ Tên:</td>
        <td class="auto-style3">
            <asp:TextBox ID="Name" runat="server" Width="169px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập tên">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Địa chỉ Email:</td>
        <td class="auto-style3">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" Width="169px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Xác nhận địa chỉ Email:</td>
        <td class="auto-style6">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email" Width="170px"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Xác nhận địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email không khớp nhau">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Số điện thoại cá nhân:</td>
        <td class="auto-style3">
            <asp:TextBox ID="PhoneHome" runat="server" Width="172px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PhoneHome" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập số điẹn thoại cá nhân">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mật Khẩu:</td>
        <td class="auto-style3">
            <asp:TextBox ID="Matkhau" runat="server" TextMode="Password" Width="171px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Matkhau" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập Mật Khẩu">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Xác nhận mật khẩu:</td>
        <td class="auto-style3">
            <asp:TextBox ID="XNMatkhau" runat="server" TextMode="Password" Width="172px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="XNMatkhau" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập mật khẩu không khớp">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="Matkhau" ControlToValidate="XNMatkhau" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Mật Khẩu Không Khớp">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="bntDK" runat="server" Text="Đăng Ký" OnClick="bntDK_Click" CssClass="CLbntDK" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" Height="93px" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
</table>

<p>
    &nbsp;</p>


