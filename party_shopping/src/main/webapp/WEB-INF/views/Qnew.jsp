<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="./style.css"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <title>PRoom</title>
</head>
<style>
   
   
   
   *{
  
   	font-family: 'Roboto', sans-serif;
   }

#Btitle, #Bcontent {
  font-family: 'Noto Sans KR', sans-serif;
}
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

.content5 #writer:hover {
    background-color: #45a049;
}


.submitcancel{
 	display:flex; 
 	justify-content:center;
 	align-items:center;
}

.hi{
	display:flex;
	justify-content:center;
	align-items:center;
	
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
                    <img src="/img/mypageicon.png" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
                    <div class="dropdown-menu">
                  
                        <a href="/logout">로그아웃</a>
                        <a href="/mypage">마이페이지</a>
                    </div>&nbsp;
                    <img src="/img/shoppingcart.ico" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">
                    <div class="dropdown-menu">
                        <a href="/ShowCart">장바구니 전체목록</a>
                    </div>
                </div>
                <% } else {%>
                <div class="menu-btn dropdown">
                    <img src="마이페이지.jpg" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
                    <div class="dropdown-menu">
                        <a href="/login">로그인</a>
                        <a href="/join">회원정보수정</a>
                        <a href="#">게시물관리</a>
                    </div>
                    <img src="장바구니.jpg" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">
                    <div class="dropdown-menu">
                        <a href="#">찜한목록</a>
                        <a href="/ShowCart">장바구니 전체목록</a>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
        <!-- Content -->
        <div class="content">
           <div class="content2">
            <form action="/newQ&A" method="get" id=frmNew>
			<table border=1 align=center>
			<tr><td>제목</td><td><input type=text name=Btitle id=Btitle >
			<input type=text name=B_writer hidden readonly class="border border-success p-2 mb-2">
			</td>
			<tr><td>내용</td>
			
			
			<td><textarea cols="60" rows="20" name=Bcontent id=Bcontent></textarea>
			</td></tr>
			
			
			
			<tr class=submitcancel>
			<td colspan=2 class=hi>
			<input  type=submit value='등록' id=btnInsert>
			<input  type=button value='취소' id=btnCancle>
			</td>
			</tr>
		</table>
		</form>
           </div>
           <div class="content3">
                
                <div class="content5">
                    
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
	document.location='/Q&A';
})
.on('submit','#frmNew',function(){
	let Btitle=$.trim($('#Btitle').val());
	let Bcontent=$.trim($('#Bcontent').val());
	if(Btitle==null||Btitle==''){
		alert('제목을 입력하시오');
		return false;
	}
	if(Bcontent==null||Bcontent==''){
		alert('내용을 입력하시오');
		return false;
	}
	return true;
})


</script>
</html>