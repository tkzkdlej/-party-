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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
            crossorigin="anonymous"></script>
    <title>rsort</title>
</head>
<style>

    .html, body {
        margin: 0;
        padding: 0
    }

    .container {
        /* background-color: purple; */
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        
        /* margin: 0 auto; */
        /* min-width: 980px; */
        /* max-width: 1024px; */
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

    a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }

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
        font-size: 22px;
        margin-bottom: 50px;
    }

    .header > .gnb > .menu-btn {
        /* background-color: brown; */
        flex: 0 120px;
        text-align: center;
    }


    .content {
        /* background-color: aqua; */
        flex: 1 1000px;
        display: flex;
        flex-direction: column;
        
    }

    .content2 {
        /* background-color: khaki; */
        flex: 4;
        display: flex;
        flex-direction: row;
        /* position: relative; */
        /* position: static; */
       
    
    }

    .content3 {
        /* background-color: fuchsia; */
        flex: 6;

    }

    .content4 {
        /* background-color: slateblue; */
        flex: 1;

    }

    .image {
        /* background-color: lawngreen; */
        flex: 0 600px;
        display: flex;
        flex-direction: column;
        


    }

    .image1 {
        /* background-color: firebrick; */
        flex: 3;

    }

    .image2 {
        /* background-color: violet; */
        flex: 5;
        display: flex;
        justify-content: center;
        position: relative;
        width: 100%;
        max-width: 600px;
        margin: 0 auto;
    }

    .image3 {
        /* background-color: gray; */
        flex: 2;
    }

    .text {
        /* background-color: teal; */
        flex: 1;
        display: flex;
        flex-direction: column;
        

    }

    .text1 {
        /* background-color: red; */
        flex: 1.5;
        padding: 50px;
        /* padding-left: 50px; */
        /* font:bold; */
    }

    .text2 {
        /* background-color: blue; */
        flex: 7;
        display: flex;
        flex-direction: column;
        padding:50px;
    }

    .price1 {
        /* background-color: orange; */
        flex: 1;
        display: flex;
        flex-direction: row;
       
    }

    .price2 {
        /* background-color: darkcyan; */
        flex: 1;
        display: flex;
        flex-direction: row;
    }

    .price3 {
        /* background-color: lime; */
        flex: 1;
        display: flex;
        flex-direction: row;
    }

    .price4 {
        /* background-color: firebrick; */
        flex: 1;
        display: flex;
        flex-direction: row;
    }

    .price5 {
        /* background-color: gold; */
        flex: 1;
        display: flex;
        flex-direction: row;
    }

    .timeprice1 {
        /* background-color: skyblue; */
        flex: 1;
        padding: 10px;
    }

    .timeprice2 {
        /* background-color: rebeccapurple; */
        flex: 1;
        padding: 10px;
    }

    .timeprice3 {
        /* background-color: fuchsia; */
        flex: 1;
    }

    .timeprice4 {
        /* background-color: lightcoral; */
        flex: 1;
    }

    .timeprice5 {
        /* background-color: darkgoldenrod; */
        flex: 1;
    }

    .timeprice6 {
        /* background-color: lightblue; */
        flex: 1;
    }

    .timeprice7 {
        /* background-color: red; */
        flex: 1;
    }

    .timeprice8 {
        /* background-color: olive; */
        flex: 1;
    }

    .timeprice9 {
        /* background-color: blue; */
        flex: 1;
    }

    .timeprice10 {
        /* background-color: turquoise; */
        flex: 1;
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


    .slide-container {
        display: flex;
        overflow: hidden;
        width: 100%;
        height: 300px;
        position: relative;

    }

    .slide {
        flex-shrink: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.5s;
    }

    .prev-btn,
    .next-btn {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        font-size: 2rem;
        background-color: transparent;
        border: none;
        cursor: pointer;
        outline: none;
        z-index: 1;
    }

    .prev-btn {
        left: 10px;
    }

    .next-btn {
        right: 10px;
    }

    body {
        font-family: Arial, sans-serif;
    }

    nav {
      display: flex;
  justify-content: space-around;
  background-color: #f8f8f8;
  padding: 1em;
  position: -webkit-sticky;
  position: sticky;
  top: 0;
    }

    nav a {
        text-decoration: none;
        color: #333;
    }

    nav a:hover {
        color: #0077cc;
    }

    


    section {
        min-height: 100vh;
        padding: 2em;
    }

    .detail {
        display: none;
        /* background-color: green; */
        height: auto;
        padding:10px;
        font-size: 15px;
        border: 2px solid red;
    }

    .line {
  height: 1px;
  width: 100%;
  background-color: black;
  border-style: dashed; /* 선 스타일 */
  border-width: 2px; /* 선 두께 */
  border-color: black; /* 선 색상 */
}

.img-resize {
  width: 15px; /* 이미지의 너비를 조절하세요 */
  font-size: 10px;
}


h1 {
      font-weight: bold;
      
    }

</style>
<body>
<div class="container">
    <!-- Header -->
    <div class="header">
        <!-- Logo -->
        <div class="logo-section">
            <a href=main.html> <img src="img/gussi Party logo.jpg" ></a>
        </div>
        <!-- GNB -->
        <div class="gnb">
            <!-- <div class="menu-btn"><a href =>home</a></div> -->
            <div class="menu-btn"><a href=/rsort>𝑷𝒂𝒓𝒕𝒚 𝑹𝒐𝒐𝒎</a></div>
            <div class="menu-btn"><a href='/psort'>𝑷𝒂𝒓𝒕𝒚 𝑰𝒕𝒆𝒎𝒔</a></div>
            <div class="menu-btn"><a href='/Q&A'>𝑩𝒐𝒂𝒓𝒅</a></div>
            <div class="menu-btn dropdown">
                <img src="img/mypageicon.png" width="30px" class="menu-icon dropdown-toggle" alt="마이페이지">
                <div class="dropdown-menu">
                    <a href="#">로그인</a>
                    <a href="#">회원정보수정</a>
                    <a href="#">게시물관리</a>
                </div>
                <img src="img/shoppingcart.ico" width="30px" class="menu-icon dropdown-toggle" alt="장바구니">
                <div class="dropdown-menu">
                    <a href="#">찜한목록</a>
                    <a href="#">장바구니 전체목록</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Content -->
    <div class="content">
        <div class="content2">
            <div class="image">
                <div class="image1">  <h1>한강뷰 건대파티룸 스페이스 주다</h1><br>
                    <div> <h4>건대 먹자골목 핫 플레이스</h4></div>
                </div>
                <div class="image2">
                    <div id="carouselExampleIndicators" class="carousel slide">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                    class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                    aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                    aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="https://moplqfgeemqv2103108.cdn.ntruss.com/service/167921223_9ec72abd8eb3a6591b30fff64d03713d.jpg?type=m&w=900&h=900&autorotate=true&quality=90"
                                     class="d-block w-100" style="height: 100%; width: 100%;">
                            </div>
                            <div class="carousel-item">
                                <img src="https://moplqfgeemqv2103108.cdn.ntruss.com/service/167792956_5acb51e0e57df5113b0cf4cae66e9b8c.jpg?type=m&w=900&h=900&autorotate=true&quality=90"
                                     class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="https://moplqfgeemqv2103108.cdn.ntruss.com/service/168000346_cdc679bebbe282e170ab6fe0dca8445e.jpg?type=m&w=900&h=900&autorotate=true&quality=90"
                                     class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                                data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                                data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                <div class="image3">
                    <span><h3 id="subtitle">16벌 드레스&프로포즈 올 세팅 가능 한강뷰 공간</h3></span>
                </div>
            </div>
            <div class="text">
                <div class="text1">
                    <div><h5>호스트 승인후 예약 확정</h5></div>
                    <div><h5>확실한 예약을 위해 스페이스클라우드에서</h5></div>
                    <div><h5>온라인 결제를 진행하세요:</h5></div>
                </div>
                <div class="text2">

                    <div class="price1">
                        <div class="timeprice1">
                            <div class="radio-button">
                                <input type="radio" id="option1" name="time" value="option1" onchange="radioChangeHandler(1)">
                                <label for="option1">19시 이후로
                                    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;선택 가능</div>
                                </label>
                            </div>
                            <div class="detail">
                                <img src="https://moplqfgeemqv2103108.cdn.ntruss.com/service/165707024_69baf7b12ba869eb9d7739732666a7d7.jpg?type=m&w=900&h=900&autorotate=true&quality=90"
                                     class="d-block w-100" alt="...">
                                     <p>스페이스 JUDA는 강변역10분, 광나루역 도보9분</p>
                                     <p>이내 그랜드 워커힐 인근데 위치한 한강뷰 공유공간입니다.</p>
                                     <br>
                                     <p>스페이스 JUDA는 누구나 가보고 싶은 공간을 누구나</p>
                                     <p>올 수 있게 내어주면 어떨까? 라는 생각으로 시작되었습니다</p>
                                     <p>다른 세상이라 여겼던 곳에서 여러분의 특별하고 소중한 날을 채워 드리겠습니다.</p>
                                     <div class="line"></div>
                                     <h4>공간유형</h4>&nbsp;<p>세미나실 파티룸 공유주방</p>
                                     <div class="line"></div>
                                     <h4>공간면적</h4>&nbsp;<p>86평</p>
                                     <div class="line"></div>
                                     <h4>예약시간</h4>&nbsp;<p>최소 3시간 부터</p>
                                     <div class="line"></div>
                                     <h4>수용인원</h4>&nbsp;<p>최소2명~최대30명</p>
                                     <div> 
                                        <img class="img-resize" src="주류반입가능.JPG"> 주류반입가능
                                        <img class="img-resize" src="음향마이크.JPG"> 음향/마이크   
                                    </div>
                                    <div >
                                        <img class="img-resize" src="의자테이블.JPG">의자/테이블
                                        <img class="img-resize" src="취사시설.JPG">취사시설
                                      </div>
                                      <div>
                                        <img class="img-resize" src="탈의실.JPG">탈의실&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <img class="img-resize" src="음식물반입가능.JPG">음식물반입가능
                                      </div>
                                      <div>
                                        <img class="img-resize" src="주차.JPG">주차&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <img class="img-resize" src="금연.JPG">금연
                                      </div>
                                      
                            </div>
                        </div>
                        <div class="timeprice2">
                            <span>39,000원 (19시 이후)</span>
                        </div>
                    </div>
                    <div class="price2">
                        <div class="timeprice1">
                            <div class="radio-button">
                                <input type="radio" id="option1" name="time" value="time1" onchange="radioChangeHandler(2)">
                                <label for="option2">패키지 1: 저녁 (19시 ~ 자정) - 98,000원</label>
                            </div>

                            <div class="detail">
                                <img src="https://moplqfgeemqv2103108.cdn.ntruss.com/service/165569547_75166754647506f03f6e802af0d6bd22.jpg?type=m&w=900&h=900&autorotate=true&quality=90"
                                     class="d-block w-100" alt="...">
                                     <p>스페이스 JUDA을지로점은 2,5호선 을지로4가역 3번출구</p>
                                     <p>1초 거리에 있습니다</p>
                                     <br>
                                     <p>아득한 실내, 스페셜한 정원, 그리고 바베큐를 할 수 있는 루프탑 공간이 있습니다.</p><br>
                                     <p>스페이스JUDA는 누구나 가보고 싶은 공간을</p><br>
                                     <p>누구나 올 수 있게 내어주면 어떨까? 라는 생각으로 시작 되었습니다..</p>
                                     <div class="line"></div>
                                     <h4>공간유형</h4>&nbsp;<p>회의실 세미나실</p>
                                     <div class="line"></div>
                                     <h4>공간면적</h4>&nbsp;<p>99평</p>
                                     <div class="line"></div>
                                     <h4>예약시간</h4>&nbsp;<p>최소 3시간 부터</p>
                                     <div class="line"></div>
                                     <h4>수용인원</h4>&nbsp;<p>최소1명~최대36명</p>
                                     <div class="line"></div>
                                     <h4>예약기준</h4>&nbsp;<p>6명 초과시 10000원/인</p>
                                     <div> 
                                        <img class="img-resize" src="주류반입가능.JPG"> 주류반입가능
                                        <img class="img-resize" src="음향마이크.JPG"> 음향/마이크   
                                    </div>
                                    <div >
                                        <img class="img-resize" src="의자테이블.JPG">의자/테이블
                                        <img class="img-resize" src="취사시설.JPG">취사시설
                                      </div>
                                      <div>
                                        <img class="img-resize" src="탈의실.JPG">탈의실&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <img class="img-resize" src="음식물반입가능.JPG">음식물반입가능
                                      </div>
                                      <div>
                                        <img class="img-resize" src="주차.JPG">주차&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <img class="img-resize" src="금연.JPG">금연
                                      </div>

                            </div>
                        </div>
                        <div class="timeprice2">
                            <span>39,000원 (19시 이후)</span>
                        </div>
                    </div>
                    <div class="price3">
                        <div class="timeprice1">
                            <div class="radio-button">
                                <input type="radio" id="option2" name="time" value="time2" onchange="radioChangeHandler(3)">
                                <label for="option2">패키지 1: 저녁 (19시 ~ 자정) - 98,000원</label>
                            </div>
                            <div class="detail">
                                상세 설명 2222
                            </div>
                        </div>
                        <div class="timeprice2">
                            <span>39,000원 (19시 이후)</span>
                        </div>
                    </div>
                    <div class="price4">
                        <div class="timeprice1">
                            <div class="radio-button">
                                <input type="radio" id="option3" name="time" value="time3"  onchange="radioChangeHandler(4)">
                                <label for="option2">패키지 1: 저녁 (19시 ~ 자정) - 98,000원</label>
                            </div>
                            <div class="detail">
                                상세 설명 3333
                            </div>
                        </div>
                        <div class="timeprice2">
                            <span>39,000원 (19시 이후)</span>
                        </div>
                    </div>
                    <div class="price5">
                        <div class="timeprice1">
                            <div class="radio-button">
                                <input type="radio" id="option4" name="time" value="time4" onchange="radioChangeHandler(5)">
                                <label for="option2">패키지 1: 저녁 (19시 ~ 자정) - 98,000원</label>
                            </div>
                            <div class="detail">
                                상세 설명 4444
                            </div>
                        </div>
                        <div class="timeprice2">
                            <span>39,000원 (19시 이후)</span><br><br>
                            <button type="button" class="btn btn-primary btn-sm" width="80px;">reservation</button>
                        
                        </div>
                    </div>

                </div>
            </div>

        </div>


        <div class="content3">
            <nav >
                <a href="#section1" class="nav-link">공간소개</a>
                <a href="#section2" class="nav-link">시설안내</a>
                <a href="#section3" class="nav-link">유의사항</a>
                <a href="#section4" class="nav-link">환불정책</a>
                <a href="#section5" class="nav-link">이용후기</a>
                <a href="#section6" class="nav-link">이용후기</a>
            </nav>

            <section id="section1">
                <h2>공간소개</h2>
                <p>
                <p>★★카톡주시면 내부동영상 보내드려요</p>
                <p>★★예약이 있을수 있으니 예약하기전 사전문의 주세요</p>
                <p>★★카톡 주시면 내부 동영상 보내드려요 전화번호 010-3024-8420★★</p>
                <br>
                <p>##공지##</p>
                <br>
                <p>공적모임(촬영,회의등)은 면적당 인원으로 이용가능하오니 사전문의 주세요!</p>
                <br>
                <p>- 시간 조정등 자세한 문의도 호스트에게 연락주세요.</p>
                <br>
                <p>백석동 그린빌2차 201동도 예약가능합니다.</p>
                <br>
                <p>미성년자도 예약 가능합니다</p>
                <br>
                <p>매일 내부소독 진행중이며,청소도 매일 운영하고있고</p>
                <p>체온계와 손소독제, 세정제가 구비되어있습니다.</p>
                <p>안심하시고 이용해주셔도 되세요.</p>
                <br>
                <p>- 백석그린빌2차아파트정류장 도보 2분</p>
                <p>- 편의점 도보 5초</p>
                <p> 스타벅스 도보 5분</p>
                <br>
                <p>영업시간 0~24시</p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>휴무일&nbsp;&nbsp;&nbsp;없음</p>
                <img src="img/지하1층.jpg" class="menu-icon dropdown-toggle" alt="장바구니"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="img/주차불가.jpg" class="menu-icon dropdown-toggle" alt="장바구니"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="img/엘리베이터없음.JPG" class="menu-icon dropdown-toggle" alt="장바구니"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
            </section>

            <section id="section2">
                <h2>시설안내</h2>
                <p>
                <p>
                <h4>1.&nbsp; 10인치 우퍼2개,3인치트위터4개 다이나믹한 (2020년최신곡완벽)최신노래방기계</p>
                    <p>
                    <h4>2. &nbsp;약 200개 종류의 준하의 장난감이 있는 방</p>
                        <p>
                        <h4>3. &nbsp;다 함께 즐길 수 있는 100여개의 준하의 장난감들 할리갈리,다빈치코드,부루마블,젠가 등등!!</p>
                            <p>
                            <h4>4. &nbsp;코인 ★무제한★의 2000개 오락실게임3개 (메탈슬러그, 보글보글, 스트리트오브파이터,1945 등)</p>
                                <p>
                                <h4>5. &nbsp;다양한 미니 게임들: 다트, 미니포켓볼, 테이블축구, 바둑,빙고,땅따먹기 등</p>
                                    <p>
                                    <h4>6. &nbsp;테이블들을 치우면 공간을 더 넓게 이용할 수 있어요(3인쇼파 & 접이식 테이블2개 & 의자10개)</p>
                                        <p>
                                        <h4>7. &nbsp;스마트폰 충전기(5핀,8핀, C형 모두 가능), 전자레인지, 삼각대,정수기 ,냉장고 , 냉난방기</p>
                                            <p><h4>8 &nbsp;천장 레일 조명.LED화려한 조명(8가지색상),(나혼자산다 화제의 아이템 김준하레이져),조명 6가지 더<br>
                                                조명 화려합니다 010-3024-8400 연락주세요</p>
                                                </p>
            </section>

            <section id="section3">
                <h2>유의사항</h2>
                <p>
                <h2>예약시 주의사항</h2><br>
                <p>
                <h4>1.&nbsp; 보증급 8만원이 있습니다 확인후 감사한 마음으로 돌려드립니다!</p>
                    <p>
                    <h4>2.&nbsp; 실내는 절대 금연입니다. 밖에서 흡연해주세요 :D</p>
                        <p>
                        <h4>3.&nbsp; 취사는 불가능 해요 ㅠㅠ.. 전자렌지를 사용하는 냉동음식 및 배달 음식을 이용해 주시면 감사하겠습니다<br>
                            실내 버너는 절대 금지 ㅠ.ㅠ
                            </p>
                            <p>
                            <h4>4.&nbsp;인원수 제한은 없지만 4~6명을 추천해요</p>
                                <p>
                                <h4>5.&nbsp; 분리수거 및 쓰레기 버리기는 직접 해주셔요해요..! (봉투는 저희가 준비할게요!)</p>
                                    <p>
                                    <h4>6.&nbsp; 모든 시설을 깨끗하게 소중히 사용해주세요</p>
                                        <p><h4>7.&nbsp; 범죄예방,시설보호,화재 예방 등 안전의 목적으로 실내에 CCTV 한 대가 설치되어 있습니다.!</p>
                                            </p>
            </section>

            <section id="section4">
                <h2>환불정책</h2>
                <p>
                <h2>환뷸규정안내</h2><br><br>
                <p style="color:red">이용당일(첫 날)이후에 환불 관련 사항은 호스트에게 직접 문의하셔야 합니다.</p>
                <p>결제 후 2시간 이내에는 100% 환불이 가능합니다. (단, 이용시간 전 까지만 가능)</p>
                <br>
                <p>이용 8일전 &nbsp;&nbsp; 총 금액의 100% 환불</p>
                <p>이용 7일전 &nbsp;&nbsp; 환불 불가</p>
                <p>이용 6일전 &nbsp;&nbsp; 환불 불가</p>
                <p>이용 5일전 &nbsp;&nbsp; 환불 불가</p>
                <p>이용 4일전 &nbsp;&nbsp; 환불 불가</p>
                <p>이용 3일전 &nbsp;&nbsp; 환불 불가</p>
                <p>이용 2일전 &nbsp;&nbsp; 환불 불가</p>
                <p>이용 전날 &nbsp;&nbsp; 환불 불가</p>
                <p>이용 당일 &nbsp;&nbsp; 환불 불가</p>
                </p>
            </section>

            <section id="section5">
                <h2>이용후기</h2>

                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">후기작성</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div class="mb-3">
                    <button type="button" class="btn btn-primary">작성하기</button>
                </div>

                <div class="review-container">
                    <div class="review-item">
                        <div class="card mb-3">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h5 class="card-title">파티룸 A 이용후기</h5>
                                        <p class="card-text">친구들과 연말에 좋은 시간을 보낼 수 있어서 좋았습니다. 시설도 깨끗하고 분위기도 좋아서 오랜만에 만난
                                            친구들과 좋은 시간 보냈네요! 추천합니다.</p>
                                        <p class="card-text" style="text-align: right"><small
                                                class="text-body-secondary">tester | 3 분전</small></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h5 class="card-title">파티룸 A 이용후기</h5>
                                        <p class="card-text">친구들과 연말에 좋은 시간을 보낼 수 있어서 좋았습니다. 시설도 깨끗하고 분위기도 좋아서 오랜만에 만난
                                            친구들과 좋은 시간 보냈네요! 추천합니다.</p>
                                        <p class="card-text" style="text-align: right"><small class="text-body-secondary">tester | 3 분전</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h5 class="card-title">파티룸 A 이용후기</h5>
                                        <p class="card-text">친구들과 연말에 좋은 시간을 보낼 수 있어서 좋았습니다. 시설도 깨끗하고 분위기도 좋아서 오랜만에 만난
                                            친구들과 좋은 시간 보냈네요! 추천합니다.</p>
                                        <p class="card-text" style="text-align: right"><small class="text-body-secondary">tester | 3 분전</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h5 class="card-title">파티룸 A 이용후기</h5>
                                        <p class="card-text">친구들과 연말에 좋은 시간을 보낼 수 있어서 좋았습니다. 시설도 깨끗하고 분위기도 좋아서 오랜만에 만난
                                            친구들과 좋은 시간 보냈네요! 추천합니다.</p>
                                        <p class="card-text" style="text-align: right"><small class="text-body-secondary">tester | 3 분전</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h5 class="card-title">파티룸 A 이용후기</h5>
                                        <p class="card-text">친구들과 연말에 좋은 시간을 보낼 수 있어서 좋았습니다. 시설도 깨끗하고 분위기도 좋아서 오랜만에 만난
                                            친구들과 좋은 시간 보냈네요! 추천합니다.</p>
                                        <p class="card-text" style="text-align: right"><small class="text-body-secondary">tester | 3 분전</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h5 class="card-title">파티룸 A 이용후기</h5>
                                        <p class="card-text">친구들과 연말에 좋은 시간을 보낼 수 있어서 좋았습니다. 시설도 깨끗하고 분위기도 좋아서 오랜만에 만난
                                            친구들과 좋은 시간 보냈네요! 추천합니다.</p>
                                        <p class="card-text" style="text-align: right"><small class="text-body-secondary">tester | 3 분전</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


        </div>
        <div class="content4"></div>
    </div>
    <!-- Footer -->
    <div class="footer">
        Copyright by PRoom
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>

<script>
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
});

    // ///////////////////////////////////////////////////////////////////////////////////

 $(document).ready(function () {
    var currentSlide = 0;
    var slideCount = $(".slide").length;

    function moveToSlide(slideIndex) {
        if (slideIndex < 0) {
            slideIndex = slideCount - 1;
        } else if (slideIndex >= slideCount) {
            slideIndex = 0;
        }

        $(".slide-container").css("transform", "translateX(" + (-100 * slideIndex) + "%)");
        currentSlide = slideIndex;
    }

    $(".prev-btn").on("click", function () {
        moveToSlide(currentSlide - 1);
    });

    $(".next-btn").on("click", function () {
        moveToSlide(currentSlide + 1);
    });
});






    /////////////////////////////////////////////////////////////////////////////////////////
    $(document).ready(function () {
        $('a.nav-link').on('click', function (event) {
            event.preventDefault();

            var target = $(this).attr('href');
            var targetPosition = $(target).offset().top;

            $('html, body').animate({scrollTop: targetPosition}, 1000);
        });
    });


/////////////////////////////////////////////////////////////////////////////////////////

    function radioChangeHandler(priceNumber) {

        $(`.price1 .detail`).css('display', 'none');
        $(`.price2 .detail`).css('display', 'none');
        $(`.price3 .detail`).css('display', 'none');
        $(`.price4 .detail`).css('display', 'none');
        $(`.price5 .detail`).css('display', 'none');

        $(`.price${priceNumber} .detail`).css('display', 'block');
    }
    
    
//     $(document).ready(function() {
//     $('input[type=radio]').on('click', function() {
//         const radioButton = $(this);
//         const previousValue = radioButton.data('prev-value');

//         if (previousValue) {
//             radioButton.prop('checked', false);
//             radioButton.data('prev-value', false);
//         } else {
//             radioButton.data('prev-value', true);
//         }
//     });
// });





</script>
</html>