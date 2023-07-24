


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <title>Join</title>
</head>
<style>

    *{
        box-sizing:border-box;
    }
   
html, body {margin: 0; padding:0}
.container {
    /* background-color: purple; */
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    
}
.header {
    /* background-color: blue; */
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
    padding-top:30px;
}
.header > .gnb > .menu-btn {
    /* background-color: brown; */
    flex: 0 200px;
    text-align: center;
}


.content {
/*        background-color: skyblue;    */
    flex: 3;
    display: flex;
    flex-direction: row;
/*     padding-top: 100px; 
/*      align-items: center; */
    justify-content: center;  
}

.content2{
/*        background-color: darkgoldenrod;    */
    flex:0.5;
  

}
.content3{
/*       background-color: teal;   */
    flex:0 1000px;
    display: flex;
    flex-direction: column;
    padding:5px;
    margin:100px;
    width: 900px; /* 너비 조절 */
  height: 800px; /* 높이 조절 */
     align-items: center;
    justify-content: center;  

}
.content4{
/*       background-color: fuchsia;   */
    flex:0.5;
}

.text{
/*         background-color: forestgreen;     */
    flex:8;
    display: flex;
    flex-direction: row;
    padding-left:50px;
      
   
}

.text2{
/*       background-color: gold;   */
    flex:1;
    display: flex;
    flex-direction: column;
    
/*     justify-content: center; */
/*     align-items: center;     */
    
}
.text3{
/*       background-color: blue;   */
    flex:3;
    
/*      display: flex;  */
/* /*     flex-direction: column;  */
}



.name{
/*       background-color: aqua;   */
    flex:1.2;
 
}
.name2{
/*       background-color: goldenrod;   */
    flex:1.5;
}

.name3{
/*       background-color: forestgreen;   */
    flex:1.5;
/*     margin-bottom:50px; */
}

.name4{
/*       background-color: darkkhaki;   */
    flex:1;
    
}
.name5{
/*       background-color: hotpink;   */
    flex:4;

}
.name6{
/*       background-color: teal;   */
    flex:1;

}
.name7{
/*       background-color: blue;   */
    flex:1;

}
.name8{
/*       background-color: violet;   */
    flex:1;

}





.information{
/*        background-color: salmon;    */
    flex:1;
    margin-bottom:10px;
}



.information2{
/*       background-color: chocolate;   */
    flex:1;
     margin-bottom:10px;
}
.information3{
/*       background-color: salmon;   */
    flex:1;
 
    
/*     padding-top:20px; */
}



.information4{
/*       background-color: chocolate;   */
    flex:1;
    margin-bottom:45px;
 
    
    
}
.information5{
/*       background-color: salmon;   */
    flex:2;
    margin-bottom:50px;
    
   
}



.information6{
/*       background-color: chocolate;   */
    flex:1;
     margin-bottom:20px;
     display: flex;
    flex-direction: row;
    align-items: center;
}
.information7{
/*       background-color: salmon;   */
    flex:1;
         margin-bottom:1px;
    
}



.information8{
/*       background-color: chocolate;   */
    flex:1;
}


.button{
    /* background-color: red; */
    flex:1;
     display: flex; 
     justify-content: space-around; 
     padding-top: 10px;
     border: none;
  border-radius: 5px;
  font-size: 14px;
  color: white;
  cursor: pointer;
  
}

.footer {
    flex: 0.5;
    /* background-color: pink; */
}

.content > .first{
    flex:0.5;
    /* background-color: lawngreen; */
} 
.content > .second{
    flex:5;
    /* background-color: blueviolet; */
    /* margin:10px; */
    
}
.content > .third{
    flex:1;
    /* background-color: olive; */
    
}
.join{
    border-radius: 50px;
}


.second {
  width: 100%;
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f2f2f2;
  border-radius: 5px;
  font-family: Arial, sans-serif;
  display: flex;
    flex-direction: column;
}

.second2{
   /* background-color: gold; */
   flex:10;
   display: flex;
    flex-direction: row;
}

.second3{
    /* background-color: silver; */
    flex:1;
}

.second4{
    /* background-color: lawngreen; */
    flex:1;
   
}

/* 
.second5{
    background-color: firebrick;
    flex:3;

}

.second6{
    background-color: hotpink;
    flex:1;
}
.second7{
    background-color: darkcyan;
    flex:1;
}
.second8{
    background-color: rebeccapurple;
} */

.second h1 {
  font-size: 24px;
  margin-bottom: 20px;
}

.second div {
  margin-bottom: 10px;
}

.second input[type="text"] {
  width: 100%;
  padding: 5px 10px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 3px;
}

