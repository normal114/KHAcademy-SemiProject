<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=%{encoding}");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">

<title>우리동네 운동친구∴∵Heath Friends</title>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 슬라이드 라이브러리 -->
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">

<link href="assets/css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/introduce.css">
	

<script type="text/javascript">
	
	// 글자 나타나기
	$(document).ready(function(){
		$('.text01').fadeIn(2000);
		$('.text02').fadeIn(5000);
		$('.text03').fadeIn(7000);
	});
	
	
	// 글자 위로 올라오는 기능
	function isElementUnderBottom(elem, triggerDiff) {
	  const { top } = elem.getBoundingClientRect();
	  const { innerHeight } = window;
	  return top > innerHeight + (triggerDiff || 0);
	}

	function handleScroll() {
	  const elems = document.querySelectorAll('.title01, .title02, .text-danger, .text-info, .text06, .text07, .text04, .way01, .way02');
	  elems.forEach(elem => {
	    if (isElementUnderBottom(elem, 20)) {
	      elem.style.opacity = "0";
	      elem.style.transform = 'translateY(70px)';
	
	    } else {
	      elem.style.opacity = "1";
	      elem.style.transform = 'translateY(0px)';

	    }
	  })
	}
	window.addEventListener('scroll', handleScroll);
	
	// 슬라이드 기능
    $(document).ready(function(){
    	
        var slide1 = $('.slider').bxSlider({
        auto: true,
        pause: 2000
   	});
	
		$('.controls .play').on('click', function() {
			slide1.startAuto();
		})
		$('.controls .pause').on('click', function() {
			slide1.stopAuto();
		})
	
	});
	
	
    // 화면 위로 보내기
	function scrollFunction() { 
    	var btn = document.getElementById('btn');
    	if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) { 
    		btn.style.display = "block"; 
    	} else { 
    		btn.style.display = "none"; 
    	} 
    }
    
	function GoTop() { 
		window.scrollTo({top:0, behavior:'smooth'}); 
	}
	
</script>

</head>
<body>

	<!-- header 영역 시작 -->

	<%@include file="../../header.jsp" %>

<!-- header 영역 끝 -->
	
	<!-- 개요 시작 -->
	<a name="move01"></a>
	<div class=background01>
		<div class="container01"><img src="https://image.freepik.com/free-photo/closeup-of-sport-shoes-on-concrete-path_273609-14253.jpg" style="width: 100%; height:auto;">
			<h1 class="text01">우리 동네 운동 메이트와 함께해요!</h1>
			<br>
			<h3 class="text02" style="color: #00008B">우리 동네 운동 메이트는 이래서 만들어졌습니다.</h3>
			<br> <br>
			<h4 class="text03">
				운동을 하고 싶지만 운동 메이트가 없어서 고민하시는 분을 위해,<br> <br> 운동을 하고 싶지만
				방법을 몰라 시작을 못하시는 분들을 위해,<br> <br> 운동을 하고 싶지만 끈기가 없어서 쉽게
				포기하시는 분을 위해,<br> <br>
				우리 동네 운동 메이트는 만남을 제공하고 효과적인 운동 방법을 제공합니다</h4>
		</div>
	</div>
<!-- 개요 끝 -->

	<br>
	<br>
	<br>
	

	<div class="slider">
		<div><img src="images/workhappy.png" alt="슬라이드 사진" style="width:1000px; height:500px"></div>
		<div><img src="images/main/slide01.svg" alt="슬라이드 사진" style="width:1000px; height:500px" ></div>
		<div><img src="images/main/slide02.svg" alt="슬라이드 사진" style="width:1000px; height:500px"></div>
		<div><img src="images/main/slide03.svg" alt="슬라이드 사진" style="width:1000px; height:500px"></div>
		<div><img src="images/main/slide04.svg" alt="슬라이드 사진" style="width:1000px; height:500px"></div>	
	</div>
	<div class="controls">
		<button class="play">재생</button>
		<button class="pause">정지</button>
	</div>
