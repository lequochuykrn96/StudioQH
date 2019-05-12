<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="QuangCao">
      <div>
        <h1>QUỐC HUY-STUDIO</h1>
        <p>Nơi mà bạn có thể lưu giữ lại những bức hình kỷ niệm tuổi thanh xuân</p>
      </div>
    </section>
    <section class="TimKiem">
      <div>
        <h1><a>Nhập thông tin bạn muốn tìm</a></h1>
          <input type="text" name="Đăng nhập để tìm kiếm"/>
          <button type="submit" value="submit">Tìm Kiếm</button>
      </div>
    </section>

    <section id="GioiThieu">
        <div class="Trang1">
          <h3 style="background:#32a0c2; color:white; border-radius:5px; border:double ;">CẬP NHẬT LIÊN TỤC</h3>
          <p><img src="Images/ngat.jpg" width:"80%" height:"auto"/></p>
          <p class="x2">Luôn cập nhật theo xu hướng mới nhất, mỗi bức hình sẽ là câu chuyện riêng của bạn để lưu lại tuổi xuân của bạn trong mỗi bức hình. </p>
        </div>
        <div class="Trang2">
          <h3 style="background:#32a0c2; color:white; border-radius:5px; border:double;">CHĂM SÓC TẬN TÌNH</h3>
          <p>
          <img src="Images/Yen/yen.jpg" width:"80%" height:"auto"/>
        </p>
        <p class="x2">Với đội ngũ nhân viên dày dặn kinh nghiệm về việc tư vấn lẫn kiến thức chuyên môn vững chắc bạn cứ yên tâm khi đến với Studio của chúng tôi.</p>
        </div>
    </section>
</asp:Content>

