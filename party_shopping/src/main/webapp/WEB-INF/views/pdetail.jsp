<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="./style.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main1.css" />
    <title>Gussi Party - 파티용품 쇼핑몰</title>
</head>
<style>
 .html, body {
        margin: 0;
        padding: 0
    }

    .container {
        /* background-color: purple; */
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        padding-top:50px;
       
        /* margin: 0 auto; */
        /* min-width: 980px; */
        /* max-width: 1024px; */
    }


    .header {
        /* background-color: red; */
        flex: 0 200px;
        display: flex;
        flex-direction: column;

    }


    .header > .logo-section {
        /* background-color: red; */
        flex: 1;
        display: flex;
        flex-direction: row;
        font-size: 80px;
        align-items: center;
        justify-content: center;
/*         font-family: 'Nanum Gothic'; */
        font-style: italic;
        font-style: italic;
        font-weight: 400;
/*         src: url(폰트경로/NanumGothic-Regular-italic.woff2) format("woff2"), */
/*         url(폰트경로/NanumGothic-Regular-italic.woff) format("woff"), */
    }

    a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }

    .header > .logo-section > img {
        /*width: 250px;*/
    }

    .header > .gnb {
        /* background-color: orange; */
        flex: 0 50px;
        display: flex;
        flex-direction: row;
        justify-content: space-around;
        align-items: center;
        font-size: 50px;
        margin-bottom: 50px;
    }

    .header > .gnb > .menu-btn {
        /* background-color: brown; */
        flex: 0 120px;
        text-align: center;
    }


    .content {
        /* background-color: aqua; */
        flex: 1 1000px;
        display: flex;
        flex-direction: column;
        
    }

    .content2 {
        /* background-color: khaki; */
        flex: 4;
        display: flex;
        flex-direction: row;
        /* position: relative; */
        /* position: static; */
       
    
    }

    .content3 {
        /* background-color: fuchsia; */
        flex: 6;

    }

    .content4 {
        /* background-color: slateblue; */
        flex: 1;

    }

    .image {
        /* background-color: lawngreen; */
        flex: 0 600px;
        display: flex;
        flex-direction: column;
        


    }

    .image1 {
        /* background-color: firebrick; */
        flex: 3;

    }

    .image2 {
        /* background-color: violet; */
        flex: 5;
        display: flex;
        justify-content: center;
        position: relative;
        width: 100%;
        max-width: 600px;
        margin: 0 auto;
    }

    .image3 {
        /* background-color: gray; */
        flex: 2;
    }

    .text {
        /* background-color: teal; */
        flex: 1;
        display: flex;
        flex-direction: column;
        

    }

    .text1 {
        /* background-color: red; */
        flex: 1.5;
        padding: 50px;
        /* padding-left: 50px; */
        /* font:bold; */
    }

    .text2 {
        /* background-color: blue; */
        flex: 7;
        display: flex;
        flex-direction: column;
        padding:50px;
    }

    .price1 {
        /* background-color: orange; */
        flex: 1;
        display: flex;
        flex-direction: row;
       
    }

    .price2 {
        /* background-color: darkcyan; */
        flex: 1;
        display: flex;
        flex-direction: row;
    }

    .price3 {
        /* background-color: lime; */
        flex: 1;
        display: flex;
        flex-direction: row;
    }

    .price4 {
        /* background-color: firebrick; */
        flex: 1;
        display: flex;
        flex-direction: row;
    }

    .price5 {
        /* background-color: gold; */
        flex: 1;
        display: flex;
        flex-direction: row;
    }

    .timeprice1 {
        /* background-color: skyblue; */
        flex: 1;
        padding: 10px;
    }

    .timeprice2 {
        /* background-color: rebeccapurple; */
        flex: 1;
        padding: 10px;
    }

    .timeprice3 {
        /* background-color: fuchsia; */
        flex: 1;
    }

    .timeprice4 {
        /* background-color: lightcoral; */
        flex: 1;
    }

    .timeprice5 {
        /* background-color: darkgoldenrod; */
        flex: 1;
    }

    .timeprice6 {
        /* background-color: lightblue; */
        flex: 1;
    }

    .timeprice7 {
        /* background-color: red; */
        flex: 1;
    }

    .timeprice8 {
        /* background-color: olive; */
        flex: 1;
    }

    .timeprice9 {
        /* background-color: blue; */
        flex: 1;
    }

    .timeprice10 {
        /* background-color: turquoise; */
        flex: 1;
    }


   
