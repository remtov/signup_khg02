<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<!--pro-->
<html>
<head>

<!-- 롤오버드랍다운 css & script -->
<style>
body {
	margin: 0;
}

.zeta-menu-bar {
	background: grey;
	display: inline-block;
	width: 100%;
}

.zeta-menu {
	margin: 0;
	padding: 0;
}

.zeta-menu li {
	float: left;
	list-style: none;
	position: relative;
}

.zeta-menu li:hover {
	background: white;
}

.zeta-menu li:hover>a {
	color: grey;
}

.zeta-menu a {
	color: white;
	display: block;
	padding: 10px 20px;
	text-decoration: none;
}

.zeta-menu ul {
	background: #eee;
	border: 1px solid silver;
	display: none;
	padding: 0;
	position: absolute;
	left: 0;
	top: 100%;
	width: 180px;
}

.zeta-menu ul li {
	float: none;
}

.zeta-menu ul li:hover {
	background: #ddd;
}

.zeta-menu ul li:hover a {
	color: black;
}

.zeta-menu ul a {
	color: black;
}

.zeta-menu ul ul {
	left: 100%;
	top: 0;
}

.zeta-menu ul ul li {
	float: left;
	margin-right: 10px;
}
</style>

<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	$(function() {
		$(".zeta-menu li").hover(function() {
			$('ul:first', this).show();
		}, function() {
			$('ul:first', this).hide();
		});
		$(".zeta-menu>li:has(ul)>a").each(function() {
			$(this).html($(this).html() + ' &or;');
		});
		$(".zeta-menu ul li:has(ul)").find("a:first").append(
				"<p style='float:right;margin:-3px'>&#9656;</p>");
	});
</script>

<!-- 롤오버드랍다운 css & script -->



</head>


