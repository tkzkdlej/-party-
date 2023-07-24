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
    <title>Gussi Party - 리뷰 관리</title>
<!--     회원 정보 관리     -->
</head>
<style>

 a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }


  .off-screen {
	display: none;
}
#nav {
	width: 1100px;
	text-align: center;
	margin-top:5px;
	position:fixed;
}
#nav a {
	display: inline-block;
	padding: 3px 5px;
	margin-left: 3px;
	margin-right: 5px;
	font-family:Tahoma;
	background: #ccc;
	color: #000;
	text-decoration: none;
}
#nav a.active {
	background: #333;
	color: #fff;
}  
/* _____________________________________ */
   
.html, body {margin: 0; padding:0}
.container {
    /* background-color: purple; */
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
    font-size: 28px;
    padding-top:20px;
}
.header > .gnb > .menu-btn {
/*     background-color: brown; */
    flex: 0 120px;
    text-align: center;
}


.content {
    /* background-color: aqua; */
    flex: 1;
    display: flex;
    flex-direction: column;
}

.content1{
/*     background-color: forestgreen; */
    flex:1;
    display: flex;
    justify-content: space-around;
/*             border: 2px solid red; */

}
.content2{
    /* background-color: salmon; */
    flex:9;
    padding:10px;
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
/*  //////////////////////////////////////////////////////////////////////////  */
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
        
        .memberinquiry{
        	text-align:center;
        	padding-bottom:50px;
        }
/*  //////////////////////////////////////////////////////////////////////////  */

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
            <div class="content2">

                <h1 class=memberinquiry>리뷰 조회</h1>
                <table id=adminMember>
				   <caption>
						<form action="" id="setRows">
								<input type="hidden" name="rowPerPage" value="5">
						</form>
				
					</caption>
                    <thead>
                        <tr>
                            <th>review_num</th>
                            <th>r_writer</th>
                            <th>prod_num</th>
                            <th>room_num</th>
                            <th>rcontent</th>
                            <th>r_create_date</th>
                            <th>delete</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <!-- 조회된 회원 정보를 여기에 표시해주세요. -->
                       <c:forEach items="${AR}" var="adminRiv">
								<tr><td>${adminRiv.review_num}</td>
								<td>${adminRiv.r_writer}</td>
								<td>${adminRiv.prod_num}</td>
								<td>${adminRiv.room_num}</td>
								<td>${adminRiv.rcontent}</td>
								<td>${fn:substring(adminRiv.r_create_date,0,10)}</td>
								<td><input type="button" id="btnDel" name="${adminRiv.review_num}" value="삭제"></td></tr>
						</c:forEach>
                    </tbody>
                </table>

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
	    url: "/reviewDel",
	    type: "post",
	    dataType: "text",
	    data: { id: a },
	    success: function(data) {
	      if (data == "ok") {
	        
	        location.reload()
	      } else {
	        alert("delete 실패")
	      }
	    } 
	  });
})

// -------------------------------------------------
var $setRows = $('#setRows');

$setRows.submit(function (e) {
	e.preventDefault();
	var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환

//		console.log(typeof rowPerPage);

	var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
	if (!rowPerPage) {
		alert(zeroWarning);
		return;
	}
	$('#nav').remove();
	var $adminMember = $('#adminMember');

	$adminMember.after('<div id="nav">');


	var $tr = $($adminMember).find('tbody tr');
	var rowTotals = $tr.length;
//	console.log(rowTotals);

	var pageTotal = Math.ceil(rowTotals/ rowPerPage);
	var i = 0;

	for (; i < pageTotal; i++) {
		$('<a href="#"></a>')
				.attr('rel', i)
				.html(i + 1)
				.appendTo('#nav');
	}

	$tr.addClass('off-screen')
			.slice(0, rowPerPage)
			.removeClass('off-screen');

	var $pagingLink = $('#nav a');
	$pagingLink.on('click', function (evt) {
		evt.preventDefault();
		var $this = $(this);
		if ($this.hasClass('active')) {
			return;
		}
		$pagingLink.removeClass('active');
		$this.addClass('active');

		// 0 => 0(0*4), 4(0*4+4)
		// 1 => 4(1*4), 8(1*4+4)
		// 2 => 8(2*4), 12(2*4+4)
		// 시작 행 = 페이지 번호 * 페이지당 행수
		// 끝 행 = 시작 행 + 페이지당 행수

		var currPage = $this.attr('rel');
		var startItem = currPage * rowPerPage;
		var endItem = startItem + rowPerPage;

		$tr.css('opacity', '0.0')
				.addClass('off-screen')
				.slice(startItem, endItem)
				.removeClass('off-screen')
				.animate({opacity: 1}, 300);

	});

	$pagingLink.filter(':first').addClass('active');

});


$setRows.submit();
// ------

</script>
</html>