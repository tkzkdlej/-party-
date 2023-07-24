<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="./style.css"/>
    <title>Gussi Party - 파티용품 쇼핑몰</title>
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
    /* background-color: orange; */
    flex: 0 50px;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    font-size: 19px;
}
.header > .gnb > .menu-btn {
    /* background-color: brown; */
    flex: 0 120px;
    text-align: center;
}


.content {
    /* background-color: aqua; */
    flex: 1;
    display: flex;
    flex-direction: column;
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

.paymentlogo{
    /* background-color: saddlebrown; */
    flex:0 50px;
    display: flex;
    align-items: center;
    justify-content: center;
}
.shipoption{
    /* background-color: palevioletred; */
    flex: 0 500px;
    display: flex;
    flex-direction: column;
    
    /* margin: 30px; */
}
.shipoption2{
    /* background-color: forestgreen; */
    flex:9 ;
    display: flex;
    flex-direction: row;
    min-height:200px;
   
    
}
.orderbutton{
    /* background-color: darkgoldenrod; */
    flex:1;
}

.shipoption3{
    /* background-color: royalblue; */
    flex:1.5;
    display: flex;
    flex-direction: column;
    
    
    /* align-items: center;
    justify-content: center; */
}

.shipoption4{
    /* background-color: fuchsia; */
    flex:1.5 100px;
    padding:50px;
    display: flex;
    justify-content: space-between;
    flex-direction: column;
    padding-left: 80px; 

    max-height: 300px;
   
}

.shipoption5{
    /* background-color: darksalmon; */
    flex:1;
    display: flex;
     align-items: center; 
     justify-content: center; 
    padding-left: 20px;
    /* padding-right: 10px; */
}

.cart{
    /* background-color: fuchsia; */
    flex:1;
    display: flex;
    flex-direction: column;
}

.cart1{
    /* background-color: darkcyan; */
    flex:1;
    display: flex;
    flex-direction: row;
    padding-left:10px;
}

.cart2{
    /* background-color: forestgreen; */
    flex:2;
    display: flex;
    flex-direction: column;
    padding-left: 10px;
}

.cart3{
/*      background-color: red;  */
    flex:1;
    padding:20px;
}

.cart4{
/*      background-color: blue;  */
    flex:1;
   margin-right: 100px;
    padding-top: 103px;
}

.cart5{
    /* background-color: gold; */
    flex:1;
    padding:10px;
}

.cart6{
    /* background-color: silver; */
    flex:9;
    display: flex;
    flex-direction: column;

}

.cart7{
    /* background-color: pink; */
    flex:1;
    display: flex;
    flex-direction: row;
}
.cart8{
    /* background-color: forestgreen; */
    flex:1;
    display: flex;
    flex-direction: row;

}
.cart9{
    /* background-color: khaki; */
    flex:1;
}

.picture{
    /* background-color: darkblue; */
    flex:1;
    padding:20px;
}

.letter{
    /* background-color: brown; */
    flex:5;
    padding:20px;
}

.picture2{
    /* background-color: greenyellow; */
    flex:1;
    padding:20px;
}

.letter2{
    /* background-color: lightcoral; */
    flex:5;
    padding:20px;
}

.inline-container input[type="text"] {
  font-size: 20px;
}

a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; 
    }



/*             
                                             */
                                             .inline-container {
                                                 /* display: flex;
                                                 justify-content:center; */
                                                 margin-bottom: 10px;
                                                }
                                                
                                                                                        
input[type="text"] {
  border: 1px solid #ccc;
  border-radius: 30px; 
  padding: 8px 15px;
  outline: none;
}

button[type="button"],
button[type="Ordering"] {
  background-color: #1e90ff;
  color: white;
  border: none;
  border-radius: 30px; 
  padding: 10px 20px;
  cursor: pointer;
  outline: none;
}
 
button[type="button"]:hover,
button[type="Ordering"]:hover {
  background-color: #0073e6;
}
 
button[type="button"]:active,
button[type="Ordering"]:active {
  background-color: #0059b3;
} 







.save-continue-btn {
    font-size: 15px;
    font-weight: 600;
    color: #ffffff;
    background-color: #4caf50;
    padding: 10px 20px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease;

}

.save-continue-btn:hover {
    background-color: #66bb6a;
}

.save-continue-btn:focus {
    outline: none;
}

.price1{
/* background-color:red; */
}


input[type="price"] {
  border: none;
  outline: none; /* 선택 시 테두리 제거 */
}

