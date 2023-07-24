<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="./style.css" href="//fonts.googleapis.com/earlyaccess/nanumgothic.css"/>
      <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&display=swap" rel="stylesheet">
    <title>Gussi Party - 파티용품 쇼핑몰</title>
</head>
<style>

   *{
      font-family: sans-serif;
   }
   
   
.html, body {margin: 0; padding:0}
.container {
/*     background-color: purple; */
    min-height: 1080px;
    display: flex;
    flex-direction: column;
    min-width:1080px;
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
    flex: 1;
    display: flex;
    flex-direction: column;
    
    
}
/* #price_desc, #price_asc { */
/*   border: none; */
/*     margin-left: 50px; */
/*     background-color:blue; */
/* } */

.highprice{
/*    background-color:red; */
   margin-left:50px;
   text-align:left;
   border: none;
}

.lowprice{
/*    background-color:blue; */
   padding-right:70px;
   border: none;
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
.first{
/*     background-color: palegreen; */
    flex: 0.8;
     display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
    font-family: 'Nanum Gothic';
    font-style: italic;
    font-weight: 400;
    padding-top:100px;
   
}

.gift_box {
    width: 30px; 
    height: auto; 
}


.second{
/*     background-color: darkblue; */
    flex: 0.5;
    display: flex;
    flex-direction: row;
    /* align-items: center; */
    /* justify-content: center; */
}
.second >.second2{
/*     background-color: orchid; */
    flex:1;
    font-size: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.second >.second3{
/*     background-color: darkgoldenrod; */
    flex:7;
}
.second >.second4{
/*     background-color: teal; */
    flex:1.1;
    font-size: 15px;
    display: flex;
    align-items: center;
    justify-content: center;
   
}

.second >.second5{
/*     background-color: darkgray; */
    flex:1.1;
    display: flex;
    align-items: center;
    justify-content: left;
}
.itemdiv{
   width:100%;
}

.third {
/*     background-color: lightcoral; */
    margin-left:1.5%;
    margin-right:1.5%;
    margin-top:1.5%;
    margin-bottom:1.5%;
    width:30%;
    float:left;
    color: gray;
}

.third > .item {
/*     background-color: blue; */
    display: flex;
/*     margin:5px; */
    height:500px;
    flex-direction: column;
}

a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }

.bottom{
/*     background-color: purple;  */
    flex:3;
    display:flex;
    justify-content:center;
    align-items:center;
}

.bottom2{
/*       background-color: orange;   */
    flex:1;
    display:flex;
    justify-content:center;
    align-items:center;
   font-size: 15px;
/*    font-weight:bold; */
/*      font-family: 'Dongle', sans-serif;  */
     font-family: 'GowunDodum';
     padding-bottom:30px;
      font-weight:bold; 
/*        border: 1px solid black;  */

}

.bottom3{
   display:flex;
   justify-content:center;
   align-items:center;
/*     font-family: 'Dongle', sans-serif;  */
    font-family: 'GowunDodum';
}

.ghy{
   display:flex;
   justify-content:center;
}

.prod-image {
  width: 350px;
  height: 450px;
   object-fit: cover;  
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
        
        
          
.image-container {
    position: relative;
    
}

.image-container:hover #img {
    opacity: 0.7;
}

.image-description {
    display: none;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: black;
    font-size: 20px;
    font-weight: bold;
}

.image-container:hover .image-description {
    display: block;
}
        
        .count1{
           font-weight:bold;
        }
        
        
          .transparent-bg {
    background-color: transparent;
  }
        
         button:active {
    cursor: pointer;
  }
        
        button:hover {
    cursor: pointer;
  }
        
</style>
<body>

   <input hidden value="<%=session.getAttribute("id")%>">

    <div class="container">
        <!-- Header -->
        <div class="header">
            <!-- Logo -->
            <div class="logo-section">
                <a href = '/main'><img src="img/Gussi logo.jpg"></a>
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
            
            <div class="first"><img src="/img/party.jpg" class="gift_box">Party Items</div>
            <div class="second">
                <div class="second2"> TOTAL&nbsp;&nbsp; <span class=count1 id=count>b175459</span> &nbsp;&nbsp;ITEMS</div>
                <div class="second3">  </div>
              <div class="button-container">
   <button id="price_desc" class="highprice transparent-bg">HIGH PRICE</button>
<button id="price_asc" class="lowprice transparent-bg">LOW PRICE</button>
</div>
            </div>
           
            <div class="itemdiv">
            <c:forEach var="prods" items="${prod}">
            <div class="third">
               
                <div class="item">
                    <div class="bottom">
                  <div class="image-container">
                         <img id="img" alt="${prods.prod_name}" src="${prods.prod_image}" width="350px" height="350px">
                         <div class="image-description">${prods.prod_name}<br>${prods.prod_price}</div>
                  </div>

</div>
                    <div class="bottom2">${prods.prod_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class=bottom3>${prods.prod_price}원
                    </div>
                    </div>
                </div>
                
                </div>

                
               
            </c:forEach>
            </div>
             
        </div>
<!--         <div id="pagination" class=ghy > -->
<!--         <button id="prev-page" disabled>&lt; 이전</button> -->
<!--         <span id="current-page">1</span> -->
<!--         <button id="next-page">다음 &gt;</button> -->
<!--     </div> -->
        
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
})
.on('click', '#img', function() {
    
    let s_no=$(this).prop('alt');
    
    
    document.location = '/pdetail/'+s_no;
    return false;
})