.second select {
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
  background-color: #fff;
}

.second select#phone {
  width: 80px;
}

/* .second button {
  background-color: black;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 10px 0;
  cursor: pointer;
  border-radius: 3px;
  width: 50%;
} */

.second button:hover {
  background-color: black;
  border: 1px;
  border-radius: 50px;
}


.general-number {
    width: 100px; /* Adjust the width as needed */
}

.button-wrapper {
    
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
    padding: 20px 20px;
    text-align: center;
    font-size: 16px;
    border-radius: 30%;
    
    
}

.button-wrapper button {
    background-color: lightblue;
    width: 43%;
   
}

.second button:hover {
        background-color: pink;
        border: 1px;
        border-radius: 50px;
    }

.address-input {
    width: 100px; /* Adjust the width as needed */
}
.address2-input{
    width: 80%;
}
.address-button{
    color:aqua
}

input {
    /* 여기에 원하는 스타일 속성을 추가하십시오. */
    font-size: 14px;
    color: #333;
    padding: 5px 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}


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
    /* color: black; */
    text-decoration: none;
    display: block;
}

.dropdown-menu a:hover {
    background-color: #f1f1f1;
}

a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }


.information2 span {
  font-size: 3px;
}


 .button button { 
     background-color: black;  
    color: white; 
     border: none; 
/*       padding: 10px 16px;   */
     margin-left: 80px; 
     font-size: 15px; 
     cursor: pointer; 
     transition: all 0.3s; 
     border-radius:30px; 
     padding-top:20px; 
     padding-bottom:20px; 
     padding-right:30px;
     padding-left:30px; 
     margin-bottom:30px;
 } 

 .button button:hover { 
    background-color: #444; 
    transform: scale(1.1);
 }

.Membership{
	text-align:center;
	padding-top:60px;
}

.form-control{
	height:500px;
}
</style>


<body>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!--         <link rel="stylesheet" href="./style.css"> -->
        <title>JOin</title>
    </head>
    <body>
        <div class="container">
            <!-- Header -->
            <div class="header">
                <!-- Logo -->
                <div class="logo-section">
                    <a href = /main><img src="img/Gussi Party Logo.jpg"></a>
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
            <h2 class=Membership>Join Membership</h2>
            <!-- Content -->
            <div class="content">
                <div class="content2">

                
                </div>
                <form action="/doInsert" method="post" id=frmInsert>
                <div class="content3">
                    <div class="text">
                       
                        <div class="text3">
                           <div class="form-floating mb-3">
    <input type="text" class="form-control form-control-lg" placeholder="아이디" id="j_id" name="j_id" style=font-size:14px;>
    <label id="idGuide"  for="j_id">ID</label>
</div>
                          <div class="form-floating mb-3">
    <input type="password" class="form-control" placeholder="비밀번호" id="j_pwd" name="j_pwd" style="width: 400px;">
    <label id="psGuide"  for="j_pwd">Password</label>
    <div style="font-size: 3px;">(영문대소문자/숫자/특수문자, 10~16자)</div>
</div>
                           <div class="form-floating mb-3">
    <input type="password" class="form-control" placeholder="비밀번호 확인" id="j_pwdcf" name="j_pwdcf" style="width: 400px;">
    <label id="psGuide2"  for="j_pwdcf">Password Confirm</label>
    
</div>
                           <div class="form-floating mb-3">
    <input type="text" class="form-control" placeholder="이름" id="j_name" name="j_name" style=font-size:14px;  required>
    <label for="j_name">Name</label>
</div>
                            <div class="information5">
                                <input type="address" class="address-input" id=zip_code name=zip_code placeholder="우편번호" readonly><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>                                                                                               
                                <br> <input type="address" id=j_address1 name=j_address1 readonly class="address2-input" placeholder="기본주소" required>
                              <br>  <br><input type="address" id=j_address2 name=j_address2 class="address2-input" placeholder="상세주소" required>
                            </div>
                            <div class="information6">
								<select id=j_fisrtphone name=j_firstphone style="width: 80px;"
									class="form-select">
									<option value="010" selected>010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> - <input type="tel" id=j_midphone  name=j_midphone class="general-number"  required> - <input type="tel" id=j_lastphone name=j_lastphone class="general-number" required>
                            </div>
                            <div class="form-floating mb-3">
    <input type="email" class="form-control" placeholder="이메일" id="j_email" name="j_email" style="width: 500px;" required>
    <label for="floatingPassword">E-mail</label>
