
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gussi Party - 파티용품 쇼핑몰</title>
</head>
<style>
    html, body {margin: 0; padding:0 }

    a {
  /* text-decoration-line: none; */
/*   text-decoration-line: underline; */
/*   text-decoration-line: overline; */
/*   text-decoration-line: line-through; */
/*   text-decoration-line: underline line-through overline; */
}

a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }

.container {
    /* background-color: blue; */
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    padding-top:50px;
}
.header {
    /* background-color: purple; */
    flex: 0 200px;
    display: flex;
    flex-direction: column;

    /* position: fixed; 메뉴 상단바 스크롤 내려도 상단에 고정! */
    /* top: 0; */
    /* width: 100% */
    /* left: 0;
    right: 0; */
}

.header > .logo-section {
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
.Famous{
    font-size: 20px;
}

.header > .logo-section > img {
    /* width: 250px; */
}

.header > .gnb {
/*       background-color: orange;   */
    flex: 0 50px;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    font-size: 19px;
    padding-bottom:30px;
}
.header > .gnb > .menu-btn {
/*       background-color: brown;   */
    flex: 0 250px;
    text-align: center;
    
   
}


.content {
    /* background-color: aqua; */
    flex: 1 800px;
    display: flex;
    align-items: center;
    justify-content: center;

   
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
    /* color: black; */
    text-decoration: none;
    display: block;
}

.dropdown-menu a:hover {
    background-color: #f1f1f1;
}

.content2 {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px 0;
        /* background-color: purple; */
    }

    .content2 img {
        width: 300px;
        margin: 0 10px;

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
	
</style>

<body>

    <input value="<%=session.getAttribute("id")%>" hidden>
    
    <div class="container">
        <!-- Header -->
       <div class="header">
            <!-- Logo -->
            <div class="logo-section">
                <a href = '/main'><img src="/img/Gussi Party Logo.jpg"></a>
                <!-- <br class="Famous ">  -->
            </div>
            <!-- GNB -->
            <div class="gnb">
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
            <div class="slideshow-container">
                <img class="slide" src="/img/mainpic.jpg" alt="Image 1">
                <img class="slide" src="/img/mainpic2.jpg" alt="Image 2">
                <img class="slide" src="/img/mainpic3.jpg" alt="Image 3">
                <!-- <img class="slide" src="mainpic4.jpg" alt="Image 4"> -->
            </div>
            </div>
            <div class="content2">
            
                <img src="/img/mainpic4.jpg" alt="마이페이지">
                <img src="/img/mainpic5.jpg" alt="마이페이지">
                <img src="/img/mainpic6.jpg" alt="마이페이지">
            </div>
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
        </div>


    
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
});

let slideIndex = 0;
            const slides = $(".slide");
            slides.hide();

            function showSlides() {
                slides.hide();
                slideIndex++;
                if (slideIndex > slides.length) {slideIndex = 1}
                slides.eq(slideIndex - 1).fadeIn(1000);
                setTimeout(showSlides, 3000); // Change image every 3 seconds
            }

            showSlides();
        //////////////////////////////////////////////////
        
        $(document).ready(function() {
    $("#submit").on('click', function() {
        window.open("https://kcp.co.kr/main.do", "다이얼로그 이름", "옵션");
    });
});
        //////////////////////////////////////////////////////
        
        ////////////////////////////////////////////////////////
    $(document).ready(function() {
               $('.scroll-to-bottom').on('click', function() {
                   $('html, body').animate({
                       scrollTop: $(document).height() - $(window).height()
                   }, 1);
               });
           });
   //////////////////////////////////////////////////////////////
     $(document).ready(function() {
               $('.scroll-to-top').on('click', function() {
                   $('html, body').animate({
                       scrollTop: 0
                   }, 1);
               });
           });

        
        
</script>
</html>