<!-- 사진 전환 기능 끝 -->
	
	<br>
	<br>
	<br>

<hr>

<!-- 소개하기 시작 -->
<div class="background02">
	<br> <br> <br>
	<div class="container">
		<div class="row">

			<div class="col-sm-7">
				<br>
				<br> <img
					src="https://health.chosun.com/site/data/img_dir/2019/04/29/2019042900839_0.jpg"
					class="img-thumbnail" alt="Cinque Terre"><br>
				<br>
				<br>
				<br>
				<br>

			</div>

			<div class="col-sm-5">
				<br> <br> <a name="move02"></a>
				<h1 class="title01" style="font-family: Jua, sans-serif; text-align: right; font-size:38px;">운동 메이트 구하기</h1>
				<br>
				<h2 class="text-danger" style="text-align: right; font-size:26px;">
					우리 동네 운동 메이트는<br>가까운 거리의 운동 메이트를<br>찾아줍니다
				</h2>
				<br> <br>
				<p class="text-muted">
				<h4 class="text-info" style="text-align: right">
					"혼자 운동하기 지루하신 분들을 위해,<br>
					<br>성격이 소극적이신 분들을 위해<br>
					<br>가까운 거리의 운동 메이트와 운동을 함으로서<br>
					<br>건강과 친분을 동시에 챙길 수 있는 기회를 제공합니다"
				</h4>
				<br> <br>
			</div>
		</div>
	</div>
	<br> <br> <br> <br> <br> 


	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<br> <br> <br>
				<h1 class="title02" style="font-family: Jua, sans-serif; text-align: left; font-size:38px">적절한 운동
					방법</h1>
				<br>
				<h2 class="text-danger" style="text-align: left; font-size:26px;">
					우리 동네 운동 메이트는<br>적절한 운동 방법을<br>찾아줍니다
				</h2>
				<br> <br>
				<p class="text-muted">
				<h4 class="text-info" style="text-align: left">
					"게시판과 채팅을 통해 운동 방법을 공유하고<br>
					<br>운동 메이트와 같이 운동을 통해 <br>
					<br>올바른 운동 습관을 길러서<br>
					<br>운동에 대한 관심과 흥미를 높이는 기회를 제공합니다"
				</h4>
				<br> <br> <br>
			</div>
			<div class="col-sm-7">
				<br>
				<br>
				<br>
				<br> <img
					src="https://health.chosun.com/site/data/img_dir/2018/09/03/2018090301669_0.jpg"
					class="img-thumbnail" alt="Cinque Terre" style="float: right"><br>
				<br>
				<br>
				<br>
				<br>
				<br>


			</div>
		</div>
	</div>
	<br> <br> <br> <br> <br> <br>


	<div class="container">
		<div class="row">

			<div class="col-sm-7">
				<br>
				<br>
				<br>
				<br>
				<br> <img
					src="images/main/runday.jpeg"
					class="img-thumbnail" alt="Cinque Terre"><br>
				<br>
				<br>
				<br>
				<br>
				<br>

			</div>

			<div class="col-sm-5">
				<br> <br> <br>
				<h1 class="title01"
					style="font-family: Jua, sans-serif; text-align: right; font-size:38px">규칙적인
					운동 계획</h1>
				<br>
				<h2 class="text-danger" style="text-align: right; font-size:26px;">
					우리 동네 운동 메이트는<br>규칙적인 운동을 할 수 있도록<br>도움을 줍니다
				</h2>
				<br>
				<br>
				<p class="text-muted">
				<h4 class="text-info" style="text-align: right">
					"스케쥴러를 통해 자신의 운동 일정을 스스로 정하여<br>
					<br>규칙적인 운동 습관을 기룰 수 있도록 도와주고<br>
					<br> 후기 게시판을 통해 좋은 정보를 공유하고<br>
					<br>올바른 운동을 할 수 있도록 도움을 줍니다"
				</h4>
				<br> <br> <br>
			</div>
		</div>
	</div>
</div>
<!-- 소개하기 끝 -->

