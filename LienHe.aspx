<%@ Page Title="Liên Hệ" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Pglienhe">
    <h1>Xin chào: <asp:Label ID="Pagelienhe" runat="server" Text="Label"></asp:Label></h1> </br> 
        <div class="Pglienhe1">
    <a>Để lại lời nhắn cho chúng tôi, chúng tôi sẽ liên hệ trực tiếp cho bạn nhé.</a> </br>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Nội dung mà bạn muốn được tư vấn..." TextMode="MultiLine"></asp:TextBox> </br>
    <asp:Button ID="gui" runat="server" Text="Gửi" />
            </div>
    </div>
    <div id="Pglienhe3">
               <h1>QuốcHuy-Studio </br>
        Tháp Trầm Hương, Nha Trang </br>
        quochuy@gmail.com </h1>
        <div id="maplienhe">
            <iframe class="bandolienhe" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3899.12853777125!2d109.19589368604042!3d12.239574985582598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31706700bc6d6995%3A0x7d4cd9c4fe1c7a8b!2zUXXhuqNuZyB0csaw4budbmcgMiB0aMOhbmcgNA!5e0!3m2!1svi!2s!4v1557411618390!5m2!1svi!2s" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>
</asp:Content>

