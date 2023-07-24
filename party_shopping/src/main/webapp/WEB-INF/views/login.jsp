<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="./style.css"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <title>Join</title>
    <title>Gussi Party - Login</title>
</head>
<style>
   
.html, body {margin: 0; padding:0}
.container {
    /* background-color: purple; */
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

button {
    border-radius: 1ch;
}

.header {
    /* background-color: red; */
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
    flex: 0 220px;
    text-align: center;
}


.content {
    /* background-color: aqua; */
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
}
.footer {
    flex: 0 80px;
    /* background-color: chartreuse; */
}
.login-container {
    /* background-color: purple; */
    width: 300px;
    
    display: flex;
    flex-direction: column;
    align-items: center;
    /* padding: 150px; */
}

.login-form {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    
}

.login-form label {
    margin: 5px 0;
}

.login-form input {
    width: 100%;
    margin-bottom: 10px;
}

.login-form button {
    width: 100%;
    padding: 5px;
    margin-top: 10px;
    background-color: #808080;
    font-size: 20px;
}
.login-form input::placeholder {
    font-size: 15px; /* 원하는 크기로 조절 */
}

.links {
    display: flex;
    justify-content: space-around;
    width: 100%;
    margin-top: 20px;
}

.links a {
    font-size: 18px; /* 원하는 크기로 조절 */
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

a {
  text-decoration-line: none;
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

</style>
<body>
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
            <div class="login-container">
                <h2>LOGIN</h2>
                
                 <form class="login-form form-control" action="/doLogin" method="post" id="L_fm" style=border:none;>
                       <label for="id"></label>
                         <input type="text" id="id" name="id" placeholder="ID" class="form-control">
                       <label for="pwd"></label>
                       <input type="password" id="pwd" name="pwd" placeholder="PASSWORD" class="form-control">
                       <button type="submit">Login</button>
                 </form>
                
                <div class="links">
                    <a href="/FindId">아이디 찾기</a>
                    <a href="/join">회원가입</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <div class="footer">
       Copyright by PRoom
    </div>
    
   ${guide}

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

.on('submit','#L_fm',function(){
   
   let id = $('#id').val();
   if(id == '' || id == null) {
      
      alert('아이디 항목은 필수 입력값입니다.');
      return false;

   } else {
      
      let pwd = $('#pwd').val();
      if(pwd == '' || pwd == null) {
      
         alert('패스워드 항목은 필수 입력값입니다.');
         return false;

      }
      
   }
   
   
})


</script>
</html>