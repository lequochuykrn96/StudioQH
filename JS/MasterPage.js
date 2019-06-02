//Hiển Thị Theme
function anchon() {
    var x = document.getElementById("GiaoDien");
    if (x.style.height === "200px") {
        x.style.height = "0px";;
    } else {
        x.style.height = "200px";
    }
}
//Đăng Nhập
function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
function MBar(x) {
    x.classList.toggle("change");
    x = document.getElementById("NightMenu");
    if (x.style.display === "block") {
        x.style.display = "none";
    } else {
        x.style.display = "block";
    }
}