<hr>

<br>
<br>
<br>

<!-- 조원 소개하기 시작 -->
<div class="text06" style="font-size: 40px; text-align:center; color: black; font-weight: bold">우리 동네 운동 메이트 조원<br><br>
<span class="text07" style="font-size: 30px; text-align:center; color: #8B0000">조원들을 소개합니다.</span>
</div>

<div class="wrapper">
	<ul class="team">
		<li class="team-item"><a name="move03"></a>
			<div class="profile profile_red">
				<img
					src="https://post-phinf.pstatic.net/MjAyMTAzMDFfMTkz/MDAxNjE0NTgwNjMyNTM3.2O-VrXmnSaD-hK2loLB9uC5975b8Fo074VC2uMOw_zcg.2qrNXPHxyh_QtmTbwfSDTtx9SvxAEG8AGhY_cI1WHfYg.JPEG/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_2021-03-01_%EC%98%A4%ED%9B%84_3.36.54.jpg?type=w1200">
				<div class="profile-contents">
					<h2>
						임기원 <span>조&emsp;장</span>
					</h2>
					<p>열심히 하겠습니다.</p>
				</div>
			</div>
		</li>
		<li class="team-item">
			<div class="profile profile_beige">
				<img
					src="https://post-phinf.pstatic.net/MjAyMTAzMDFfMTkz/MDAxNjE0NTgwNjMyNTM3.2O-VrXmnSaD-hK2loLB9uC5975b8Fo074VC2uMOw_zcg.2qrNXPHxyh_QtmTbwfSDTtx9SvxAEG8AGhY_cI1WHfYg.JPEG/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_2021-03-01_%EC%98%A4%ED%9B%84_3.36.54.jpg?type=w1200">
				<div class="profile-contents">
					<h2>
						강원기 <span>조&emsp;원</span>
					</h2>
					<p>열심히 하겠습니다.</p>
				</div>
			</div>
		</li>
		<li class="team-item">
			<div class="profile profile_green">
				<img
					src="http://the-star.co.kr/site/data/img_dir/2020/10/30/2020103080040_0.jpg">
				<div class="profile-contents">
					<h2>
						소윤정 <span>조&emsp;원</span>
					</h2>
					<p>열심히 하겠습니다.</p>
				</div>
			</div>
		</li>
		<li class="team-item">
			<div class="profile profile_pink">
				<img
					src="http://the-star.co.kr/site/data/img_dir/2020/10/30/2020103080040_0.jpg">
				<div class="profile-contents">
					<h2>
						지&emsp;연 <span>조&emsp;원</span>
					</h2>
					<p>열심히 하겠습니다.</p>
				</div>
			</div>
		</li>
		<li class="team-item">
			<div class="profile profile_purple">
				<img
					src="https://post-phinf.pstatic.net/MjAyMTAzMDFfMTkz/MDAxNjE0NTgwNjMyNTM3.2O-VrXmnSaD-hK2loLB9uC5975b8Fo074VC2uMOw_zcg.2qrNXPHxyh_QtmTbwfSDTtx9SvxAEG8AGhY_cI1WHfYg.JPEG/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_2021-03-01_%EC%98%A4%ED%9B%84_3.36.54.jpg?type=w1200">
				<div class="profile-contents">
					<h2>
						손승현 <span>조&emsp;원</span>
					</h2>
					<p>열심히 하겠습니다.</p>
				</div>
			</div>
		</li>
	</ul>
</div>
<!-- 조원 소개하기 끝 -->

<br>
<br>
<hr>
<br>
	<a name="move01"></a>
	<div class="container">
		<div style="font-size: 36px; color: #00008B"><b>오시는 길</b></div>
		<br>
		<br>
		<div id="map" style="width: auto; height: 500px;"></div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6920574193fbd921283dd9d416ec4e77"></script>
	
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.49898969280782,
					127.03286905513882), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(37.49898969280782,
				127.03286905513882);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
	</script>

	<br>

	<div class="container">
	
	<div class="address">
		<h2 class="text04"><b>서울특별시 강남구 테헤란로 14길 6 <span style="color:hotpink">남도빌딩 2F, 3F, 4F, 5F, 6F</b></span></h2>
		<h2 class="text04">[TEL : 1544-9970]</h2>
		<h3 class="text04" style="color:grey">서울특별시 강남구 역삼동 남도빌딩(역삼동, 남도빌딩)</h3>
	</div>
	</div>
	<br>
	<br>