.footer {
    flex: 0 80px;
/*      background-color: chartreuse;  */
    display:flex;
    flex-direction: row;
    font-size:12px;
    
}

.footer2{
    flex:1;
    padding:30px;
     opacity: 0.7;
    
/*      background-color: blue;  */
}
.footer3{
/*      background-color:orange ;  */
    flex:1;
    padding:30px;
}
.footer4{
/*      background-color: chocolate;  */
    flex:1;
    padding:30px;
}

    .menu-icon:hover {
        transform: scale(1.2);
    }


    /* Dropdown menu styles */
    .dropdown {
        position: relative;
    }

    .dropdown-toggle {
        cursor: pointer;
    }

    .dropdown-menu {
        display: none;
        position: absolute;
        background-color: white;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 1;
        min-width: 160px;
        padding: 12px 16px;
        font-size: 16px;
    }

    .dropdown-menu a {
        color: black;
        text-decoration: none;
        display: block;
    }

    .dropdown-menu a:hover {
        background-color: #f1f1f1;
    }


    .slide-container {
        display: flex;
        overflow: hidden;
        width: 100%;
        height: 300px;
        position: relative;

    }

    .slide {
        flex-shrink: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.5s;
    }

    .prev-btn,
    .next-btn {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        font-size: 2rem;
        background-color: transparent;
        border: none;
        cursor: pointer;
        outline: none;
        z-index: 1;
    }

    .prev-btn {
        left: 10px;
    }

    .next-btn {
        right: 10px;
    }

    body {
        font-family: Arial, sans-serif;
    }

    nav {
      display: flex;
  justify-content: space-around;
  background-color: #f8f8f8;
  padding: 1em;
  position: -webkit-sticky;
  position: sticky;
  top: 0;
    }

    nav a {
        text-decoration: none;
        color: #333;
    }

    nav a:hover {
        color: #0077cc;
    }

    


    section {
        min-height: 100vh;
        padding: 2em;
    }

    .detail {
        display: none;
        /* background-color: green; */
        height: auto;
        padding:10px;
        font-size: 15px;
        border: 2px solid red;
    }

    .line {
  height: 1px;
  width: 100%;
  background-color: black;
  border-style: dashed; /* 선 스타일 */
  border-width: 2px; /* 선 두께 */
  border-color: black; /* 선 색상 */
}

.img-resize {
  width: 15px; /* 이미지의 너비를 조절하세요 */
  font-size: 10px;
}


h1 {
      font-weight: bold;
      
    }  
.html, body {margin: 0; padding:0}
.container {
/*     background-color: purple; */
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}


.header {
/*     background-color: red; */
    flex: 0 200px;
    display: flex;
    flex-direction: column;
    
}


.header > .logo-section {
/*     background-color: red; */
    flex: 1;
    display: flex;
    flex-direction: row;
    font-size: 80px;
    align-items: center;
    justify-content: center;
    font-family: 'Nanum Gothic';
    font-style: italic;
     font-style: italic;
     font-weight: 400;
    src: url(폰트경로/NanumGothic-Regular-italic.woff2) format("woff2"), 
        url(폰트경로/NanumGothic-Regular-italic.woff) format("woff"), 
}
.header > .logo-section > img {
    /*width: 250px;*/
}

.header > .gnb {
/*     background-color: orange; */
    flex: 0 50px;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    font-size: 19px;
}
.header > .gnb > .menu-btn {
/*     background-color: brown; */
    flex: 0 250px;
    text-align: center;
}


