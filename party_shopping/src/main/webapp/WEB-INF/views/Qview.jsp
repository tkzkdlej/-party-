<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="./style.css"/>
     <link rel="stylesheet" href="./style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <title>PRoom</title>
</head>
<style>
   
   a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }
   
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
    font-size: 20px;
}
.header > .gnb > .menu-btn {
    /* background-color: brown; */
    flex: 0 250px;
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
    /* background-color: #f1f1f1; */
}

.content > .content2{
    /* background-color: firebrick; */
    flex:8;
    margin:80px;
}
.content > .content3{
    /* background-color: forestgreen; */
    flex:1;
    display: flex;
    flex-direction: row;
}

.content3 > .content4{
    /* background-color: gold; */
    flex:8;
    margin-left: 20px;
    display: flex;
    align-items: center;
    /* margin-bottom: 30px; */
}

.content3 > .content5{
    /* background-color: blue; */
    flex:1.5;
}



.content > .content6{
    /* background-color: darkmagenta; */
    flex:1;
    display: flex;
    /* align-items: center; */
    justify-content: center;
}







body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }
        
        .container2 {
            width: 80%;
            margin: 0 auto;
            padding: 1rem;
        }
        
        h1 {
            text-align: center;
            padding: 1rem;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th,
        td {
            border: 1px solid #ccc;
            padding: 0.5rem;
            text-align: left;
        }
        
        th {
            background-color: #f4f4f4;
            font-weight: bold;
        }
        
        tr:nth-child(even) {
            background-color: #f4f4f4;
        }

        .writer{
            height: 100px;
        }

        .content5 {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 5px;
}

.content5 #writer {
     background-color: white; 
    /* color: white; */
    border: none;
    cursor: pointer;
    padding: 8px 20px;
    font-size: 13px;
    font-weight: bold;
    border-radius: 5px;
    text-transform: uppercase;
    transition: 0.3s;
}

.fdfd{
	display:flex;
/* 	justify-content:center; */
	align-items:center; 
/* 	 border: 10px solid red; */
}


.content5 #writer:hover {
    background-color: #45a049;
}


$theme-colors: (
  "primary":    $primary,
  "secondary":  $secondary,
  "success":    $success,
  "info":       $info,
  "warning":    $warning,
  "danger":     $danger,
  "light":      $light,
  "dark":       $dark
);




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
            <form action="/modifyview" method="Post">
			<table>
			<tr ><td >제목</td><td><input  type=text value="${btitle}" id="Btitle" name=Btitle readonly>
			조회수<input  type=text id=B_rcount name=B_rcount value="${b_rcount}" style='width:50px' readonly>
			작성자<input  type=text id=B_writer name=B_writer value="${b_writer}" style='width:110px' readonly></td></tr>
			<tr><td>내용</td>
			<td><textarea  cols="50" rows="20" id=Bcontent name=Bcontent readonly>${bcontent}</textarea></td></tr>
			<tr><td>작성일</td><td><input  type=text id=B_Create_date name=B_Create_date value="${b_create_date}" readonly></td></tr>
			<tr><td>수정일</td><td><input  type=text id=B_Update_date name=B_Update_date value="${b_update_date}" readonly></td></tr>
			</table>
			<table align=center>
			<tr><td><input type=hidden id="board_num" value="${board_num}" name=board_num></td></tr>
<%-- 			<tr>${button}</tr>		 --%>
			
			 <%-- <% if(session.getAttribute("id").equals("관리자")){ %> --%>
<%-- 			 <c:if test="${id == b_writer}"> --%>
			<c:if test="${id == b_writer || sessionScope.id == '관리자'}">
			<td colspan=2>
						<input  type="button" value="삭제" id=btnDelete >
			</td>
			<td>
				<input  type="submit" value="수정" id=btnModify>
				</td>
			</c:if>
			 <%-- <% } %> --%>
			 
			<td>
				<input  type="button" value="목록보기" id=btnShow>
			</td>
			</table>
			</form>
           <div id="box"class="comment">

  <div id="comment"   class="comment-body">
    <div class="comment-header">
      <img src="img/너구리.jpg" alt="프로필 이미지" width=20px;><span class="author-name">아론</span>
    </div>
    <div class="comment-content">
      <p>안녕하세요❤ 공감 누르고 갑니다</p>
    </div>
    <div class="comment-footer">
      <a href="#" class="reply-btn">답글</a>
      <span class="comment-date">2020.12.17. 14:25</span>
    </div>
  </div>
</div>
  
  
			
           <div class="content3">
                <% if(session.getAttribute("id")!=null){ %>
                <div class="content5">
            	 <table>
				 <tr><td class=fdfd>내용 &nbsp;<textarea  cols="50" rows="5" id="BC_content" name=BC_content ></textarea></td></tr>
				 <td><input  type=button value='댓글 등록' id=BC_btnInsert></td></table> 
				<input type=hidden name=token id=token value="<%=request.getParameter("token")%>">
                </div>
				<% } %>
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
	
	
	
	showBC();
	
	
	
	
	
	
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
.on('click','#btnDelete',function(){
	let a=$(board_num).val();
	console.log([a]);
	
	
	document.location='/Qdelete/'+a;
})
// .on('click','#tblBoard tr',function(){
// 	let a=$(this).find('td:eq(0)').text();
// 	document.location='/Qview/'+a;
// })
.on('click','#btnShow',function(){
	document.location='/Q&A';
})
.on('click','#BC_btnInsert',function(){

	$.ajax({url:'/bcInsert',type:'post',data:{BC_content:$('#BC_content').val(),token:$('#token').val()},dataType:'text',
		beforeSend:function(){
		},
		success:function(data){
			$('#BC_content').val("");
			showBC();	
		}})
})
.on('click', '#remove', function() {
//                 	var bcNum = $(this).closest('#comment-header').find('#bcNum').val(); // 상위 div에서 bcNum 값 가져오기
//                 	alert(bcNum);
//                 	  // 서버로 해당 댓글의 삭제 요청 보내기
//                 	  // ...
                	  
                	  $.ajax({url:'/bcdel',type:'post',data:{num:$(this).val()},dataType:'text',
                			beforeSend:function(){
                			
                			},
                			success:function(data){
                				showBC();
                			}})
                	  
                	  
                	})




function showBC() {
  $.ajax({
    url: '/selectBC',
    type: 'post',
    data: {
      board_num: $('#board_num').val() 
    },
    dataType: 'json',
    beforeSend: function() {               
    },
    success: function(data) {
      $('#comment div').remove();
      for (let i = 0; i < data.length; i++) {
        let box = '<div id="comment-header" class="comment-header">' +
                  '<img src="img/너구리.jpg" alt="프로필 이미지" width=20px;>' +
                  '<span id="b_writer2" value="' + data[i]['BC_writer'] + '" class="author-name">' + data[i]['BC_writer'] + '</span>' +
                  '</div>' +
                  '<div class="comment-content">' +
                  '<p>' + data[i]['BC_content'] + '</p>' +
                  '</div>' +
                  '<div class="comment-footer">' +
                  '<div><span class="comment-date">' + data[i]['BC_create'] + '</span></div>' +
                  '<a href="#" class="reply-btn">답글</a>&nbsp;&nbsp;&nbsp;'
                  
        let box2='<button id="remove" value="' + data[i]['BC_num'] + '" class="reply-btn">삭제</button>'

        let box3='</div>';
        let box4='';
        if(data[i]['check']=='check'){
        	box4=box+box2+box3;
        }else{
        	box4=box+box3;
        }
        $('#comment').append(box4);
      }
    }
  });
}




</script>
</html>