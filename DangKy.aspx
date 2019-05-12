<%@ Page Title="DangKy" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<%@ Register Src="~/Controls/DangKyTK.ascx" TagPrefix="uc1" TagName="DangKyTK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="DKy">
        <h1>ĐĂNG KÝ TÀI KHOẢN:</h1>
    <lequochuy:DangKyTK runat="server" ID="DangKyTK" />
    <asp:Label ID="Label1" runat="server" Text="Label"><a href="DangKy.aspx">Trở lại trang</a></asp:Label>
        </div>
</asp:Content>