.content {
/*     background-color: aqua; */
    flex: 1 ;
    display: flex;
    flex-direction: column;
    
}
.footer {
    flex: 0 80px;
/*     background-color: chartreuse; */
}

.menu-icon:hover {
  transform: scale(1.2);
}


/* Dropdown menu styles */
.dropdown {
    position: relative;
}

.dropdown-toggle {
    cursor: pointer;
}

.dropdown-menu {
    display: none;
    position: absolute;
    background-color: white;
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    z-index: 1;
    min-width: 160px;
    padding: 12px 16px;
    font-size: 16px;
}

.dropdown-menu a {
    color: black;
    text-decoration: none;
    display: block;
}

.dropdown-menu a:hover {
    background-color: #f1f1f1;
}

.top{
/*     background-color: khaki; */
    flex:1;
    height: 300px;
    display: flex;
    flex-direction: row;
}
.bottom{
/*     background-color: tomato; */
    flex:2;
    display: flex;
    flex-direction: column;
    justify-content:center;
    align-items:center;
    
   
}

.photo{
/*     background-color: blue; */
    flex:1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center ;
    padding:100px;
    padding-left:180px;
}

.explantion{
/*     background-color: yellow; */
    flex:1;
    font-size: large;
    padding:150px;
    padding-right: 100px;
    padding-top: 150px;
    padding-left:50px;
    font-family: 'Dongle', sans-serif; 
 font-family: 'Noto Serif KR', serif; 
    /* display: flex; */
    /* justify-content: auto; */
}

/*  */

.main-image-container {
   background-color:pink;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
}

.main-image {
    max-width: 100%;
    max-height: 100%;
}

.thumbnails {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 50%;
    gap: 10px;
}

.thumbnail {
    max-width: 100%;
    max-height: 100%;
    cursor: pointer;
}

/*  */

.bottom2{
     background-color: pink; 
    flex:1;
}
.bottom3{
     background-color: pink; 
    flex:1;   
}


/*  button */
.btn {
        font-size: 10px;
        font-weight: bold;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin: 5px;
        transition: 0.3s;
    }

    .btn-primary {
        background-color: #007BFF;
        color: white;
    }

    .btn-primary:hover {
        background-color: #0056B3;
    }

    .btn-secondary {
        background-color: #6C757D;
        color: white;
    }

    .btn-secondary:hover {
        background-color: #565E62;
    }

    .btn-tertiary {
        background-color: #28A745;
        color: white;
    }

    .btn-tertiary:hover {
        background-color: #218838;
    }
/*  button */


.quan {
  display: flex;
  /* justify-content: center; */
  align-items: center;
  /* background-color: firebrick; */
}

a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }


#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}

  .review-section {
  margin-top: 50px;
}

.review-section h2 {
  font-size: 24px;
}

.write-review-btn {
  margin-top: 20px;
  padding: 10px;
  border: none;
  background-color: #ff6b6b;
  color: #fff;
  font-size: 16px;
  cursor: pointer;
}

.review-list {
  margin-top: 20px;
}

.review-item {
  border: 1px solid #ccc;
  padding: 10px;
  margin-bottom: 10px;
}

.review-item .review-rating {
  font-weight: bold;
  color: #ff6b6b;
  margin-right: 10px;
}

.review-item .review-date {
  font-size: 12px;
  color: #888;
  margin-right: 10px;
}

.review-item .review-content {
  margin-top: 10px;
}

.review-dialog {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.4);
}

.review-dialog-content {
  background-color: #fff;
  margin: 15% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  max-width: 500px;
}

.review-dialog-close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.review-dialog-close:hover,
.review-dialog-close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

form {
  display: flex;
  flex-direction: column;
}

label {
  font-weight: bold;
  margin: 10px 0;
}

textarea {
  height: 150px;
  margin-bottom: 20px;
  resize: none;
}

button[type="submit"] {
  margin-top: 10px;
  padding: 10px;
  border: none;
  background-color: #ff6b6b;
  color: #fff;
  font-size: 16px;
  cursor: pointer;
}

