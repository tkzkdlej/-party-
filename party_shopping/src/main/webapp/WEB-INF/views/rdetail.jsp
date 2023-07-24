<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="./style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
            crossorigin="anonymous"></script>
            
            
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&family=Kanit:ital,wght@1,200&family=Nanum+Pen+Script&family=Ubuntu:ital@1&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">          
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">

    <title>PRoom</title>
</head>
<style>
.html, body {
	margin: 0;
	padding: 0
}

.container {
/* 	background-color: purple; */
	min-height: 100vh;
	display: flex;
	flex-direction: column;

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

.header>.logo-section {
	/* background-color: red; */
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

a {
	text-decoration: none;
	color: black;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:focus {
	text-decoration: none;
}

a:hover, a:active {
	text-decoration: none;
}

.header>.logo-section>img {
	/*width: 250px;*/
	
}

.header>.gnb {
/* 	 background-color: orange;  */
	flex: 0 50px;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	font-size: 19px;
	margin-bottom: 50px;
	padding-top:30px;
}

.header>.gnb>.menu-btn {
	/* background-color: brown; */
	flex: 0 250px;
	text-align: center;
}

.content {
/* 	background-color: aqua; */
	flex: 1 1000px;
	display: flex;
	flex-direction: column;
}

.content2 {
/* 	background-color: khaki; */
	flex: 4;
	display: flex;
	flex-direction: column;
	/* position: relative; */
	/* position: static; */
}

.content3 {
/* 	background-color: fuchsia; */
	flex: 6;
}

.content4 {
/* 	background-color: slateblue; */
	flex: 1;
}

.image2 {
/* 	background-color: violet; */
	flex: 5;
	display: flex;
	justify-content: center;
	position: relative;
	width: 100%;
	max-width: 600px;
	margin: 0 auto;
}

.image3 {
/* 	background-color: gray; */
	flex: 2;
}

.text {
/* 	background-color: teal; */
	flex: 1;
	display: flex;
	flex-direction: column;
}

.text1 {
/* 	background-color: red; */
	flex: 1.5;
	padding: 50px;
	/* padding-left: 50px; */
	/* font:bold; */
}

.text2 {
/* 	background-color: blue; */
	flex: 7;
	display: flex;
	flex-direction: column;
	padding: 50px;
}

.price1 {
/* 	background-color: orange; */
	flex: 1;
	display: flex;
	flex-direction: row;
}

.price2 {
/* 	background-color: darkcyan; */
	flex: 1;
	display: flex;
	flex-direction: row;
}

.price3 {
/* 	background-color: lime; */
	flex: 1;
	display: flex;
	flex-direction: row;
}

.price4 {
/* 	background-color: firebrick; */
	flex: 1;
	display: flex;
	flex-direction: row;
}

.price5 {
/* 	background-color: gold; */
	flex: 1;
	display: flex;
	flex-direction: row;
}

.timeprice1 {
/* 	background-color: skyblue; */
	flex: 1;
	padding: 10px;
}

.timeprice2 {
/* 	background-color: rebeccapurple; */
	flex: 1;
	padding: 10px;
}

.timeprice3 {
/* 	background-color: fuchsia; */
	flex: 1;
}

.timeprice4 {
/* 	background-color: lightcoral; */
	flex: 1;
}

.timeprice5 {
/* 	background-color: darkgoldenrod; */
	flex: 1;
}

.timeprice6 {
/* 	background-color: lightblue; */
	flex: 1;
}

.timeprice7 {
/* 	background-color: red; */
	flex: 1;
}

.timeprice8 {
/* 	background-color: olive; */
	flex: 1;
}

.timeprice9 {
/* 	background-color: blue; */
	flex: 1;
}

.timeprice10 {
/* 	background-color: turquoise; */
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

.prev-btn, .next-btn {
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
	padding: 10px;
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
	width: 800px; /* 이미지의 너비를 조절하세요 */
	font-size: 10px;
}

h1 {
	font-weight: bold;
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
.exp {
/* 	background-color: red; */
	flex: 9;
	display: flex;
	flex-direction: row;
}

.exp1 {
/* 	background-color: blue; */
	flex: 1;
}

.exp2 {
/* 	background-color: green; */
	flex: 1.5;
	display: flex;
	flex-direction: column;
}

.exp3 {
/* 	background-color: khaki; */
	flex: 1;
	display: flex;
	flex-direction: column;

	/* justify-content: center;
    align-items: center;  */
}

.exp4 {
/* 	background-color: fuchsia; */
	flex: 1;
	display: flex;
	flex-direction: column;
	justify-content:center;
	padding-left:40px;
	
}

.exp5 {
/* 	background-color: royalblue; */
	flex: 4;
	padding: 30px;
	display:flex;
	
	align-items:center;
	padding-top:50px;
	
}

.exp6 {
/* 	background-color: gold; */
	flex: 1;
	
}

.exp7 {
/*  	background-color: silver;  */
	flex: 2;
	/* display: flex; */
	/* justify-content: space-around; */
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: left;
	padding-right: 100px;
	padding-bottom:130px;
}

.exp8 {
/* 	background-color: tomato; */
	flex: 0.5;
}

.exp6, .exp8 {
	/* flex-grow: 1; */
	
}

.quan {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 20px;
}

.ming {
/* background-color:orange; */
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 20px;
}


 .carousel {
        width: 100%;
        height: 380px;
        margin-bottom:200px;
    }

    .carousel-item > img {
        height: 300px;
        width: 100%;
       
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

<input id="sess_id" hidden value="<%=session.getAttribute("id")%>">

    <div class="container">
        <!-- Header -->
        <div class="header">
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
        <div class="content2">
          <div class="exp">
            <div class="exp2">
                <div class="exp4">
                    <h1>${room_name}</h1><br>
                </div>
                <div class="exp5">
                    <div id="carouselExampleIndicators" class="carousel slide">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                    class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                    aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                    aria-label="Slide 3"></button>
                        </div>
                      <div class="carousel-inner">
  <div class="carousel-item active">
    <img src="${room_image}"
         class="d-block w-100 carousel-img" alt="...">
  </div>
  <div class="carousel-item">
    <img src="https://moplqfgeemqv2103108.cdn.ntruss.com/service/167792956_5acb51e0e57df5113b0cf4cae66e9b8c.jpg?type=m&w=900&h=900&autorotate=true&quality=90"
         class="d-block w-100 carousel-img" alt="...">
  </div>
  <div class="carousel-item">
    <img src="https://moplqfgeemqv2103108.cdn.ntruss.com/service/162435957_2987b92ab1ff5a9ff536dedafe411030.jpg?type=m&w=900&h=900&autorotate=true&quality=90"
         class="d-block w-100 carousel-img" alt="...">
  </div>
</div>

                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                                data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                                data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                </div>
            
            <div class="exp3">
                <div class="exp6"></div>
                <div class="exp7">
                 

                    <div hidden>${room_num}</div><br>
                    <div class=ming>
                        이용일자&nbsp; <input type="date" id="usedate">
                     </div><br>
                      <div class="quan">
					    <span class="quan">인원 선택</span> &nbsp;<button id="decrease" class="btn btn-light darker-btn" >-</button>
					    <input style="width:30px;" type="text" id="selhowmany" value="1" min="1" width=30px; readonly>
					    <button id="increase" class="btn btn-light darker-btn">+</button>&nbsp;&nbsp;
					  </div><br>
					  <span class=quan>가격 &nbsp;${room_price}원<br><br></span>
                  <div>
                          <button class="btn btn-primary" id="btnRbuy">BUY IT NOW</button>
                          <button class="btn btn-secondary" id="btnRCart">ADD TO CART</button>
                          <button class="btn btn-tertiary">WISH LIST</button>
                     </div>

                </div>
                <div class="exp8"></div>
            </div>
          </div>
          <div class="exp1">
            

          </div>



</div>
</div>


        <div class="content3">
            <nav >
                <a href="#section1" class="nav-link">공간소개</a>
                <a href="#section2" class="nav-link">시설안내</a>
                <a href="#section3" class="nav-link">유의사항</a>
                <a href="#section4" class="nav-link">환불정책</a>
                <a href="#section5" class="nav-link">이용후기</a>
                <a href="#section6" class="nav-link">이용후기</a>
            </nav>

            <section id="section1">
            <img class="img-resize" src="${room_content}">
            
<!--                 <h2>공간소개</h2> -->
<!--                 <p> -->
<!--                 <p>★★카톡주시면 내부동영상 보내드려요</p> -->
<!--                 <p>★★예약이 있을수 있으니 예약하기전 사전문의 주세요</p> -->
<!--                 <p>★★카톡 주시면 내부 동영상 보내드려요 전화번호 010-3024-8420★★</p> -->
<!--                 <br> -->
<!--                 <p>##공지##</p> -->
<!--                 <br> -->
<!--                 <p>공적모임(촬영,회의등)은 면적당 인원으로 이용가능하오니 사전문의 주세요!</p> -->
<!--                 <br> -->
<!--                 <p>- 시간 조정등 자세한 문의도 호스트에게 연락주세요.</p> -->
<!--                 <br> -->
<!--                 <p>백석동 그린빌2차 201동도 예약가능합니다.</p> -->
<!--                 <br> -->
<!--                 <p>미성년자도 예약 가능합니다</p> -->
<!--                 <br> -->
<!--                 <p>매일 내부소독 진행중이며,청소도 매일 운영하고있고</p> -->
<!--                 <p>체온계와 손소독제, 세정제가 구비되어있습니다.</p> -->
<!--                 <p>안심하시고 이용해주셔도 되세요.</p> -->
<!--                 <br> -->
<!--                 <p>- 백석그린빌2차아파트정류장 도보 2분</p> -->
<!--                 <p>- 편의점 도보 5초</p> -->
<!--                 <p> 스타벅스 도보 5분</p> -->
<!--                 <br> -->
<!--                 <p>영업시간 0~24시</p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>휴무일&nbsp;&nbsp;&nbsp;없음</p> -->
<!--                 <img src="img/지하1층.jpg" class="menu-icon dropdown-toggle" alt="장바구니"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!--                 <img src="img/주차불가.jpg" class="menu-icon dropdown-toggle" alt="장바구니"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!--                 <img src="img/엘리베이터없음.JPG" class="menu-icon dropdown-toggle" alt="장바구니"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!--                 </p> -->
            </section>

<!--             <section id="section2"> -->
<!--                 <h2>시설안내</h2> -->
<!--                 <p> -->
               
<!--             </section> -->

<!--             <section id="section3"> -->
<!--                 <h2>유의사항</h2> -->
<!--                 <p> -->
                
<!--             </section> -->

<!--             <section id="section4"> -->
<!--                 <h2>환불정책</h2> -->
               
<!--             </section> -->

              <section id="section5">
                <h2>이용후기</h2>
              
                <div id="comment">
                  
				</div>

            </section>


        </div>
        <div class="content4"></div>
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

        
        <div><button class="scroll-to-bottom"></button></div>
             <div><button class="scroll-to-top"></button></div>
    </div>
</div>
</body>
${alert}
<script src="https://code.jquery.com/jquery-latest.js"></script>

<script>

var today = new Date().toISOString().split('T')[0];
$('#usedate').attr('min', today);

$(document)

.ready(function() {
	showRC();
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

    // ///////////////////////////////////////////////////////////////////////////////////

 $(document)
 
 .ready(function () {
    
    var currentSlide = 0;
    var slideCount = $(".slide").length;

    function moveToSlide(slideIndex) {
        if (slideIndex < 0) {
            slideIndex = slideCount - 1;
        } else if (slideIndex >= slideCount) {
            slideIndex = 0;
        }

        $(".slide-container").css("transform", "translateX(" + (-100 * slideIndex) + "%)");
        currentSlide = slideIndex;
    }

    $(".prev-btn").on("click", function () {
        moveToSlide(currentSlide - 1);
    });

    $(".next-btn").on("click", function () {
        moveToSlide(currentSlide + 1);
    });
    
})






/////////////////////////////////////////////////////////////////////////////////////////

$(document)
    .ready(function () {
       
        $('a.nav-link').on('click', function (event) {
            event.preventDefault();

            var target = $(this).attr('href');
            var targetPosition = $(target).offset().top;

            $('html, body').animate({scrollTop: targetPosition}, 1000);
        });
    })
    
    
    
$(document)

.ready(function () {
   
  // 기존 코드
  const $selhowmanyInput = $("#selhowmany");
//   const price = ${prod_pri};

  // 총 금액을 계산하고 화면에 표시하는 함수
//   function updateTotalPrice() {
//     const selhowmany = parseInt($selhowmanyInput.val(), 10);
//     const totalPrice = price * selhowmany;
//     $("#total-price").val(totalPrice.toLocaleString());
//   }

  // 초기 총 금액 설정
//   updateTotalPrice()

  // 기존 코드
  $("#decrease").click(function () {
    const currentValue = parseInt($selhowmanyInput.val());
    if (currentValue > 1) {
      $selhowmanyInput.val(currentValue - 1);
//       updateTotalPrice(); // 총 금액 업데이트
    }
  });

  // 기존 코드
  $("#increase").click(function () {
    const currentValue = parseInt($selhowmanyInput.val(), 10);
    $selhowmanyInput.val(currentValue + 1);
//     updateTotalPrice(); // 총 금액 업데이트
  });
  
})

/////////////////////////////////////////수량제한///////////////////////////////////

.on('click','#increase',function(){
   
   let selhowmany = parseInt($('#selhowmany').val());
   let howmany = ${howmany};
   
   if(selhowmany>howmany){
      
      alert('선택한 인원이 최대 인원보다 많습니다.');
        $('#selhowmany').val(${howmany});
       selhowmany = howmany; // 수량을 재고수량으로 변경
        
        // 총 가격 계산
//         const price = ${prod_pri};
//         const totalPrice = price * quantity;
//         $('#total-price').val(totalPrice.toLocaleString());
   }
//     } else {
//         const currentValue = parseInt($selhowmanyInput.val());
//         $selhowmanyInput.val(currentValue + 1);
// //         updateTotalPrice(); // 총 가격 업데이트
//     }
   
})

.on('click','#btnRCart',function(){
    
      if('<%=session.getAttribute("id")%>'!=null) {
    	  
      var stay_date = $('#usedate').val();
      
      if (stay_date === '') {

    	 alert('날짜를 선택해주세요.');
    	 return;
      }
    	  
      $.ajax({
    	  url:'/addRmCart',
    	  type:'post',
    	  dataType:'text', 
          data:{id: '<%=session.getAttribute("id")%>',
              room_num: ${room_num},
              stay_date: stay_date,
              howmany: $('#selhowmany').val()},
              beforeSend: function() {
				  
		    	  if ($('#sess_id').val()=='null') {
	                  alert('로그인 하세요');
	                  return false; //AJAX호출을 시작도 안함
	              } // 요청 전에 처리할 내용
	          },
         success:function(data){
            
           
                 
        	 if(data=="ok") {
            	  alert(data);
				  document.location = '/ShowCart';
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

.on('click','#btnRbuy',function(){
	
// 	 let s_no=$(this).prop('alt');
	    
	  if('<%=session.getAttribute("id")%>'!=null) {
      
		  var stay_date = $('#usedate').val();
	      
	      if (stay_date === '') {

	    	 alert('날짜를 선택해주세요.');
	    	 return;
	      }	  
		  
      $.ajax({url:'/addRmBuy', type:'post', dataType:'text', 
         data:{id:'<%=session.getAttribute("id")%>',
              room_num:${room_num},
              stay_date:$('#usedate').val(),
              howmany:$('#selhowmany').val()},
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
	    
// 	    return false;
})


/////////////////////////////////////////////////////////////////////////////////////////

    function radioChangeHandler(priceNumber) {

        $(`.price1 .detail`).css('display', 'none');
        $(`.price2 .detail`).css('display', 'none');
        $(`.price3 .detail`).css('display', 'none');
        $(`.price4 .detail`).css('display', 'none');
        $(`.price5 .detail`).css('display', 'none');

        $(`.price${priceNumber} .detail`).css('display', 'block');
    }
    
    
//     $(document).ready(function() {
//     $('input[type=radio]').on('click', function() {
//         const radioButton = $(this);
//         const previousValue = radioButton.data('prev-value');

//         if (previousValue) {
//             radioButton.prop('checked', false);
//             radioButton.data('prev-value', false);
//         } else {
//             radioButton.data('prev-value', true);
//         }
//     });
// });

////////////////////////////////////////////////////////
 $(document).ready(function() {
            $('.scroll-to-bottom').on('click', function() {
                $('html, body').animate({
                    scrollTop: $(document).height() - $(window).height()
                }, 100);
            });
        });
//////////////////////////////////////////////////////////////
  $(document).ready(function() {
            $('.scroll-to-top').on('click', function() {
                $('html, body').animate({
                    scrollTop: 0
                }, 100);
            });
        });
//////////////////////////////////////////////////////////////

  $(document).ready(function() {
	    $("#submit").on('click', function() {
	        window.open("https://kcp.co.kr/main.do", "다이얼로그 이름", "옵션");
	    });
	});
	
  function showRC() {
		 $.ajax({url:'/selectRe',type:'post',data:{room_num:${room_num}},dataType:'json',
				beforeSend:function(){
				},
				success:function(data){
			    	  $('#comment div').remove();
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
			    	  	
			    	        $('#comment').append(box4);
			    	      }
				})
	}


</script>
</html>