<body>


	<div class="container">

		<!-- 두번째 검색창라인 -->
		<div id="searchLine" style="position: relative;">


			<!-- 카테고리드랍다운영역 -->
			<div class="dropdown" style="display: inline-block; width: 100px;">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					카테고리 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Another action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Something else here</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Separated link</a></li>
				</ul>
			</div>
			<!-- 카테고리드랍다운영역 -->

			<!-- 검색창영역 -->
			<div
				style="z-index: 1; display: inline-block; position: absolute; left: 100px; right: 0;">
				<div class="input-group">

					<input type="text" class="form-control" aria-label="..."
						placeholder="Search for...">

					<div class="input-group-btn">


						<button class="btn btn-default" type="button">Search</button>

						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-menu-right" role="menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
					<!-- /btn-group -->


				</div>
			</div>
			<!-- /input-group -->
			<!-- 검색창영역 -->








		</div>
		<!-- /.row -->






		<!-- 두번째 검색라인 -->


		<div id="content">


			<!-- 			<!-- 35px 카테고리드랍다운메뉴들 -->
			<div id="dropDown-menu" style="z-index: 3;">


				<div class='zeta-menu-bar' style="z-index: 3;">
					<ul class="zeta-menu">
						<li><a href="#">패션</a>
							<ul style="z-index: 3;">
								<li><a href="#">남성 의류</a></li>
								<li><a href="#">남성 신발</a></li>
								<li><a href="#">남성 잡화</a></li>
								<li><a href="#">여성 의류</a></li>
								<li><a href="#">여성 신발</a></li>
								<li><a href="#">여성 잡화</a></li>
								<li><a href="#">핸드백,가방</a></li>
								<li><a href="#">쥬니어 패션</a></li>
								<li><a href="#">유아동 패션</a></li>
								<li><a href="#">시계,쥬얼리</a></li>
								<li><a href="#">뷰티,헬스</a></li>
								<li><a href="#">전체상품보기</a></li>

							</ul></li>


						<li><a href="#">디지털</a>
							<ul style="z-index: 3;">
								<li><a href="#">휴대폰,엑세서리</a></li>
								<li><a href="#">카메라</a></li>
								<li><a href="#">컴퓨터,테블릿</a></li>
								<li><a href="#">mp3,헤드폰</a></li>
								<li><a href="#">차량용 전자제품</a></li>
								<li><a href="#">TV,오디오</a></li>
								<li><a href="#">비디오게임</a></li>
								<li><a href="#">스마트워치</a></li>


							</ul></li>

						<li><a href="#">희귀수집품</a>
							<ul style="z-index: 3;">
								<li><a href="#">앤틱제품</a></li>
								<li><a href="#">예술품</a>
									<ul style="z-index: 3;">
										<li><a href="#">직거래 예술품</a></li>
										<li><a href="#">딜러 예술품</a></li>
									</ul></li>
								<li><a href="#">동전, 지폐</a></li>
								<li><a href="#">악기, 음향장비</a></li>
								<li><a href="#">수집품</a>
									<ul style="z-index: 3;">
										<li><a href="#">코믹스</a></li>
										<li><a href="#">인형</a></li>
										<li><a href="#">엔터테인먼트</a></li>
									</ul></li>
								<li><a href="#">기념품</a>
									<ul style="z-index: 3;">
										<li><a href="#">스포츠 기념품</a></li>
										<li><a href="#">우표</a></li>
									</ul></li>

								<li><a href="#">그릇, 유리</a></li>
								<li><a href="#">앤틱제품</a></li>
							</ul></li>
						<li><a href="#">건강 및 미용</a>
							<ul style="z-index: 3;">
								<li><a href="#">건강 관리</a></li>
								<li><a href="#">향수</a></li>
								<li><a href="#">네일 케어 & 페디큐어</a></li>
								<li><a href="#">헤어 케어 및 스타일링</a></li>

								<li><a href="#">피부 관리</a></li>
								<li><a href="#">비타민 & 보충재</a></li>
								<li><a href="#">면도 및 제모</a></li>
								<li><a href="#">시력 관리</a></li>
								<li><a href="#">목욕 및 바디</a></li>
								<li><a href="#">구강 치료</a></li>





							</ul></li>
						<li><a href="#">모터츠 파츠</a>
							<ul style="z-index: 3;">
								<li><a href="#">자동차 파츠</a></li>
								<li><a href="#">모터싸이클 파츠</a></li>
								<li><a href="#">모터즈 패션용품</a></li>
								<li><a href="#">보트 파츠</a></li>
								<li><a href="#">ATV 파츠</a></li>
								<li><a href="#">트레일러 파츠</a></li>
								<li><a href="#">카오디오,비디오</a></li>
								<li><a href="#">차량용 공구</a></li>
								<li><a href="#">전체상품보기</a></li>

							</ul></li>

						<li><a href="#">완구,취미</a>
							<ul style="z-index: 3;">

								<li><a href="#">액션피규어</a></li>
								<li><a href="#">다이캐스트</a></li>
								<li><a href="#">교육용완구</a></li>
								<li><a href="#">마블</a></li>
								<li><a href="#">모델킷</a></li>
								<li><a href="#">퍼즐</a></li>
								<li><a href="#">RC</a></li>
								<li><a href="#">야외용 완구</a></li>
								<li><a href="#">코스튬</a></li>
								<li><a href="#">게임타이틀</a></li>
								<li><a href="#">해외음반</a></li>
								<li><a href="#">해외도서</a></li>
								<li><a href="#">해외영화</a></li>
								<li><a href="#">전체보기</a></li>
							</ul></li>



						<li><a href="#">스포츠</a>
							<ul style="z-index: 3;">
								<li><a href="#">골프</a></li>
								<li><a href="#">싸이클</a></li>
								<li><a href="#">낚시</a></li>
								<li><a href="#">피트니스, 요가</a></li>
								<li><a href="#">아웃도어스포츠</a></li>
								<li><a href="#">캠핑, 하이킹</a></li>
								<li><a href="#">실내스포츠</a></li>
								<li><a href="#">팀스포츠, 구기종목</a></li>
								<li><a href="#">테니스, 라켓스포츠</a></li>
								<li><a href="#">워터 스포츠</a></li>
								<li><a href="#">겨울 스포츠</a></li>
								<li><a href="#">헌팅</a></li>
								<li><a href="#">마샬아츠, MMA</a></li>
								<li><a href="#">전체보기</a></li>
							</ul></li>


						<li><a href="#">홈, 가든</a>
							<ul style="z-index: 3;">
								<li><a href="#">욕실용품</a></li>
								<li><a href="#">침실용품</a></li>
								<li><a href="#">홈데코DIY리빙</a></li>
								<li><a href="#">수납, 청소</a></li>
								<li><a href="#">주방용품</a></li>
								<li><a href="#">조명</a></li>
								<li><a href="#">공예품</a></li>
								<li><a href="#">애완용품</a></li>
								<li><a href="#">러그, 카펫</a></li>
								<li><a href="#">공구</a></li>
								<li><a href="#">정원, 야외용품</a></li>
								<li><a href="#">가구산업용품</a></li>
								<li><a href="#">전체상품보기</a></li>
							</ul></li>




						<li><a href="#">생활</a>
							<ul style="z-index: 3;">
								<li><a href="#">3-A 메뉴</a></li>
								<li><a href="#">3-B 메뉴</a></li>
							</ul></li>

					</ul>
				</div>

			</div>
			<!-- 35px 카테고리드랍다운메뉴들 -->





			<!-- 이미지슬라이더 -->
			<div id="dropDown-img" style="z-index: 1;">

				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">

					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						<li data-target="#carousel-example-generic" data-slide-to="4"></li>
						<li data-target="#carousel-example-generic" data-slide-to="5"></li>
						<li data-target="#carousel-example-generic" data-slide-to="6"></li>
						<li data-target="#carousel-example-generic" data-slide-to="7"></li>


					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">

						<div class="item active">
							<img src="/img/mainSlide01.jpg" alt="first slide">
							<div class="carousel-caption">
								<h3>
									<span class="label label-danger">마감임박상품 | 경매종료까지:2분 
								</h3>
							</div>
							<!-- 오른쪽 위 경매하기 창 -->
							<div class="alert alert-danger" role="alert"
								style="width: 300px; position: absolute; top: 20px; right: 20px;">
								<h3>MainSlide Title</h3>
								<p>fdsfse fesd fsdf sdf ef sefsfsedfsdfs fefsfesfsd fds fsdf
									sd fsdfefsfd fsd fsd</p>
								<p>입찰자수:46456</p>
								<p>현재가격: 545465500원</p>
								<br>
								<button type="button" class="btn btn-default">바로경매하기</button>

							</div>
							<!-- 오른쪽 위 경매하기 창 -->
						</div>

						<div class="item">
							<img src="/img/mainSlide02.jpg" alt="second slide">
							<div class="carousel-caption">
								<h3>
									<span class="label label-danger">마감임박상품 | 경매종료까지:5분</span>
								</h3>
							</div>
							<!-- 오른쪽 위 경매하기 창 -->
							<div class="alert alert-danger" role="alert"
								style="width: 300px; position: absolute; top: 20px; right: 20px;">
								<h3>MainSlide Title</h3>
								<p>fdsfse fesd fsdf sdf ef sefsfsedfsdfs fefsfesfsd fds fsdf
									sd fsdfefsfd fsd fsd</p>
								<p>입찰자수:46456</p>
								<p>현재가격: 543495000원</p>
								<br>
								<button type="button" class="btn btn-default">바로경매하기</button>

							</div>
							<!-- 오른쪽 위 경매하기 창 -->
						</div>

						<div class="item">
							<img src="/img/mainSlide03.jpg" alt="third slide">
							<div class="carousel-caption">
								<h3>
									<span class="label label-danger">마감임박상품 | 경매종료까지: 8분</span>
								</h3>
							</div>
							<!-- 오른쪽 위 경매하기 창 -->
							<div class="alert alert-danger" role="alert"
								style="width: 300px; position: absolute; top: 20px; right: 20px;">
								<h3>MainSlide Title</h3>
								<p>fdsfse fesd fsdf sdf ef sefsfsedfsdfs fefsfesfsd fds fsdf
									sd fsdfefsfd fsd fsd</p>
								<p>입찰자수:46456</p>
								<p>현재가격: 122354원</p>
								<br>
								<button type="button" class="btn btn-default">바로경매하기</button>

							</div>
							<!-- 오른쪽 위 경매하기 창 -->
						</div>

						<div class="item">
							<img src="/img/mainSlide04.jpg" alt="fored slide">
							<div class="carousel-caption">
								<h3>
									<span class="label label-danger">마감임박상품 | 경매종료까지: 15분</span>
								</h3>
							</div>
							<!-- 오른쪽 위 경매하기 창 -->
							<div class="alert alert-danger" role="alert"
								style="width: 300px; position: absolute; top: 20px; right: 20px;">
								<h3>MainSlide Title</h3>
								<p>fdsfse fesd fsdf sdf ef sefsfsedfsdfs fefsfesfsd fds fsdf
									sd fsdfefsfd fsd fsd</p>
								<p>입찰자수:46456</p>
								<p>현재가격: 3121495000원</p>
								<br>
								<button type="button" class="btn btn-default">바로경매하기</button>

							</div>
							<!-- 오른쪽 위 경매하기 창 -->
						</div>

						<div class="item">
							<img src="/img/mainSlide05.jpg" alt="fived slide">
							<div class="carousel-caption">
								<h3>
									<span class="label label-danger">마감임박상품 | 경매종료까지:19분</span>
								</h3>
							</div>

							<!-- 오른쪽 위 경매하기 창 -->
							<div class="alert alert-danger" role="alert"
								style="width: 300px; position: absolute; top: 20px; right: 20px;">
								<h3>MainSlide Title</h3>
								<p>fdsfse fesd fsdf sdf ef sefsfsedfsdfs fefsfesfsd fds fsdf
									sd fsdfefsfd fsd fsd</p>
								<p>입찰자수:46456</p>
								<p>현재가격: 343495000원</p>
								<br>
								<button type="button" class="btn btn-default">바로경매하기</button>

							</div>
							<!-- 오른쪽 위 경매하기 창 -->
						</div>

						<div class="item">
							<img src="/img/mainSlide06.jpg" alt="sixed slide">
							<div class="carousel-caption">
								<h3>
									<span class="label label-danger">마감임박상품 | 경매종료까지:25분</span>
								</h3>
							</div>

							<!-- 오른쪽 위 경매하기 창 -->
							<div class="alert alert-danger" role="alert"
								style="width: 300px; position: absolute; top: 20px; right: 20px;">
								<h3>MainSlide Title</h3>
								<p>fdsfse fesd fsdf sdf ef sefsfsedfsdfs fefsfesfsd fds fsdf
									sd fsdfefsfd fsd fsd</p>
								<p>입찰자수:46456</p>
								<p>현재가격: 349500650원</p>
								<br>
								<button type="button" class="btn btn-default">바로경매하기</button>

							</div>
							<!-- 오른쪽 위 경매하기 창 -->
						</div>

						<div class="item">
							<img src="/img/mainSlide07.jpg" alt="sevened slide">
							<div class="carousel-caption">
								<h3>
									<span class="label label-danger">마감임박상품 | 경매종료까지:47분</span>
								</h3>
							</div>
							<!-- 오른쪽 위 경매하기 창 -->
							<div class="alert alert-danger" role="alert"
								style="width: 300px; position: absolute; top: 20px; right: 20px;">
								<h3>MainSlide Title</h3>
								<p>fdsfse fesd fsdf sdf ef sefsfsedfsdfs fefsfesfsd fds fsdf
									sd fsdfefsfd fsd fsd</p>
								<p>입찰자수:46456</p>
								<p>현재가격: 3495000원</p>
								<br>
								<button type="button" class="btn btn-default">바로경매하기</button>

							</div>
							<!-- 오른쪽 위 경매하기 창 -->
						</div>

						<div class="item" style="position: relative;">
							<img src="/img/mainSlide08.jpg" alt="eighted slide">
							<div class="carousel-caption">
								<h3>
									<span class="label label-danger">마감임박상품 | 경매종료까지:65분</span>
								</h3>
							</div>
							<!-- 오른쪽 위 경매하기 창 -->
							<div class="alert alert-danger" role="alert"
								style="width: 300px; position: absolute; top: 20px; right: 20px;">
								<h3>MainSlide Title</h3>
								<p>fdsfse fesd fsdf sdf ef sefsfsedfsdfs fefsfesfsd fds fsdf
									sd fsdfefsfd fsd fsd</p>
								<p>입찰자수:46456</p>
								<p>현재가격: 3495000원</p>
								<br>

								<button type="button" class="btn btn-default">바로경매하기</button>

							</div>
							<!-- 오른쪽 위 경매하기 창 -->


						</div>




					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <!-- 왼쪽 화살표로직 --> <span
						aria-hidden="true" style="font-size: 3em;"><p
								style="padding-top: 250px;">&lt;</p></span> <!-- 왼쪽 화살표로직 --> <span
						class="sr-only">이전</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <!-- 오른쪽 화살표로직 --> <span
						aria-hidden="true" style="font-size: 3em;"><p
								style="padding-top: 250px;">&gt;</p></span> <!-- 오른쪽 화살표로직 --> <span
						class="sr-only">다음</span>
					</a>

				</div>

			</div>
			<!-- 이미지슬라이더 -->

		</div>



		<div class="page-header">
			<h1>
				최고 입찰상품 <small> Today's Most Popular Collections </small>
			</h1>
		</div>



		<div class="contentLeft" style="position: relative;">
			<table class="table table-bordered">
				<tbody>

					<tr>
						<td colspan="2">카테고리</td>

					</tr>

					<tr style="height: 100px;">
						<td rowspan="3" class="td7"><img src="">사진</td>
						<td><img src="" class="td3">사진2</td>

					</tr>
					<tr style="height: 100px;">
						<td><img src="">사진3</td>
					</tr>
					<tr style="height: 100px;">
						<td><img src="">사진4</td>
					</tr>


				</tbody>
			</table>

			<h3>Product Title</h3>
			<h5>입찰자수:345343534</h5>
			<p>글wefwefdsf wfwdfw fdwf wdfwfwdfwdf wdfwdfwd fwdfwfdw jsdhfjkds
				fsdjf sjdf hsdjfh skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf sdf sda
				faskjdfhksjdhfjsdf sdf sdf dsf af sadf sdaf
				sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf sdaf asdf sad
				fdhfjksdhfskdjfhsd f</p>

			<div style="position: absolute; bottom: 0px; right: 0px">
				<h4>
					<span class="label label-default">더보기</span>
				</h4>
			</div>


		</div>




		<div class="contentRight">
			<h4>400*580contentRight Class</h4>
		</div>







	</div>









</body>
</html>



