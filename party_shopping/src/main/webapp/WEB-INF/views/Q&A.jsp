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
    
    
    
    <title>PRoom</title>
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
/*   	background-color:blue;   */
	width: 1250px;
/*  	text-align: left;  */
/*  	margin-top: 10px;  */
/*  	margin-right: 1px; */
/*  	margin-left: 490px; */
	padding-right:160px;
 	
/*  	padding:50px; */
}
#nav a {
	display: inline-block;
	padding: 3px 5px;
	margin-left: 1px;
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
    flex: 0 250px;
    text-align: center;
}


.content {
/*      background-color: aqua;  */
    flex: 1;
    display: flex;
    flex-direction: column;
    padding-top:100px;
}
.footer {
    flex: 0 80px;
    /* background-color: chartreuse; */
    padding:7px;
    display:flex;
    flex-direction: row;
    font-size: 12px;
    opacity: 0.7;
}

.footer2{
    flex:1;
    /* background-color: blue; */
}
.footer3{
    /* background-color:orange ; */
    flex:1;
}
.footer4{
    /* background-color: chocolate; */
    flex:1;
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
/*      background-color: firebrick;  */
    flex:8;
    margin:10px;
}
.content > .content3{
/*      background-color: forestgreen;  */
    flex:1;
    display: flex;
    flex-direction: row;
}

.content3 > .content4{
/*      background-color: gold;   */
    flex:8;
    margin-bottom:200px;
    margin-left: 80px;
    display: flex;
    align-items: center;
    justify-content:right;
    padding-right:50px;
    /* margin-bottom: 30px; */
}

.content3 > .content5{
/*      background-color: blue;  */
    flex:1.5;
}



.content > .content6{
/*      background-color: darkmagenta;  */
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
/*             border-collapse: collapse; */
/*             border-radius:30%; */
        }
        
        th,
        td {
/*             border: 1px solid #ccc; */
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

.pagination {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
}

.pagination li {
  margin: 0 5px;
}

.pagination li a {
  display: inline-block;
  padding: 5px 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  color: #333;
  font-size: 14px;
  text-decoration: none;
}

.pagination li.active a {
  background-color: #333;
  color: #fff;
}

.pagination li.disabled a {
  color: #ccc;
  cursor: not-allowed;
}

.pagination-1 {
  color: red;
}

.pagination-2 {
  color: blue;
}

.pagination-3 {
  color: green;
}

.pagination-4 {
  color: purple;
}

.pagination-5 {
  color: orange;
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
            <table id="tblBoard" class="table table-hover">
          
            <form action="" id="setRows" >
            <p><input type="hidden" name="rowPerPage" value="6"></p>
		</form>
		
		<thead>
                    <tr><th>NO</th><th>SUBJECT</th><th>WRITER</th><th>DATE</th><th>HIT</th></tr>
            </thead>
            </table>
           </div>

           <div class="content3">
                <div class="content4">
                   
                    <label for="user-id"></label>
<!--                     <input type="text" id="user-id" name="user-id" > -->
                    <% if(session.getAttribute("id")!=null){ %>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                  
                     <button class="btn btn-secondary Gussi" id="btnNew">글쓰기</button>
                    
                    <% }%>
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
            
              <div><button class="scroll-to-bottom"></button></div>
             <div><button class="scroll-to-top"></button></div>
        </div>
    </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
var rowTotals=0;
$(document).ready(function() {
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
	loadData();
    return false;
})
.on('click','#btnNew',function(){
	document.location='/new';
	return false;
})
.on('click','#tblBoard tr',function(){
	let a=$(this).find('td:eq(0)').text();
	let b=$(this).find('td:eq(2)').text();
	
	console.log(a);
	console.log(b);
	
	$.ajax({url:'/doQview',type:'get',data:{name:b,num:a},dataType:'text',
		beforeSend:function(){
		
		},
		success:function(data){
			document.location="/Qview?token="+data;
		}})
})
// ----------
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
	var $tblBoard = $('#tblBoard');

	$('#tblBoard').after('<nav aria-label="Page navigation example"><ul id="nav" class="pagination"></ul></nav>');

	 var $tr = $('tbody tr');
	  var rowTotals = $tr.length;
	console.log(rowTotals);
	var pageTotal = Math.ceil(rowTotals/ rowPerPage);
	var i = 0;

	for (; i < pageTotal; i++) {
		$('<li class="page-item"></li>')
		  .append($('<a class="page-link"></a>')
		    .attr('rel', i)
		    .html(i + 1))
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


$setRows.submit()
// --------------
function loadData(){
	$.ajax({url:'/blist',type:'get',data:{},dataType:'json',
		success:function(data){
// 			$('#tblBoard tr:gt(0)').remove();
			for(let i=0; i<data.length; i++){
				let str='<tbody><tr>';
				str+='<td>'+data[i]['board_num']+'</td>';
				str+='<td>'+data[i]['Btitle']+'</td>';
				str+='<td>'+data[i]['B_writer']+'</td>';
				str+='<td>'+data[i]['B_Create_date']+'</td>';
				str+='<td>'+data[i]['B_rcount']+'</td></tr></tbody>';
				$('#tblBoard').append(str);
			}
			
			 rowTotals =$('#tblBoard').find('tr:gt(0)').length;
			console.log(rowTotals);
			 $('#setRows').submit();
		}})
		return false;
}

$('<a href="#"></a>')
.attr('rel', i)
.html(i + 1)
.addClass('pagination-' + (i + 1)) // 클래스 추가
.appendTo('#nav');

////////////////////////////////////////////////////////
$(document).ready(function() {
           $('.scroll-to-bottom').on('click', function() {
               $('html, body').animate({
                   scrollTop: $(document).height() - $(window).height()
               }, 1000);
           });
       });
//////////////////////////////////////////////////////////////
 $(document).ready(function() {
           $('.scroll-to-top').on('click', function() {
               $('html, body').animate({
                   scrollTop: 0
               }, 1000);
           });
       });
       
       ///////////////////////////////////////////////////
       
     $(document).ready(function() {
    $("#submit").on('click', function() {
        window.open("https://kcp.co.kr/main.do", "다이얼로그 이름", "옵션");
    });
  });
</script>

</html>