.inline-container{
	padding-left:50px;
/* 	position: -webkit-sticky; /* For Safari */ */
/*     position: sticky; */
/*     top: 20px;  */
	
	
	
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

	<input value="<%=session.getAttribute("id")%>">
	
    <div class="container">
        <!-- Header -->
        <div class="header">
            <!-- Logo -->
            <div class="logo-section">
                <a href ='/main'><img src="img/Gussi Party Logo.jpg"></a>
            </div>
            <!-- GNB -->
            <div class="gnb">
                <!-- <div class="menu-btn"><a href =>home</a></div> -->
                <div class="menu-btn"><a href ='/rsort'>𝑷𝒂𝒓𝒕𝒚 𝑹𝒐𝒐𝒎</a></div>
                <div class="menu-btn"><a href ='/psort'>𝑷𝒂𝒓𝒕𝒚 𝑰𝒕𝒆𝒎𝒔</a></div>
                <div class="menu-btn"><a href =/Q&A>𝑩𝒐𝒂𝒓𝒅</a></div>
                
                <% if(session.getAttribute("id")!=null){ %>
                
                <div class="menu-btn dropdown">
                    <img src="img/mypage.png" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
                    <div class="dropdown-menu">
                  
                        <a href="/logout">로그아웃</a>
                        <a href="mypage">마이페이지</a>
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
                        <a href="login">마이페이지</a>
                    </div>&nbsp;
                    <a href="/shoppingcartorder"><img src="img/shoppingcart.ico" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">
					</a>
<!--                     <div class="dropdown-menu"> -->
<!--                     </div> -->
                </div>
                
                <% } %>
                
            </div>
            
        </div>
        <!-- Content -->
        <div class="content">
            
            <div class = paymentlogo><h2>Payment</h2></div>
            <div class= shipoption>
                <div class="shipoption2">
                    <div class="shipoption3">
                        <div class="shipoption4">
                            <div class="inline-container">
                            	<input type="radio" name="btnradio" readonly id="btnradio">&nbsp;신규 배송지
                            	<input type="radio" name="btnradio" readonly id="btnradio2">&nbsp;기본 배송지<br><br>
                                <label for="name"> </label>
                                <input type="text" id="name" name="name" readonly placeholder="이름" value="${ship.name}">
                            </div>
                            <div class="inline-container">
                                <label for="address"> </label><br>
                                <input type="text" id="zip_code" name="zip_code"  readonly placeholder="주소" style="width: 10%;" value="${ship.zip_code}">
                                <button id="zipbutton" name="zipbutton" onclick="sample6_execDaumPostcode()" type="button">우편번호</button><br>
                              <div><input type="text" id="j_address1" name="j_address1" readonly placeholder="기본주소" style="width: 50%;" value="${ship.address1}"></div>
                              <div><input type="text" id="j_address2" name="j_address2" readonly placeholder="상세주소" style="width: 50%;" value="${ship.address2}"></div>
                            </div>
                            
                            <div class="inline-container">
                                <label for="mobile"> </label>
                                <input type="text" id="mobile" name="mobile" readonly placeholder="전화번호" value="${ship.mobile}">
                             
                            </div>
                            <div class="inline-container">
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             

<!--                               &nbsp;  <button class="save-continue-btn" type="submit">저장 및 계속</button> -->
                            </div>



                        </div>
                        <div class="shipoption5">
                            
                            <h3>결제 방법 선택</h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="payment-method" >
                                <div style="margin-right: 10px;">
                                    <input type="radio" id="kakaopay" name="payment" value="kakaopay">
                                    <label for="kakaopay">  <img src="img/카카오페이.jpg" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">&nbsp;카카오페이</label><br>
                                </div>
                            
                                <div style="margin-right: 10px;">
                                    <input type="radio" id="creditcard" name="payment" value="creditcard">
                                    <label for="creditcard"> <img src="img/신용카드.jpg" width="30px" class="menu-icon dropdown-toggle" alt="신용카드">신용카드</label><br>
                                </div>
                            
                                <div style="margin-right: 10px;">
                                    <input type="radio" id="accounttransfer" name="payment" value="accounttransfer">
                                    <label for="accounttransfer">실시간 계좌이체</label>
                                </div>
                            </div>
                           
                            
                            <div class="inline-container" > 
                                <div><button type="button" id="order-btn"><span>주문하기</span></button></div>
                                </div>                          
                            </div>                            
                    </div>


                    <div class="cart">
                        <div class="cart1">
                           <div class="cart3">
                                <div><span><h4>Cart</h4></span> </div><br>
                               <div><span>배송비</span></div>
                               <div><span >총 결제금액</span></div>
                           </div>
                           <div class="cart4">
                           <div> 무료 </div>
                           <div class=price1> <input id="total_price"  type="price" value="${ship.totalP}" style="width:70px";  readonly>원</div>

                           </div>
                        </div>
                        <div class="cart2">
                            <div class="cart5">
                                <div><span style="font-weight: 700;">3월 25일 (토) 까지 도착 예정</span></div>
                            </div>
                            <div class="cart6">
                            
                            
                            <c:forEach var="cart" items="${carts}">
                                <div class="cart7">
                                <input id="cart_num" type="hidden" value="${cart.tcart_num}">
                                    <div class="picture"> <img src="${cart.PROD_IMAGE} ${cart.ROOM_IMAGE}" width="80px" class="menu-icon dropdown-toggle"></label></div>
                                    <div class="letter">
                                        <div><span>${cart.ROOM_NAME}${cart.PROD_NAME}</span></div>
                                        <div><span>${cart.STAY_DATE}</span></div><br>
<!--                                         <div><span> 스타일 번호: FJ6892-410</span></div> -->
<!--                                         <div><span> 컬러: 미드나이트 네이비</span></div> -->
                                        <div><span> ${cart.OPTION}:${cart.rt_howmany}${cart.QTY} / ${cart.ROOM_PRICE}${cart.PROD_PRICE}원</span></div>
                                        <div><span>${cart.PR}원</span></div>
                                    </div>
                                </div>

						    </c:forEach>

                    </div>

                </div>
<!--                 <div class="orderbutton">1</div> -->


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
    </div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

$(document)

.ready(function() {
	$('#zipbutton').prop('disabled', true);
	$('#btnradio2').prop('checked', true);
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
.on('click','#btnradio',function(){
	$('#name').val('');
	$('#zip_code').val('');
	$('#j_address1').val('');
	$('#j_address2').val('');
	$('#mobile').val('');
	$('#name').prop('readonly', false);
	$('#zip_code').prop('readonly', false);
	$('#j_address1').prop('readonly', false);
	$('#j_address2').prop('readonly', false);
	$('#mobile').prop('readonly', false);
	$('#zipbutton').prop('disabled', false);
	
})
.on('click','#btnradio2',function(){
	$('#name').val('${ship.name}');
	$('#zip_code').val('${ship.zip_code}');
	$('#j_address1').val('${ship.address1}');
	$('#j_address2').val('${ship.address2}');
	$('#mobile').val('${ship.mobile}');
	$('#name').prop('readonly', true);
	$('#zip_code').prop('readonly', true);
	$('#j_address1').prop('readonly', true);
	$('#j_address2').prop('readonly', true);
	$('#mobile').prop('readonly', true);
	$('#zipbutton').prop('disabled', true);
})
function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("j_address2").value = extraAddr;
                
                } else {
                    document.getElementById("j_address2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip_code').value = data.zonecode;
                document.getElementById("j_address1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("j_address2").focus();
            }
        }).open();
        return false;
    }

$(document)

.ready(function() {
	
  $("#order-btn").click(function() {
	
	var address1 = $('#zip_code').val();
	var address2 = $('#j_address1').val();
	var address3 = $('#j_address2').val();
	var address = address1+ " " + address2 + " " +address3;
	
// 	console.log($('#cart_num').val());
<%-- 	console.log('<%=session.getAttribute("id")%>'); --%>
// 	console.log(address);
// 	console.log($('#mobile').val());
// 	console.log($('#name').val());
// 	console.log($('#total_price').val());
// 	console.log($("input[type='radio']:checked").siblings("label").text());
	
	
	var selectedPayWay = $("input[type='radio']:checked");

if(selectedPayWay.length === 0) {
    alert("결제 방법을 선택해주세요.");
    return false;
}
	$.ajax({
		url:'/addOrderlist',
		type:'post',
		dataType:'text', 
        data:{tcart_num:$('#cart_num').val(),
        	  id:'<%=session.getAttribute("id")%>',
              saddress: address,
              s_phone:$('#mobile').val(),
              s_name:$('#name').val(),  
              total_price:$('#total_price').val(),         
              pay_way:selectedPayWay.siblings("label").text()},
              
              success:function(data){
                  
                  
                  if(data=="ok") {
                 	 
				    	alert("주문이 완료되었습니다.");
				    	document.location = '/main';
 					  
                  } else {	
                 	 
 		               alert(data);
 		               return false;
                  }
                  
                
          }
              
	});
	
  
  });
  
})



/////////////////////////////////////////////////////////////////////////////////
      $(document).ready(function() {
    $("#submit").on('click', function() {
        window.open("https://kcp.co.kr/main.do", "다이얼로그 이름", "옵션");
    });
});

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