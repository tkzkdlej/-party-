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

a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }

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
   padding-bottom:20px;
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
   font-size: 19px;
   padding-bottom:50px;
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
/*     background-color: salmon;  */
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
            <div class="content1"><h1 class=orderlist>총 주문내역</h1></div>
            <div class="content2">

                <table id="tblOrder">
                    <thead>
                      <tr>
                        <th>주문번호</th>
                        <th>카트번호</th>
                        <th>아이디</th>
                        <th>주문일</th>
                        <th>주소</th>
                        <th>전화번호</th>
                        <th>이름</th>
                        <th>총금액</th>  
                        <th>결제방법</th>
                        <th>배송상태</th>
                      </tr>
                    </thead>
                    <tbody>
                           <form role="form" method="post" action="/delivery" class="deliveryForm">
                      <c:forEach items="${AO}" var="adminOrder">
                        <tr><td>${adminOrder.order_num}</td>
                        <td>${adminOrder.tcart_num}</td>
                        <td>${adminOrder.id}</td>
                        <td>${fn:substring(adminOrder.order_date,0,10)}</td>
                        <td>${adminOrder.saddress}</td>
                        <td>${adminOrder.s_phone}</td>
                        <td>${adminOrder.s_name}</td>
                        <td>${adminOrder.total_price}</td>
                        <td>${adminOrder.pay_way}</td>
                        <td>${adminOrder.delivery}</td></tr>
                        <div class="deliveryChange">
                           <input type="hidden" name="order_num" value="${adminOrder.order_num}">
                             <input type="hidden" name="hdelivery" id="${adminOrder.order_num}" class="hdelivery" value="">
                        <td colspan=10 style="text-align: right"><input type="button" id="btnDel" name="${adminOrder.tcart_num}" value="주문삭제">
                        <input type="button" id="delivery1_btn" name="${adminOrder.order_num}" value="배송중">
                        <input type="button" id="delivery2_btn" name="${adminOrder.order_num}" value="배송완료"></td>
                        </div>
                  </c:forEach>
                        </form>
                    </tbody>
                  </table>
                  <tfoot>
                <tr>
                  <td colspan="7">총합:</td>
                  <td>
                    <%-- total price sum --%>
                    <c:set var="totalPriceSum" value="0" />
                    <c:forEach items="${AO}" var="adminOrder">
                      <c:set var="totalPriceSum" value="${totalPriceSum + adminOrder.total_price}" />
                    </c:forEach>
                     ${totalPriceSum}
                  </td>
                  <td colspan="2"></td>
                </tr>
              </tfoot>
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

.on('click','#btnDel',function(){
   let a = $(this).attr('name');
   $.ajax({
       url: "/orderlistDel", 
       type: "post",
       dataType: "text",
       data: { tcart_num: a },
       success: function(data) {
         if (data == "ok") {
           location.reload()
         } else {
           alert("delete 실패")
         }
       } 
   });
})
.on('click','#tblOrder tr:gt(0)',function(){
   let a=$(this).find('td:eq(1)').text();
   document.location='/AdministratorOrderView/'+a;
})
// ---------------
.on('click','#delivery1_btn',function(){
   let a = $(this).attr('name');
   console.log(a)
    $('#'+a+'').val("배송중");
    run()
    return false;
   })
   
   .on('click','#delivery2_btn',function(){
   let a = $(this).attr('name');
   console.log(a)
    $('#'+a+'').val("배송완료");
    run();
    return false;
   })
      function run(){
       console.log("hi")
    $(".deliveryForm").submit();
   }

</script>
</html>