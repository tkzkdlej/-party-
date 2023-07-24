<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    
<!--     <link rel="stylesheet" href="./style.css"> -->
    
    <title>Gussi Party - 아이디 찾기</title>
</head>
<style>


	a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }
	

    #findidDialog {
    display:none;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 5px #ccc;
  }
  
  .findidTitle {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 20px;
  }
  
  .findidResult {
    font-size: 16px;
    margin-top: 20px;
  }
  
  .ui-dialog .ui-dialog-titlebar-close {
    display: none;
  }
  
 .off-screen {
	display: none;
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
    font-size: 20px;
}
.header > .gnb > .menu-btn {
    /* background-color: brown; */
    flex: 0 200px;
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

 .loginInput{ 
/*  	background-color:orange;  */
border:none;
 	
 } 
 
 .minsuk{
 	padding-top:100px;
 }
 
 .hello1{
 	width:640px;
/*  	background-color:red; */
 	display:flex;
 	justify-content: space-evenly;
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
          
           <div align=center><h3>아이디찾기</h3>
           <p>회원가입시 등록한 회원정보로 아이디를 찾으실 수 있습니다.</p>
           </div>
          <div align=center class="radio-wrap minsuk">
                    <label><input type="radio" name="find_id_type" id="use_email" value="email" checked="checked" /> 이메일</label>
                    <label><input type="radio" name="find_id_type" id="use_phone" value="mobile" /> 휴대폰</label>
                </div>
                <div align=center class="loginInput form-control">
                      &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="name" name="name"  style=width:300px; class="form-control form-control-lg" value="" maxlength="30" title="이름" placeholder=""><br>
                    <div class="div-idtype" id="find_id_email_wrap"><br>
					 <input type="text" id="email" name="email" style=width:300px; class="form-control form-control-lg" value="" maxlength="80" title="이메일 주소" placeholder=""></div>
                    <div class="div-idtype" id="find_id_mobile_wrap" style="display:none;">       
                     <input type="text" id="mobile" name="mobile" style=width:300px; class="form-control form-control-lg" value="" maxlength="20" title="휴대폰번호"></div><br>
                	<div>
                	
                	<div class=hello1>
                	<button id=btnFind class="btn btn-primary">확인</button>
                	 <button id=loggggin class="btn btn-primary">로그인</button>
                	</div>
                	</div>
                       
   				<input type="hidden" id="findid" style="border:none" placeholder="아이디:">
                </div>
               
                </div>
                
           </div>
   				<div class="findidDialog" id="findidDialog">
   				</div>
        Footer
        <div class="footer">
            Copyright by PRoom
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
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
});





$(document)
.on('click','#btnFind',function(){	
	var name = $('#name').val();
    var email = $('#email').val();
    var mobile = $('#mobile').val();
    var checked = $('input[name=find_id_type]:checked').val();

    if (!name) {
        alert('이름을 입력해주세요.');
        return;
    }

    if (checked == 'email' && !email) {
        alert('이메일을 입력해주세요.');
        return;
    }

    if (checked == 'mobile' && !mobile) {
        alert('휴대폰번호를 입력해주세요.');
        return;
    }
	if($('#use_email').prop('checked')==true){
		$.ajax({
			url:'/using_email',
			data:{name:$('#name').val(), mail:$('#email').val()},
			type:'post',
			dataType:'text',
			beforesend:function(data){
				$('#findid').val('')
			},
			success:function(data){
				if(data!=""){
				$('#findid').val('아이디: '+data)	
				$('#findidDialog').dialog({
//                     title:'아이디 찾기 결과',
                    modal:true,
                    width:450,
                    height:350,
                    resizable:false,
                    buttons: {
                        '닫기': function() {
                            $(this).dialog('close');
                        }
                    },
                    open:function(){
                        $(this).html('<p>아이디 찾기 결과 </p><p>아이디: '+data+'</p>');
                    }
                });
				}else{
					alert('입력하신 정보에 해당하는 아이디가 없습니다.')
				}
			}
		})
	}else if($('#use_phone').prop('checked')==true){
		console.log('using phone')
		$.ajax({
			url:'/using_phone',
			data:{name:$('#name').val(), phone:$('#mobile').val()},
			type:'post',
			dataType:'text',
			beforesend:function(data){
				$('#findid').val('')
			},
			success:function(data){
				if(data!=""){
					$('#findid').val('아이디: '+data)	
					  $('#findidDialog').dialog({
// 	                        title:'아이디 찾기 결과',
	                        modal:true,
	                        width:500,
	                        height:380,
	                        resizable:false,
	                        buttons: {
	                            '닫기': function() {
	                                $(this).dialog('close');
	                            }
	                        },
	                        open:function(){
	                        	 $(this).html('<p>아이디 찾기 결과 </p><p>아이디: '+data+'</p>');
	                        }
	                    });
				}else{
					alert('입력하신 정보에 해당하는 아이디가 없습니다.')
				}
			}
		})
	}
})
$('input[name="name"]').attr('placeholder','이름');
$('input[name="email"], input[name="email"]').attr('placeholder','이메일');
$('input[name="mobile"], input[name="mobile"]').attr('placeholder','휴대폰 번호');
jQuery('input[name=find_id_type]').click(function() {
    switch(jQuery(this).val()) {
        case 'mobile' :
            jQuery('#find_id_mobile_wrap').show();
            jQuery('#find_id_email_wrap').hide();
            $('#findid').val('')
            break;
        case 'email' : 
            jQuery('#find_id_mobile_wrap').hide();
            jQuery('#find_id_email_wrap').show();
            $('#findid').val('')
            break;
    }
})


$(document)

.on('click','#loggggin',function(){
	document.location = '/login';
})








</script>
</html>