.mb-3{
/*    background-color:blue; */
   padding:50px;
}
  #quantity {
    width: 20px;
    border: none;
    text-align:center;
  }
  
  .btn btn-dark{
     background-color:black;
  }
  
  
  .total{
     border:none;
     text-align:center;
     width:100px;
  }
  
    .target {
        position: relative;
        width: 100%;
        height: 100%;
        overflow: hidden;
    }

    .main-image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform .5s ease-out;
    }
  
   .scroll-to-bottom {
            position: fixed;
            bottom: 10px;
            right: 10px;
/*              background-color: #2D89EF; */
            background-image: url('/img/arrow_down_icon_128951.png'); /* 이미지 URL 추가 */
          background-size: cover; /* 배경 이미지 크기 조절 */
          background-repeat: no-repeat; /* 배경 이미지 반복 방지 */
/*             color: #FFF; */
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            width:30px;
            height:30px;
           
            
        }
        
         .scroll-to-top {
            position: fixed;
            bottom: 60px;
            right: 10px;
/*              background-color: #2D89EF; */
            background-image: url('/img/pngtree-up-arrow-png-image_4565998.jpg'); /* 이미지 URL 추가 */
          background-size: cover; /* 배경 이미지 크기 조절 */
          background-repeat: no-repeat; /* 배경 이미지 반복 방지 */
/*             color: #FFF; */
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            width:30px;
            height:30px;
           
            
        }
        
        
        
         .darker-btn {
    background-color: #d1d1d1; /* 원하는 진한 색상 코드로 변경 */
  }
  
  .comment-body{
  	 border: 2px solid #add8e6;
  	 border-radius:30px;
  	 padding:40px;
  	 margin-bottom:20px;
  
  }
  
  
