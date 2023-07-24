<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
     <link rel="stylesheet" type="text/css" media="screen" href="css/main1.css" />
     
    <title>Cart</title>
</head>
<style>
   
.html, body {margin: 0; padding:0}
.container {
    /* background-color: purple; */
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}


.header {
/*      background-color: red;  */
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
/*      background-color: orange;  */
    flex: 0 50px;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    font-size: 19px;
}
.header > .gnb > .menu-btn {
/*      background-color: brown;  */
    flex: 0 120px;
    text-align: center;
}


.content {
/*      background-color: aqua;  */
    flex: 1;
    display: flex;
    flex-direction: row;
    font-family: 'Dongle', sans-serif;
font-family: 'Noto Serif KR', serif;
}

.shoppingcart{
/*      background-color: forestgreen;   */
    flex:2 ;
    display: flex;
    flex-direction: column;
    padding:40px;
  
}

.order{
    flex:1.3;
/*      background-color: rebeccapurple;  */
    display: flex;
    flex-direction: column;
    padding-left:20px;
}

 .order2{
         /* background-color: darkgoldenrod;  */
    flex:2;
    display: flex;
    /* justify-content: center; */
    flex-direction: column;
    /* align-items: center; */
    font-size: 3vh;
    /* padding:50px; */
    padding-top: 50px;
    /* padding-left:10px; */
    padding-left:20px;
    position:fixed;
    flex: 0 0 30%;
    position: -webkit-sticky; /* For Safari */
    position: sticky;
    top: 20px; /* 여백을 조절하려면 이 값을 변경하세요. */
    /*     border:1px solid red; */
  }

.order3{
/*      background-color: fuchsia;  */
     max-height: 500px;
     
}

.order, .price, .shipping {
  font-family: 'Roboto', sans-serif;
  font-weight: 400; /* 폰트 두께 조절 (예: 100부터 900까지) */
  font-size: 18px; /* 글자 크기 조절 */
  color: #333; /* 글자 색상 조절 */
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

.shoppingcart2{
    margin-top: 20px;
/*      background-color: darkblue;  */
    flex:1;
    display: flex;
    flex-direction: row;
    /* justify-content: center; */
}
.shoppingcart2_1{
/*      background-color: firebrick;  */
    flex:1;
    padding:20px;
    font-size: 12px;
}
.shoppingcart3{
/*      background-color: hotpink;  */
    flex:1;
    display: flex;
    flex-direction: row;
    
}

.shoppingcart3_1{
/*      background-color: lawngreen;  */
    flex:1;
    display: flex;
    justify-content: center;
    align-items: center;
}

.shoppingcart3_2{
/*      background-color: sandybrown;  */
    flex:3;
    padding-top:10px;
    padding-left: 10px;

}
.shoppingcart5{
/*      background-color: teal;  */
    flex:1;
    padding:20px;
    font-size: 12px;
}
.shoppingcart6{
/*      background-color: coral;  */
    flex:1;
    display: flex;
    flex-direction: row;
}

.shoppingcart6_1{
/*      background-color: blue;  */
    flex:1;
    display: flex;
    justify-content: center;
    align-items: center;
}

.shoppingcart6_2{
/*      background-color: purple;  */
    flex:3;
    padding-top:10px;
    padding-left: 10px;

}
.shoppingcart7{
/*      background-color: palegreen;  */
    flex:1;
    padding:20px;
    font-size: 12px;
}

.shipping{
/*      background-color: khaki;  */
    flex:1;
    justify-content: center;
    align-items: center;
    display: flex;
    
}
.shipping2{
/*      background-color: gold;  */
    flex:3;
    padding-top:10px;
    padding-left: 10px;
}

.order2 span {
    margin-right: 20px;
}

.order2 button {
    margin-left: 20px;
}


    .line {
  height: 1px;
  width: 100%;
  background-color: black;
  border-style: dashed; /* 선 스타일 */
  border-width: 2px; /* 선 두께 */
  border-color: black; /* 선 색상 */
}


a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }

