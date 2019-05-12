<%@ Page Title="Hình Ảnh" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HinhAnh.aspx.cs" Inherits="HinhAnh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="JS/HinhAnh.js"></script>
    <section class="QC1">
      <h1>QH-STUDIO_NƠI LƯU GIỮ TUỔI THANH XUÂN CỦA BẠN</h1>
<div class="container">
  <div class="mySlides">
    <div class="numbertext">1 / 6</div>
    <img src="Images/Trang.jpg" alt="HinhAnh" style="width:80%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 6</div>
    <img src="Images/cjtrang.jpg" alt="HinhAnh" style="width:80%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 6</div>
    <img src="Images/Yen/yen2.jpg" alt="HinhAnh" style="width:80%"/>
  </div>
    
  <div class="mySlides">
    <div class="numbertext">4 / 6</div>
    <img src="Images/DSC02752-14.jpg" alt="HinhAnh" style="width:80%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">5 / 6</div>
    <img src="Images/nvbhnvgb.jpg" alt="HinhAnh" style="width:80%"/>
  </div>
    
  <div class="mySlides">
    <div class="numbertext">6 / 6</div>
    <img src="Images/okoknice.jpg" alt="HinhAnh" style="width:80%"/>
  </div>
    
  <a class="prev" onclick="plusSlides(-1)">❮</a>
  <a class="next" onclick="plusSlides(1)">❯</a>

  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <div class="row">
    <div class="column">
      <img class="demo cursor" src="Images/Trang.jpg" style="width:70%" onclick="currentSlide(1)" alt="LÊ THỊ TRANG"/>
    </div>
    <div class="column">
      <img class="demo cursor" src="Images/cjtrang.jpg" style="width:70%" onclick="currentSlide(2)" alt="LƯU HƯƠNG TRANG"/>
    </div>
    <div class="column">
      <img class="demo cursor" src="Images/Yen/yen2.jpg" style="width:70%" onclick="currentSlide(3)" alt="LÊ THỊ YẾN"/>
    </div>
    <div class="column">
      <img class="demo cursor" src="Images/DSC02752-14.jpg" style="width:70%" onclick="currentSlide(4)" alt="LÊ THỊ MỸ DUYÊN"/>
    </div>
    <div class="column">
      <img class="demo cursor" src="Images/nvbhnvgb.jpg" style="width:70%" onclick="currentSlide(5)" alt="Lê Thị Kiều"/>
    </div>    
    <div class="column">
      <img class="demo cursor" src="Images/okoknice.jpg" style="width:70%" onclick="currentSlide(6)" alt="PHẠM HỒNG PHƯỚC"/>
    </div>
  </div>
</div>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    </section>

    <section id="HA">
     
        <h1>Album Yến</h1>
        <div class="Ab1">
      <div class="ColumAlbum">
        <img src="Images/Yen/yen.jpg" style="width:100%"/>
          <img src="Images/Yen/DSC03220-6.jpg" style="width:100%"/>   
      </div>
      <div class="ColumAlbum">         
       <img src="Images/Yen/yen2.jpg" style="width:100%"/>         
  <img src="Images/Yen/DSC03215-5.jpg" style="width:100%"/>
           <img src="Images/Yen/DSC03238-4.jpg"style="width:100%" />
      </div>  
      <div class="ColumAlbum">
       <img src="Images/Yen/DSC03234-7-9.jpg" style="width:100%"/>     
          <img src="Images/Yen/DSC03241-3.jpg" style="width:100%"/>  
                     
      </div>
    </div>   
        <h1>Album Trang</h1>
        <div class="Ab1">
      <div class="ColumAlbum">
          <img src="Images/TrangLS/DSC01055-8.png" style="width:100%"/>      
          <img src="Images/TrangLS/DSC01151-14.png"style="width:100%" />  
         
      </div>
      <div class="ColumAlbum">
          <img src="Images/TrangLS/DSC01058-3.png" style="width:100%"/>
         <img src="Images/TrangLS/DSC01081-6.png" style="width:100%"/>
      </div>  
      <div class="ColumAlbum">
          <img src="Images/TrangLS/DSC01101-4.png" style="width:100%"/>
           <img src="Images/TrangLS/DSC01056-1.png" style="width:100%"/> 
          <img src="Images/TrangLS/nang%20DSC01067-2.png"style="width:100%" />
      </div>
    </div>
        <h1>Album Chụp Cặp</h1>
        <div class="Ab1">
      <div class="ColumAlbum">
          <img src="Images/NCLuongSon/DSC00814-1.png"style="width:100%" />
          <img src="Images/NCLuongSon/DSC00823-4.png" style="width:100%"/>
      </div>
      <div class="ColumAlbum">
          <img src="Images/NCLuongSon/DSC00824-5.png" style="width:100%"/>
          <img src="Images/NCLuongSon/DSC00917-41.png" style="width:100%"/>
          
      </div>  
      <div class="ColumAlbum">
          <img src="Images/NCLuongSon/DSC00853-2.jpg" style="width:100%"/>
          <img src="Images/NCLuongSon/DSC00832-7.png" style="width:100%"/>
      </div>
    </div>
    </section>
</asp:Content>