</style>
<body>

   <input id="sess_id" type="hidden" value="<%=session.getAttribute("id")%>">

    <div class="container">
        <!-- Header -->
        <div class="header fixed-header">
            <!-- Logo -->
            <div class="logo-section">
                <a href = '/main'><img src="/img/Gussi Party Logo.jpg"></a>
            </div>
            <!-- GNB -->
            <div class="gnb">
                <!-- <div class="menu-btn"><a href =>home</a></div> -->
                <div class="menu-btn"><a href='/rsort'><img src="/img/room.jpg" style=width:30px;>𝑷𝒂𝒓𝒕𝒚 𝑹𝒐𝒐𝒎</a></div>
                <div class="menu-btn"><a href='/psort'><img src="/img/party.jpg" style=width:30px;>𝑷𝒂𝒓𝒕𝒚 𝑰𝒕𝒆𝒎𝒔</a></div>
                <div class="menu-btn"><a href='/Q&A'><img src="/img/board.jpg" style=width:30px; >𝑩𝒐𝒂𝒓𝒅</a></div>
                
                                <% if(session.getAttribute("id")!=null){ %>
                
                <div class="menu-btn dropdown">
                    <img src="/img/mypageicon.png" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
                    <div class="dropdown-menu">
                  
                        <a href="/logout">로그아웃</a>
                        <% if(!session.getAttribute("id").equals("관리자")){ %>
                        	<a href="/mypage">마이페이지</a>
                        <% } %>
                        
                        <% if(session.getAttribute("id").equals("관리자")){ %>
                        <a href="/Administratorproduct">관리자페이지</a>
                        <% } %>
                    </div>&nbsp;
                    <a href="/ShowCart"><img src="/img/shoppingcart.ico" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">
					</a>
<!--                     <div class="dropdown-menu"> -->
                        
<!--                     </div> -->
                </div>
                
                <% } else {%>
                
                <div class="menu-btn dropdown">
                    <img src="/img/mypageicon.png" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
                    <div class="dropdown-menu">
                  
                        <a href="/login">로그인</a>
                        <a href="/join">회원가입</a>
                        
                        
                        
                        
                    </div>&nbsp;
                    <a href="/ShowCart"><img src="/img/shoppingcart.ico" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">
					</a>
<!--                     <div class="dropdown-menu"> -->
<!--                     </div> -->
                </div>
                
                <% } %>
                
            </div>
        </div>
        <!-- Content -->
        
        <div class="content">
            <div class="top">
                <div class="photo">
    <div class="main-image-container target" data-scale="2">
        <img src="${prod_img}" alt="Main Image" class="main-image">
    </div>
                    <div class="thumbnails">
                        <img src="${prod_img}"  width="80px" alt="Image 1" class="thumbnail" />
                        <img src="https://www.alexandsonia.com/web/product/big/202303/a716015fe8572a461bfeddc6251876bd.jpg" width="80px" height="150px" alt="Image 2" class="thumbnail" />
                        <img src="https://www.alexandsonia.com/web/product/big/202302/e53e3b62458d9e8b6e17546674f31f95.jpg" width="80px" alt="Image 3" class="thumbnail" />
                        <img src="https://www.alexandsonia.com/web/product/big/202302/0ea365ca54169e1f516671cf29d8fd7c.jpg" width="80px" alt="Image 4" class="thumbnail" />
                        <img src="https://www.alexandsonia.com/web/product/big/202207/6bb00d7e8e1d722859be3285955ba1fd.png" width="80px" alt="Image 5" class="thumbnail" />
                    </div>
                </div>
               <div class="explantion">
                     <input type="hidden" value='${prod_num}' readonly>
                    <div>${prod_nam}</div>
                    <div>${prod_pri}</div>

                    <div style="color: skyblue;">Family 할인가 49,800원</div><br>

                    <div>적립금 &nbsp;&nbsp;&nbsp; 최대1076원</div><br>
                    <div>브랜드 &nbsp;&nbsp;&nbsp;GUSSI PARTY</div><br>
                    <div>원산지&nbsp;&nbsp;&nbsp; 중국산</div><br>

                    <div>[콤보]네온 레인보우 파티세트</div><br>
                    <div class="quan">
                        <button id="decrease" class="btn btn-light darker-btn">-</button>
                        <input type="text" id="quantity" value="1" min="0" style=width:20px; readonly>
                        <button id="increase" class="btn btn-light darker-btn">+</button>&nbsp;&nbsp;
                        <input type="hidden" value='${stock}' readonly>
                      </div>
                      <br>
               

                      <div>TOTAL<input type="text" id="total-price" class=total readonly>원</div><br>

                    <div>
                          <button class="btn btn-primary" id="btnPbuy">BUY IT NOW</button>
                          <button class="btn btn-secondary" id="btnCart">ADD TO CART</button>
                          <button class="btn btn-tertiary">WISH LIST</button>
                    </div>
                    
                </div>
            </div>
            <div class="bottom">
               
                <div class="bottom2">
<!--                     <img src="productexp.JPG" alt="마이페이지"> -->
                </div>
                <div class="bottom3"></div>
            </div>
            
            <link href="/assets/css/star.css" rel="stylesheet"/>
 
   
   	<section id="section5">
                <h2>이용후기</h2>
				 
				  <div id="commentp"   >
