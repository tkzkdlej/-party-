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
    <title>Gussi Party - 룸 관리</title>
<!--     상품등록    -->
</head>
<style>
   
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
    flex: 1;
    display: flex;
    flex-direction: column;
}

.content1{
/*     background-color: lawngreen; */
    flex:1;
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.content2{
/*     background-color: palevioletred; */
    flex:9;
    display: flex;
    justify-content: center;
    align-items: center;
    /* padding-right: 100px;s */

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


/* ----------------------------------------------------------------------- */
      /* 스타일 시트 */
      label {
        display: inline-block;
        width: 100px;
        text-align: right;
        margin-right: 10px;
      }
      input[type="text"], textarea {
        width: 300px;
        box-sizing: border-box;
        padding: 5px;
        margin-bottom: 10px;
      }
      textarea {
        height: 100px;
      }
      img {
        max-width: 300px;
        max-height: 300px;
        margin-bottom: 10px;
      }
      button {
        margin-right: 10px;
      }
      
       a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }
    
    
/* ----------------------------------------------------------------------- */


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
                        <a href="login">마이페이지</a>
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
            <div class=content1>
                <div class="content1">
                   
                <div class="menu-btn"><a href = "/Administratorproduct">Product</a></div>
                <div class="menu-btn"><a href = "/Administratorroom">Room</a></div>
                <div class="menu-btn"><a href ="/AdministratorOrder">Order</a></div>
                <div class="menu-btn"><a href ="/AdministratorMember">Member</a></div>
                <div class="menu-btn"><a href ="/AdministratorReview">Review</a></div>
                </div>
            </div>
            <h1 class="content1">상품수정</h1>
            <div class="content2">
               
               
                <form action="/updateRoom" method="post">
                  <label for="room_num">상품 코드:</label>
                  <input type="text" id="room_num" name="room_num" class="form-control form-control-lg" readonly value="${room.room_num}"><br>
                  
                  <label for="room_name">상품 이름:</label>
                  <input type="text" id="room_name" name="room_name" class="form-control form-control-lg" value="${room.room_name}"><br>
                  
                  <label for="room_price">상품 가격:</label>
                  <input type="text" id="room_price" name="room_price" class="form-control form-control-lg" value="${room.room_price}"><br>
                  
                  <label for="room_image">상품 사진:</label>
                  <input type="text" id="room_img" name="room_img" class="form-control form-control-lg"  value="${room.room_image}" readonly><br>
                  
                  <div class="mb-3">
                  <label for="room_image"></label><input type="file" class="form-control" id="room_image" name="room_image" ><br>   
                  <label for="room_content">상품 상세:</label>
                  </div>
                  
                  <div class="mb-3">
                   <input type="text" id="room_cont" name="room_cont" value="${room.room_content}" readonly><br>
                  <label for="room_content"></label><input type="file" class="form-control" id="room_content" name="room_content"><br>
                  </div>
                  
                  
                  <label for="howmany">수용가능인원:</label>
                  <input type="number" class="form-control form-control-lg" id="howmany" name="howmany" style=width:60px  value="${room.howmany}"><br>
                  <label></label>
                  <!-- <img src="#" alt="상품 이미지 미리보기"><br> -->
                  <input type=submit value='수정' id=btnModify>
                  <input type=button value='삭제' id=btnDelete>
                  <input type=button value='목록' id=btnList>
                </form>

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
    $(".dropdown-toggle").hover(
        function() {
            $(this).next(".dropdown-menu").stop(true, true).slideDown("fast");
        },
        function() {
            $(this).next(".dropdown-menu").stop(true, true).slideUp("fast");
        }        
    )
   
    $("#room_image").change(function(){
		$('input[name=room_img]').prop('value',
	         $('#room_image').val().split("\\")[2])
	   return false;
	
	})
	
	$("#room_content").change(function(){
  		$('input[name=room_cont]').prop('value',
         $('#room_content').val().split("\\")[2])
         return false;

   
})
})
	.on('click','#btnDelete',function(){
		let a=$(room_num).val();
		document.location='/roomDelete/'+a;
	})
    .on('click','#btnList',function(){
		document.location='/Administratorroom';
	})
    .on('click','#btnModify',function(){
     var formData = new FormData();   // 자바스크립트에서 폼 데이터를 다루는 객체
    var files = $('#room_image')[0].files[0];
    formData.append('file', files);
    
    var formData2 = new FormData();
    var room_content = $('#room_content')[0].files[0];
    formData2.append('room_content_file', room_content);
    
    			$.ajax({url:'/updatefile3', type:'post', dataType:'text', data:formData,        
    			      enctype:'multipart/form-data',
    			      contentType:false,
    			        processData:false,
    			      success:function(data) {
    			    	  
    			    	  $.ajax({url:'/updatefile4', type:'post', dataType:'text', data:formData2,        
    	    			      enctype:'multipart/form-data',
    	    			      contentType:false,
    	    			        processData:false,
    	    			      success:function(data) {
    	    			      
    	    			      }
    	    			   })
    			      }
    			   })
    	})

    	


</script>
</html>