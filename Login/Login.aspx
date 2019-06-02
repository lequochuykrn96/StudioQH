<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<%@ Register Src="~/Controls/Banner.ascx" TagPrefix="lequochuy" TagName="Banner" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<head runat="server">
    <title></title>
    <script>
        function andangky() {
            var x = document.getElementById("Login4");
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</head>
<body id="Login">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptNabager" runat="server"></asp:ScriptManager>
    <div class="Login_logo">
        <img src="../Images/Untitled-1.png" style="width:300px; height:300px"/>
    </div>
        <aside id="Login1">
            <div class="GomLG">
          <div class="FmDangnhap">
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
            <h3>ĐĂNG NHẬP</h3>
              <div runat="server" id="Login2">
                  <div class="dn1">
                  <i class='fas fa-user'></i> <asp:Label ID="LBDN" runat="server" Text="Tài Khoản" ></asp:Label>
                  <asp:TextBox ID="TBDN" runat="server" CssClass="TextBoxLogin" placeholder="Nhập tài khoản..."></asp:TextBox>
                  </div>
                  <div class="dn2">
                  <i class='fas fa-key'></i> <asp:Label ID="LBMK" runat="server" Text="Mật Khẩu"></asp:Label>
                  <asp:TextBox ID="TBMK" runat="server" CssClass="TextBoxLogin" placeholder="Nhập mật khẩu..." TextMode="Password" ></asp:TextBox> 
                   </div>       
                  <asp:Button ID="bntdangnhap" runat="server" Text="Đăng Nhập" OnClientClick="return confirm" CssClass="bntDangNhap" OnClick="bntdangnhap_Click" />  
                  </div>
                      </ContentTemplate>
           </asp:UpdatePanel> 
              <asp:UpdateProgress ID="loaddulieu" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                    <ProgressTemplate>
                    <div id="loadinglogin" runat="server">
                        <img src="../Images/loading/full.gif" />
                    </div>
                        </ProgressTemplate>
                </asp:UpdateProgress>    
          </div>
            <div class="Login3">
                <div class="Fmdangky">
                    <lequochuy:Banner runat="server" ID="Banner" />
                </div>
                <div class="Fmdangky1">
            <a href="javascript:void(0);" class="dangky" onclick="andangky()" aria-hidden="False">Đăng Ký</a></div>
                </div>
                </div>
        </aside> 
        <div id="Login4">
        <lequochuy:DangKyTK runat="server" ID="DangKyTK" />
    </div>        
    </form>
</body>
</html>
