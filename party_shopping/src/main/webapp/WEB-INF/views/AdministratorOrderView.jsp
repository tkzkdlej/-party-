<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="./style.css"/>
    <title>Gussi Party - 주문내역조회</title>
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

.header>.logo-section>img {
	/*width: 250px;*/
	
}

.header>.gnb {
	/* background-color: orange; */
	flex: 0 50px;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	font-size: 30px;
}

.header>.gnb>.menu-btn {
	/* background-color: brown; */
	flex: 0 250px;
	text-align: center;
}

.content {
	/* background-color: aqua; */
	flex: 1;
}

.content1 {
	/* background-color: forestgreen; */
	flex: 1;
	display: flex;
	justify-content: space-around;
}

.content2 {
	/* background-color: salmon; */
	flex: 9;
	padding: 10px;
}

.footer {
	flex: 0 80px;
	/* background-color: chartreuse; */
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

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.container {
	width: 100%;
	/* max-width: 1200px; */
	margin: 0 auto;
	/* padding: 20px; */
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
	font-weight: bold;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

select {
	width: 100%;
	padding: 5px;
}

.product-name {
	display: flex;
	align-items: center;
}

.product-name img {
	width: 50px;
	height: 50px;
	margin-right: 10px;
	object-fit: cover;
}

.button-container {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

.button-container button {
	background-color: #4CAF50;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 8px;
	cursor: pointer;
	padding: 10px 24px;
	border-radius: 4px;
	transition-duration: 0.4s;
}

.button-container button:hover {
	background-color: #45a049;
}
</style>
<body>
	<div class="container">
		<!-- Header -->
		<div class="header">
			<!-- Logo -->
			<div class="logo-section">
				<a href='/main'><img src="/img/Gussi Party Logo.jpg"></a>
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
		<div class="content">
			<div class="content1">
				
                <div class="menu-btn"><a href = "/Administratorproduct">Product</a></div>
                <div class="menu-btn"><a href = "/Administratorroom">Room</a></div>
                <div class="menu-btn"><a href ="/AdministratorOrder">Order</a></div>
                <div class="menu-btn"><a href ="/AdministratorMember">Member</a></div>
 				<div class="menu-btn"><a href ="/AdministratorReview">Review</a></div>
			</div>
        </div>
        <!-- Content -->
        <div class="content">
            <div class="content1"><h1>총주문내역상세</h1></div>
            <div class="content2">

                <table id="tblOrder">
                    <thead>
                      <tr>
                     <th>주문 번호</th>
                        <th>아이디</th>
                        <th>주문일</th>
                        <th>룸이름</th>
                        <th>숙박일</th>
                        <th>숙박인원</th>
                        <th>숙박가격</th>
                        <th>제품명</th>  
                        <th>수량</th>
                        <th>개당 가격</th>
                        <th>결제 방법</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${orderView}" var="OV">
								<tr><td>${OV.order_num}</td>
								<td>${OV.id}</td>
								<td>${fn:substring(OV.order_date,0,10)}</td>
								<td>${OV.room_name}</td>
								<td>${fn:substring(OV.stay_date,0,10)}</td>
								<td>${OV.rt_howmany}</td>
								<td>${OV.room_price}</td>
								<td>${OV.prod_name}</td>
								<td>${OV.qty}</td>
								<td>${OV.prod_price}</td>
								<td>${OV.pay_way}</td>
						</c:forEach>
                    </tbody>
                  </table>
					 <input type=button value='목록가기' id=btnCancle>
					 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
            </div>
        </div>
        <!-- Footer -->
        <div class="footer">
            Copyright by PRoom
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

.on('click','#btnCancle',function(){
	document.location='/AdministratorOrder';
})

</script>
</html>