<!--                   리뷰 셀렉 자리 -->
				</div>
                
				
            </section>

            
        </div>
        <!-- Footer -->
        <div class="footer">
            <div class="footer2"> 
                COMPANY HUMAN<br>
                TEL:010-3024-8400<br>
                OWNER: 김준하<br>
                BUSINESS LICENSE: 422-4212-421<br>
                Copyright by GucciROOM<br>
                ADDRESS: 충청남도 천안시 동남구<br>
                Mail:info@korea.com
                개인정보취급관리자: 김준하
            </div>
            <div class="footer3"> 
                
                <span style="opacity: 0.7;">CS CENTER<br></span>
                
                <span style="color:red; font-weight:bold;">070-4140-0732</span><br>
                <span style="opacity: 0.7;"> MON-FRI AM 10 - PM 6<br></span>
                <span style="opacity: 0.7;"> LUNCH PM1-PM2</span>
                <span style="opacity: 0.7;"> SAT.SUN/HOLIDAY OFF<br><br></span>
                <span style="opacity: 0.7;"> 하나은행 302123131545301</span>
    
    
            
            </div>
            <div class="footer4">
                <span style="color:red; font-weight:bold;">교환/반품 주소</span><br>
                <span style="opacity: 0.7;">충청남도 서북구<br></span>
                <span style="opacity: 0.7;">  CJ대한통운 1588 1255 <br></span>
                <a href="https://www.cjlogistics.com/ko/tool/parcel/tracking">배송위치 조회하기</a><br>
                <span style="opacity: 0.7;">고객님은 안전거래를 위해 결제시 저희 쇼핑몰에게</span>
                <span style="opacity: 0.7;">가입한 KCP 에스그로 구매안전 서비스를 이용할수있습니다.</span>
                <span style="opacity: 0.7;"><button id=submit>서비스가입 사실확인</button> </span><br>            
                <span style="opacity: 0.7;">COPYRIGHT ALL RIGHT RESERVED</span>
                <div><button class="scroll-to-bottom"></button></div>
             <div><button class="scroll-to-top"></button></div>
                
            </div>

            
             <div><button class="scroll-to-bottom">f</button></div>
             <div><button class="scroll-to-top">f</button></div>
        </div>
    </div>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/main1.js"></script>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>

<script>

$(document)

.ready(function() {
   
    $(".dropdown-toggle").on('mouseenter focus', function() {
        $(this).next(".dropdown-menu").stop(true, true).slideDown("fast");
    });

    $(".dropdown-toggle").on('mouseleave blur', function() {
        var dropdownMenu = $(this).next(".dropdown-menu");
        var isMouseOverMenu = dropdownMenu.is(":hover");
        if (!isMouseOverMenu) {
            dropdownMenu.stop(true, true).slideUp("fast");
        }
    });

    $(".dropdown-menu").on('mouseleave', function() {
        $(this).stop(true, true).slideUp("fast");
    });
})

$(".thumbnail").click(function() {
    const src = $(this).attr("src");
    $(".main-image").attr("src", src);
})

/////////////////////////////////////////////////////////////////////////////////

$(document)

.ready(function () {
   
  // 기존 코드
  const $quantityInput = $("#quantity");
  const price = ${prod_pri};

  // 총 금액을 계산하고 화면에 표시하는 함수
  function updateTotalPrice() {
    const quantity = parseInt($quantityInput.val(), 10);
    const totalPrice = price * quantity;
    $("#total-price").val(totalPrice.toLocaleString());
  }

  // 초기 총 금액 설정
  updateTotalPrice()

  // 기존 코드
  $("#decrease").click(function () {
    const currentValue = parseInt($quantityInput.val(), 10);
    if (currentValue > 1) {
      $quantityInput.val(currentValue - 1);
      updateTotalPrice(); // 총 금액 업데이트
    }
  });

  // 기존 코드
  $("#increase").click(function () {
    const currentValue = parseInt($quantityInput.val(), 10);
    $quantityInput.val(currentValue + 1);
    updateTotalPrice(); // 총 금액 업데이트
  });
  
})

/////////////////////////////////////////수량제한///////////////////////////////////

.on('click','#increase',function(){
   
   let quantity = parseInt($('#quantity').val());
   let stock = ${stock};
   
   if(quantity>stock){
      
      alert('상품의 수량이 재고수량 보다 많습니다.');
        $('#quantity').val(${stock});
       quantity = stock; // 수량을 재고수량으로 변경
        
        // 총 가격 계산
        const price = ${prod_pri};
        const totalPrice = price * quantity;
        $('#total-price').val(totalPrice.toLocaleString());
        
    } else {
        const currentValue = parseInt($quantityInput.val(), 10);
        $quantityInput.val(currentValue + 1);
        updateTotalPrice(); // 총 가격 업데이트
    }
   
})

