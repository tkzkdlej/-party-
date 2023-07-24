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
    <title>PRoom</title>
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
    font-size: 20px;
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
    background-color: gray;
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

</style>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <!-- Logo -->
            <div class="logo-section">
                <a href =main.html>Gussi party</a>
            </div>
            <!-- GNB -->
            <div class="gnb">
                <!-- <div class="menu-btn"><a href =>home</a></div> -->
                <div class="menu-btn"><a href =/rsort>Party Room</a></div>
                <div class="menu-btn"><a href =/psort>Party Items</a></div>
                <div class="menu-btn"><a href =/Q&A>Board</a></div>
                <div class="menu-btn dropdown">
                    <img src="마이페이지아이콘.jpg" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
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
            </div>
        </div>
        <!-- Content -->
         <div class="content">
           <div class="content2">
  			<form action="updateView" method="Post">
			<table>
			<tr ><td>제목</td><td><input type=text value="${Btitle}" name=Btitle>
			조회수<input type=text name=B_rcount value="${B_rcount}" style='width:25px' readonly>
			작성자<input type=text name=B_writer value="${B_writer}" style='width:45px' readonly></td></tr>
			<tr><td>내용</td>
			<td><textarea cols="50" rows="20" name=Bcontent>${Bcontent}</textarea></td></tr>
			<tr><td>작성일</td><td><input type=text name=B_Create_date value="${B_Create_date}" readonly></td></tr>
			<tr><td>수정일</td><td><input type=text name=B_Update_date value="${B_Update_date}" readonly></td></tr>
			</table>
			<table align=center>
			<tr><td><input type=text id="board_num" value="${board_num}" name=board_num></td></tr>
<%-- 			<tr>${button}</tr>		 --%>
			
			<td><input class="btn btn-primary" type=submit value='등록' id=btnUpdate></td>
			<td><input  class="btn btn-secondary" type=button value='목록보기' id=btnShow></td>
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
    $(".dropdown-toggle").hover(
        function() {
            $(this).next(".dropdown-menu").stop(true, true).slideDown("fast");
        },
        function() {
            $(this).next(".dropdown-menu").stop(true, true).slideUp("fast");
        }
    );
})
// .on('click','#btnDelete',function(){
// 	let a=$(board_num).val();
// 	document.location='/delete/'+a;
// })
// .on('click','#tblBoard tr',function(){
// 	let a=$(this).find('td:eq(0)').text();
// 	document.location='/Qview/'+a;
// })
.on('click','#btnShow',function(){
	document.location='/';
})
</script>
</html>