#buttonorder {
             background-color: black; 
            color: white;
            border: none;
            /* padding: 10px; */
            padding-bottom:30px;
            padding-top: 15px;
            padding-inline: 100px;
            /* padding-left: 5px; */
           margin-left: 100px;
			
            font-size: 15px;
            cursor: pointer;
            transition: all 0.3s;
        }
        #buttonorder:hover {
            background-color: #444;
            transform: scale(1.1);
        }

        .shoppingcarttext{
            font-style:italic;
        }
        
        input {
  		width: 110px; /* 원하는 크기로 설정 */
 		 height: 30px; /* 원하는 크기로 설정 */
	}
       input[type="text"], input[type="number"] { 
  border: none;  
   text-align: center;
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
        
        .hy{
        padding-bottom:50px;
        
        }
        
        
        .btn btn-danger{
        
        background-color:blue;
        justify-content:center;
        align-items:center;
        }
        
        dec btn btn-danger{
        	display:flex;
        	     justify-content:center;
        align-items:center;
        }
        
         .darker-btn {
    background-color: #d1d1d1; /* 원하는 진한 색상 코드로 변경 */
  }
</style>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <!-- Logo -->
            <div class="logo-section">
                <a href ='/main'><img src="/img/Gussi Party Logo.jpg"></a>
            </div>
            <!-- GNB -->
            <div class="gnb">
                <!-- <div class="menu-btn"><a href =>home</a></div> -->
                <div class="menu-btn"><a href='/rsort'><img src="/img/room.jpg" style=width:30px;>𝑷𝒂𝒓𝒕𝒚 𝑹𝒐𝒐𝒎</a></div>
                <div class="menu-btn"><a href='/psort'><img src="/img/party.jpg" style=width:30px;>𝑷𝒂𝒓𝒕𝒚 𝑰𝒕𝒆𝒎𝒔</a></div>
                <div class="menu-btn"><a href='/Q&A'><img src="/img/board.jpg" style=width:30px; >𝑩𝒐𝒂𝒓𝒅</a></div>
                
               <% if(session.getAttribute("id")!=null){ %>
                
                <div class="menu-btn dropdown">
                    <img src="img/mypage.png" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
                    <div class="dropdown-menu">
                  
                        <a href="/logout">로그아웃</a>
                        <a href="/mypage">마이페이지</a>
                    </div>&nbsp;
                    <a href="/ShowCart"><img src="img/shoppingcart.ico" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">
               </a>
<!--                     <div class="dropdown-menu"> -->
                        
<!--                     </div> -->
                </div>
                
                <% } else {%>
                
                <div class="menu-btn dropdown">
                    <img src="img/mypage.png" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
                    <div class="dropdown-menu">
                  
                        <a href="/login">로그인</a>
                        <a href="/join">회원가입</a>
                        <a href="/login">마이페이지</a>
                    </div>&nbsp;
                    <a href="/ShowCart"><img src="img/shoppingcart.ico" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">
               </a>
<!--                     <div class="dropdown-menu"> -->
<!--                     </div> -->
                </div>
                
                <% } %>
                
            </div>
        </div>
        <!-- Content -->
        <form action="/Updatecart" method="post">
        <div class="content">
            <div class=shoppingcart ><h2 class=hy>Shoppingcart</h2>
             <div class="line"></div>
            <c:forEach var="cart" items="${carts}">
            	
                <div class="shoppingcart2">
                  <div class="shipping"><img id='img' name='img' src="${cart.PROD_IMAGE} ${cart.ROOM_IMAGE}" width="100px;" height="100" class="menu-icon dropdown-toggle" alt="${cart.IMG_NAME1}"></div>
                  <input type="hidden" name="name" value="${cart.OPTION}${cart.ROOM_NUM}${cart.PROD_NUM}">
                  <input type="hidden" name="day" value="${cart.STAY_DATE}">
                  
                  <div class="shipping2"> ${cart.ROOM_NAME}${cart.PROD_NAME}<br>
                                          ${cart.STAY_DATE}${cart.OPTION_NAME} ${cart.OPTION_VAL}<br>
					                      ${cart.OPTION}
                                          <input type="button" value="-" class="btn btn-light darker-btn" style="width: 30px; height: 40px; text-align: center; vertical-align: middle;" id="${cart.ROOM_NUM}${cart.PROD_NUM} decrease">

					                        <input type="text" style= width:40px; id="${cart.OPTION}${cart.ROOM_NUM}${cart.PROD_NUM}${cart.CHECK}quantity" name='num' value="${cart.QTY}${cart.rt_howmany}" min="10" width="20px" readonly>
					                       <input type="button" class="btn btn-light darker-btn" value="+" style="width: 35px; height: 40px;" id="${cart.ROOM_NUM}${cart.PROD_NUM}increase">

					                        <input id="${cart.OPTION}${cart.ROOM_NUM}per" type="hidden" name="count" readonly value="${cart.HOWMANY}" style="width: 5pc;">
					                        <input id="${cart.OPTION}${cart.PROD_NUM}qt" type="hidden" name="count" readonly  value="${cart.STOCK}" style="width: 5pc;">
                                           <br>
                                       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <input type="text" class="total" id="${cart.ROOM_NUM}${cart.PROD_NUM}total-price" value="${cart.PR}" readonly>원
                                           <input type="hidden" id="${cart.ROOM_NUM}${cart.PROD_NUM}total-price2" value="${cart.ROOM_PRICE}${cart.PROD_PRICE}" width="10px" readonly>
                                          <br><br>
                <img id="remove" src="/img/remove.jpg" width="20" height="20" class="menu-icon dropdown-toggle" alt="${cart.ROOM_NUM}${cart.PROD_NUM} ${cart.TC_ID} ${cart.STAY_DATE}">
                </div>
                </div>
                <div class="shoppingcart5">
                    무료배송<br>
                  도착 예정일 3월 25일(토) 
                </div>
                 <div class="line"></div>
    			
                </c:forEach>
                

            </div>
           <div class="order">
                <div class="order2">
                    <span>Order</span><br><br>
                 <div><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="tople" type=text value="${total}" size="5px"><span style="font-size: 20px;">원</span></div>
                    <div><span>SHIPPING</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 20px;">무료</span></div><br>
                   <div> <span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TOTAL</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="tople2" type=text value="${total}" size="5px">원</div><br><br>
                   <button type="submit" id="buttonorder" style="width: 250px; height: 30px;">ORDER</button>
                  
                </div>
                <div class="order3">
               		
                </div>
            </div>
        </div>
        </form>
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






.on('click', '#img', function() {
    
    let s_no=$(this).prop('alt');
    if(s_no.includes('상품')){
    	s_no=s_no.replace('상품','');
    document.location = '/pdetail/'+s_no;
    return false;
    }
    if(s_no.includes('룸')){
    	s_no=s_no.replace('룸','');
    document.location = '/rdetail/'+s_no;
    return false;
    }
    
})


.on('click', '#remove',function(){
	
	console.log($(this).prop('alt'));
	
	$.ajax({
        url: '/DeleteCartk',
        type: 'post',
        data: {
            s_no: $(this).prop('alt')
        },
        dataType: 'text',
        beforeSend: function() {
            
        },
        success: function(data) {
        	location.reload(); 
        }
    })

})

.on('click', ".dec" ,function(){
	currentValue=$('#'+$(this).next().prop('id'));
	maxQtyCurrentValue=$('#'+$(this).next().next().prop('id')+'');
	price=$('#'+$(this).next().next().next().next().next().next().prop('id')+'');
	price2=$('#'+$(this).next().next().next().next().next().next().next().prop('id')+'');
					
					
	
		if (currentValue.val() > 1) {
		$('#'+$(this).next().prop('id')+'').val($('#'+$(this).next().prop('id')+'').val()-1)  
	    }
		
		if(currentValue.prop('id').includes('수량')){
			
			if (parseInt(currentValue.val()) < parseInt(maxQtyCurrentValue.val())) {
				currentValue.val(parseInt($('#'+$(this).prev().prop('id')+'').val())+1)
				}
		price.val(price2.val()*currentValue.val());
		}
		$('#tople').val(calculateTotal());
		$('#tople2').val(calculateTotal());
		
})
.on('click', ".inc" ,function(){
	
	currentValue=$('#'+$(this).prev().prop('id')+'');
	maxCurrentValue=$('#'+$(this).next().prop('id')+'');
	maxQtyCurrentValue=$('#'+$(this).next().next().prop('id')+'');
	price=$('#'+$(this).next().next().next().next().prop('id')+'');
	price2=$('#'+$(this).next().next().next().next().next().prop('id')+'');
	
	
	if(currentValue.prop('id').includes('인원')){
		if (currentValue.val() < maxCurrentValue.val()) {
		$('#'+$(this).prev().prop('id')+'').val(parseInt($('#'+$(this).prev().prop('id')+'').val())+1)
			}else{
				alert("최대인원 초과");
			}
	}
	if(currentValue.prop('id').includes('수량')){
		
		if (parseInt(currentValue.val()) < parseInt(maxQtyCurrentValue.val())) {
			currentValue.val(parseInt($('#'+$(this).prev().prop('id')+'').val())+1)
			}
		else{
			alert("재고 부족")
		}
	price.val(price2.val()*currentValue.val());
	}
	$('#tople2').val(calculateTotal());
	$('#tople').val(calculateTotal());
	
})

function calculateTotal() {
  var total = 0;
  $('.total').each(function() {
    total += parseInt($(this).val()) || 0;
  });
  return total;
}

$(document).ready(function() {
    const $sidebar = $('.sidebar');

    $(window).on('scroll', function() {
      const scrollPosition = $(this).scrollTop();

      // 필요한 경우, 스크롤 위치에 따른 처리를 추가하세요.
    });
  });
////////////////////////////////////////////////////////////////////////////


 window.onload = function () {
    $('.target')
        .on('mouseover', function () {
            $(this).children('.photo').css({
                'transform': 'scale(' + $(this).attr('data-scale') + ')'
            });
        })
        .on('mouseout', function () {
            $(this).children('.photo').css({
                'transform': 'scale(1)'
            });
        })
        .on('mousemove', function (e) {
            $(this).children('.photo').css({
                'transform-origin': ((e.pageX - $(this).offset().left) / $(this).width()) * 100 + '% ' + ((e.pageY - $(this).offset().top) / $(this).height()) * 100 + '%'
            });
        })
        .append('<div class="photo"></div>')
        .children('.photo').css({
            'background-image': 'url(' + $('.target').attr('data-image') + ')'
        })
    };

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

//////////////////////////////////////////////////////////////////
    $(document).ready(function() {
    $("#submit").on('click', function() {
        window.open("https://kcp.co.kr/main.do", "다이얼로그 이름", "옵션");
    });
});

</script>
</html>