// $(document).ready(function() {
//   // Submit review form using AJAX
//   $('#review-form').submit(function(event) {
//     event.preventDefault();
//     var formData = $(this).serialize();
//     $.ajax({
//       url: '/review',
//       type: 'POST',
//       data: formData,
//       success: function(response) {
//         $('#review-list').append(response);
//         $('#review-form')[0].reset();
//       },
//       error: function(xhr, status, error) {
//         console.log(xhr.responseText);
//       }
//     });
//   });
  
//   // Load reviews for the current product using AJAX
//   $.ajax({
//     url: '/reviews/' + ${prod_id},
//     type: 'GET',
//     success: function(response) {
//       $('#review-list').html(response);
//     },
//     error: function(xhr, status, error) {
//       console.log(xhr.responseText);
//     }
//   });
// });


$(document)

.ready(function() {
	showPC();
     // 리뷰 작성 버튼 클릭 시 다이얼로그 나타내기
     $(".write-review-btn").click(function() {
        if('<%=session.getAttribute("id")%>'==null) {
           alert('로그인 후 작성하실수 있습니다.');
        } else {
            $(".review-dialog").fadeIn();  
        }
     });

     // 다이얼로그 닫기 버튼 클릭 시 다이얼로그 닫기
     $(".review-dialog-close").click(function() {
       $(".review-dialog").fadeOut();
     });

     // 리뷰 작성 폼 제출 시 서버로 전송하기
     $("form").submit(function(e) {
       e.preventDefault(); // 기본 이벤트 방지

       // 입력된 내용 가져오기
       var rating = $("#rating").val();
       var content = $("#content").val();

       // 서버로 전송할 데이터 구성하기
       var data = {
         rating: rating,
         content: content
       };

       // 서버로 전송하기
       $.ajax({
         type: "POST",
         url: "/api/reviews",
         data: JSON.stringify(data),
         contentType: "application/json",
         beforeSend: function() {
            if ('<%=session.getAttribute("id")%>'==null) {
                  alert('로그인 하세요');
                  return false; //AJAX호출을 시작도 안함
              } // 요청 전에 처리할 내용
          },
         success: function() {
           // 서버로부터 응답이 성공적으로 왔을 때
           alert("리뷰가 작성되었습니다.");
           $(".review-dialog").fadeOut();
           location.reload(); // 페이지 새로고침
         },
         error: function() {
           // 서버로부터 응답이 실패했을 때
           alert("리뷰 작성에 실패했습니다.");
         }
         
       });
     });
})

.on('click','#btnCart',function(){
    
      if('<%=session.getAttribute("id")%>'!=null) {
      
      $.ajax({url:'/addCart', type:'post', dataType:'text', 
         data:{id:'<%=session.getAttribute("id")%>',
              prod_num:${prod_num},
              qty:$('#quantity').val()},
              beforeSend: function() {
                 
                  if ($('#sess_id').val()=='null') {
                        alert('로그인 하세요');
                        return false; //AJAX호출을 시작도 안함
                    } // 요청 전에 처리할 내용
                },
         success:function(data){
            
            if(data=="ok"){
                 
               alert('입력이 성공했습니다.');
                document.location = '/ShowCart';  
              } 
         }
       });
      
      } else {
   
      alert('로그인 먼저 해주세요.');
      return false;
      
      } 
   
})
.on('click','#btnPbuy',function(){
   
//     let s_no=$(this).prop('alt');
       
     if('<%=session.getAttribute("id")%>'!=null) {
      
//         var stay_date = $('#usedate').val();
         
//          if (stay_date === '') {

//            alert('날짜를 선택해주세요.');
//            return;
//          }     
        
      $.ajax({url:'/addPBuy', type:'post', dataType:'text', 
         data:{id:'<%=session.getAttribute("id")%>',
              prod_num:${prod_num},
              qty:$('#quantity').val()},
              beforeSend: function() {
              
               if ($('#sess_id').val()=='null') {
                     alert('로그인 하세요');
                     return false; //AJAX호출을 시작도 안함
                 } // 요청 전에 처리할 내용
             },
         success:function(data){
            
           
                 if(data=="ok") {
                    
                 document.location = '/payment';
                 
                 } else {   
                    
                     alert(data);
                     
                 }
                 
               
         }
       });
      
      } else {
   
      alert('로그인 먼저 해주세요.');
      
      return false;
      
      } 
})