<hr>
<br>
<br>
	<div class="container">
	<div style="font-size: 36px; color: #00008B"><b>대중 교통 이용시</b></div><a name="move02"></a>
	<br><br>
		<div class="row">
			<div class="col-sm-6">
			 <img src="images/bus03.png" style="width:80px; height:80px;"><h3 class="way01"><b>&emsp;버스로 오시는 방법</b></h3><h4 style="color:gray" class="way01">&emsp;&nbsp;역삼역, 포스코P&S타워 정류장 하차</h4><br>
				<br><br>
				<img src="images/bus01.jpeg" style="width:20px; height:27px;"><h4 class="way02">&emsp;간선버스&emsp;146 / 740 / 341 / 360</h4><br>
				<img src="images/bus02.jpeg" style="width:20px; height:27px;"><h4 class="way02">&emsp;지선버스&emsp;1100 / 1700 / 2000 / 7007 / 8001</h4>
				<br>
				<br>
				<br>
				<br>
				<br>
			<img src="images/bus05.png" style="width:80px; height:80px;"><h3 class="way01"><b>&emsp;자가용 이용시</b></h3><h4 style="color:gray" class="way01">&emsp;&nbsp;자가용 이용시 <span style="color:hotpink"><b>반드시 주차권을 발급</b></span> 받으시길 바랍니다.</h4><br>			

	</div>

			<div class="col-sm-6">
				<img src="images/bus04.png" style="width:80px; height:80px;"><h3 class="way02"><b>&emsp;지하철로 오시는 방법</b></h3><h4 style="color:gray" class="way01">&emsp;&nbsp;지하철 2호선 <span style="color=pink">역삼역 3번 출구</span>로 나와서 100m 직진</h4>
				<br><br><br>
				<div></div><img src="images/yeoksam.png" style="width:450px; height:300px;"><div></div>

			</div>
		</div>
	</div>
	
    <div id="container"></div>
    	<div id="load" class="fa fa-circle-o-notch fa-spin"></div>
    		<button id="btn" onClick="GoTop()">▲</button>
    <script type="text/javascript" src="script.js"></script>


<br>
<br>
<br>
<br>

<div id="container"></div>
	<div id="load" class="fa fa-circle-o-notch fa-spin"></div>
		<div class="top"> 
			<button id="btn" onClick="GoTop()">▲</button> 
		</div>
		<script type="text/javascript" src="script.js"></script>

<!-- footer 시작 -->
	<footer style="background-color: #000000; color: #ffffff">
		<div class="container">
			<br>
			<div class="row">
				<div class="col-sm-3" style="text-align: left;">
					<h4>Copyright &copy;</h4>
					<h5>우리동네 운동메이트</h5>
				</div>
				<div class="col-sm-3">
					<h4>제작자 소개</h4>
					<p>
						조장 : 임기원<br> 조원 : 강원기 소윤정 지 연 손승현
					</p>
					<br>
				</div>
				<div class="col-sm-3">
					<h4>문의사항</h4>
					<p>
						전화번호 : 000-0000-0000<br>
						펙스 : 0000-0000-0000</br>
						E-mail : khacademy@kh.com
					</p>
					<br>
				</div>
				<div class="col-sm-2">
					<h4 style="text-align: center;">
						<span class="glyphicon glyphicon-ok"></span>&nbsp; by 세미 5조
					</h4>
				</div>
			</div>
			</div>	
	</footer>

<!-- footer 끝 -->
	
<!-- 사진 전환 기능 시작 -->
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</body>
</html>