</div>
                           <div class="information8" style="display: flex; gap: 10px;">
							  <label for="year"></label>
							  <select id="j_year" name="j_year" style="width: 100px;" class="form-select">
							    <!-- 연도 -->
							  </select>
							
							  <label for="month">Year</label>
							  <select id="j_month" name="j_month" style="width: 80px;" class="form-select">
							    <!-- 월 -->
							  </select>
							
							  <label for="day">Month</label>
							  <select id="j_day" name="j_day" style="width: 80px;" class="form-select">
							    <!-- 일 -->
							  </select> Day
							</div>

                         
                        </div>



                    </div><br>
                <div class="button">
                    <button type="submit"  style=border-radius:30px;>회원가입</button>
                    <button id="cancel" type="cancel"  style=border-radius:30px; padding:50px;>취소</button>
                </div>

</form>
                </div>
                
                <div class="content4"></div>


            </div>
            <!-- Footer -->
            <div class="footer">
                Copyright by GucciRoom
            </div>
        </div>
    
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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











let slideIndex = 0;
            const slides = $(".slide");
            slides.hide();

            function showSlides() {
                slides.hide();
                slideIndex++;
                if (slideIndex > slides.length) {slideIndex = 1}
                slides.eq(slideIndex - 1).fadeIn(1000);
                setTimeout(showSlides, 3000); // Change image every 3 seconds
            }
            showSlides();


const yearSelect = document.getElementById("j_year");
const monthSelect = document.getElementById("j_month");
const daySelect = document.getElementById("j_day");

// 연도 옵션 추가
for (let i = 1900; i <= 2023; i++) {
    const option = document.createElement("option");
    option.value = i;
    option.text = i;
    yearSelect.add(option);
}

// 월 옵션 추가
for (let i = 1; i <= 12; i++) {
    const option = document.createElement("option");
    option.value = i;
    option.text = i;
    monthSelect.add(option);
}

// 일 옵션 추가
for (let i = 1; i <= 31; i++) {
    const option = document.createElement("option");
    option.value = i;
    option.text = i;
    daySelect.add(option);
}





$(document)

// by ChatGPT
.ready(function() {
  // ID 정규 표현식
  var idPattern = /^[a-zA-Z0-9]{4,20}$/;

  // 비밀번호 정규 표현식
  var pwPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,22}$/;

  // ID 입력 필드
  var idField = $('#j_id');

  // 비밀번호 입력 필드
  var pwField = $('#j_pwd');

  // ID 입력 필드의 값이 변경될 때마다 정규 표현식 패턴에 맞는지 확인
  idField.on('change', function() {
    var id = idField.val();
    if (!idPattern.test(id)) {
      alert('ID는 영어 소문자, 대문자, 숫자만 사용하여 4~20자 이내로 입력해주세요.');
      idField.val('');
    }
  });

  // 비밀번호 입력 필드의 값이 변경될 때마다 정규 표현식 패턴에 맞는지 확인
  pwField.on('change', function() {
    var pw = pwField.val();
    if (!pwPattern.test(pw)) {
      alert('비밀번호는 영어 소문자, 대문자, 숫자, 특수문자(@$!%*#?&) 중 최소 1개 이상을 포함하여 8~22자 이내로 입력해주세요.');
      pwField.val('');
    }
  });
})
.on('click','#cancel',function(){
   
	document.location = '/login';
})


.on('submit','#frmInsert',function(){
   
   let id = $('#j_id').val();
   if(id==''){alert('아이디를 입력해주세요'); return false;}
   
   let ps1 = $('#j_pwd').val(); if(ps1==''){alert('비밀번호를 입력해주세요');return false;}
   let ps2 = $('#j_pwdcf').val();
   
   if(ps1!=ps2){alert('비밀번호가 일치하지 않습니다');return false;}
})

.on('blur','#j_id',function(){
   
   $.ajax({url:'/idCheck',
          type:'post', 
          dataType:'text', 
         data:{j_id:$('#j_id').val()},
         
         success:function(data){
            $('#idGuide').text(data);
         }
   })
})

.on('blur','#j_pwdcf',function(){
   
   ps1 = $('#j_pwd').val();
   ps2 = $('#j_pwdcf').val();
   
   if(ps1==''||ps1==null){
      $('#psGuide2').text('비밀번호를 입력해주세요'); return false;
   }
   else if(ps1==ps2){
      $('#psGuide2').text('비밀번호가 일치합니다'); return false;
   } else {
      $('#psGuide2').text('비밀번호가 일치하지않습니다'); return false;
   }
})

    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("j_address2").value = extraAddr;
                
                } else {
                    document.getElementById("j_address2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip_code').value = data.zonecode;
                document.getElementById("j_address1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("j_address2").focus();
            }
        }).open();
        return false;
    }
    
</script>
</html>