//////////////////////////////////////////////////////////////////////////

//  window.onload = function () {
//     $('.target')
//         .on('mouseover', function () {
//             $(this).children('.photo').css({
//                 'transform': 'scale(' + $(this).attr('data-scale') + ')'
//             });
//         })
//         .on('mouseout', function () {
//             $(this).children('.photo').css({
//                 'transform': 'scale(1)'
//             });
//         })
//         .on('mousemove', function (e) {
//             $(this).children('.photo').css({
//                 'transform-origin': ((e.pageX - $(this).offset().left) / $(this).width()) * 100 + '% ' + ((e.pageY - $(this).offset().top) / $(this).height()) * 100 + '%'
//             });
//         })
//         .append('<div class="photo"></div>')
//         .children('.photo').css({
//             'background-image': 'url(' + $('.target').attr('data-image') + ')'
//         })
//     };

///////////////////////////////////////////////////////////////////////////////

    $(document).ready(function () {
        $('.target')
            .on('mouseover', function () {
                $(this).children('.main-image').css({
                    'transform': 'scale(' + $(this).attr('data-scale') + ')'
                });
            })
            .on('mouseout', function () {
                $(this).children('.main-image').css({
                    'transform': 'scale(1)'
                });
            })
            .on('mousemove', function (e) {
                $(this).children('.main-image').css({
                    'transform-origin': ((e.pageX - $(this).offset().left) / $(this).width()) * 100 + '% ' + ((e.pageY - $(this).offset().top) / $(this).height()) * 100 + '%'
                });
            });
    })
    
////////////////////////////////////////////////////////
    $(document).ready(function() {
               $('.scroll-to-bottom').on('click', function() {
                   $('html, body').animate({
                       scrollTop: $(document).height() - $(window).height()
                   }, 1000);
               });
           })
   //////////////////////////////////////////////////////////////
     $(document).ready(function() {
               $('.scroll-to-top').on('click', function() {
                   $('html, body').animate({
                       scrollTop: 0
                   }, 1000);
               });
           })
   
   
   
     .on('click','#btnPwrite',function(){
  		
      	$.ajax({url:'/revpInsert',type:'post',data:{prod_num:${prod_num}, RCONTENT:$('#insertprev').val() },dataType:'text',
      		beforeSend:function(){
      		},
      		success:function(data){
      			
      			if(data=="ok") {
      				
      				$('#insertprev').val("");
      				showPC()
      				  
                 } 
//       			else {	
                	 
//       	               alert(data);
//                  }
      			
      		}
      		})
      })
      ////////////////////////////////////////////////////////
  function showPC() {
 	 $.ajax({url:'/selectpRe',type:'post',data:{prod_num:${prod_num}},dataType:'json',
 			beforeSend:function(){
 			},
 			success:function(data){
 		    	  $('#commentp div').remove();
 		    	        box4='';
 		    	  for (let i = 0; i < data.length; i++) {
 		    	        let box = '<div class="comment-body">'+
 		    	        		  '<div id="comment-header" class="comment-content">' +
 		    	                  '<span id="b_writer2" value="' + data[i]['REVIEW_NUM'] + '" class="author-name">' + data[i]['R_WRITER'] + '</span>' +
 		    	                  '</div>' +
 		    	                  '<div class="comment-content">' +
 		    	                  '<p>' + data[i]['RCONTENT'] + '</p>' +
 		    	                  '</div>' +
 		    	                  '<div class="comment-footer">' +
 		    	                  '<div><span class="comment-date">' + data[i]['R_CREATE_DATE'] + '</span></div>' +'<br>'+'</div>'
 		    	                  
 		    	                  
 		    	                  
 		    	        

 		    	        let box3='</div>';
 		    	       
 		    	        	box4=box4+box+box3;
 		    	        }
 		    	  	
 		    	        $('#commentp').append(box4);
 		    	      }
 			})
 }
</script>

</html>