.on('click', '#price_desc', function() {
       
    
    document.location = '/descsort';
    return false;
})
.on('click', '#price_asc', function() {
       
    
    document.location = '/ascsort';
    return false;
})
////////////////////////////////////// 페이지네이션 코드 ///////////////////////////////////

// var $setRows = $('#setRows');

// $setRows.submit(function (e) {
//     e.preventDefault();
//     var rowPerPage = $('[name="rowPerPage"]').val() * 1; // 1 을  곱하여 문자열을 숫자형으로 변환

//     var zeroWarning = 'Sorry, but we can\'t display "0" rows per page. \nPlease try again.';
//     if (!rowPerPage) {
//         alert(zeroWarning);
//         return;
//     }
//     $('#nav').remove();
//     var $products = $('#products');

//     $products.after('<div id="nav"></div>');

//     var $div = $('<div></div>').appendTo('#nav');

//     var $items = $($products).find('.product');
//     var rowTotals = $items.length;

//     var pageTotal = Math.ceil(rowTotals / rowPerPage);
//     var i = 0;

//     for (; i < pageTotal; i++) {
//         $('<a href="#"></a>')
//             .attr('rel', i)
//             .html(i + 1)
//             .appendTo($div);
//     }

//     $items.addClass('off-screen')
//         .slice(0, rowPerPage)
//         .removeClass('off-screen');

//     var $pagingLink = $('#nav a');
//     $pagingLink.on('click', function (evt) {
//         evt.preventDefault();
//         var $this = $(this);
//         if ($this.hasClass('active')) {
//             return;
//         }
//         $pagingLink.removeClass('active');
//         $this.addClass('active');

//         var currPage = $this.attr('rel');
//         var startItem = currPage * rowPerPage;
//         var endItem = startItem + rowPerPage;

//         $items.css('opacity', '0.0')
//             .addClass('off-screen')
//             .slice(startItem, endItem)
//             .removeClass('off-screen')
//             .animate({
//                 opacity: 1
//             }, 300);

//     });

//     $pagingLink.filter(':first').addClass('active');

// });

// $setRows.submit();

//////////////////////////////////////페이지네이션 코드 ///////////////////////////////////



    $(document).ready(function() {
            $(".image").hover(function() {
                $(this).css("opacity", 0.5);
                $(".text").show();
            }, function() {
                $(this).css("opacity", 1);
                $(".text").hide();
            });
        });

////////////////////////////////////////////////////////
 $(document).ready(function() {
            $('.scroll-to-bottom').on('click', function() {
                $('html, body').animate({
                    scrollTop: $(document).height() - $(window).height()
                }, 1000);
            });
        });
//////////////////////////////////////////////////////////////
  $(document).ready(function() {
            $('.scroll-to-top').on('click', function() {
                $('html, body').animate({
                    scrollTop: 0
                }, 1000);
            });
        });
        //////////////////////////////////
         $(document).ready(function() {
    $("#submit").on('click', function() {
        window.open("https://kcp.co.kr/main.do", "다이얼로그 이름", "옵션");
    });
});
        
         $(document).ready(function () {
               const itemList = $(".itemdiv");
               const itemCount = $("#count");

               // 상품 개수 업데이트 함수
               function updateCount() {
                   const totalCount = itemList.children().length;
                   itemCount.text(totalCount);
               }

               // 페이지 로드 시 상품 개수 업데이트
               updateCount();
           });

        
</script>
</html>