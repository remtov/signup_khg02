<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 스마트폰해상도호환 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<!-- 스마트폰해상도호환 -->
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다;부트스트랩 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP5 Layout</title>
<!-- 부트스트랩 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- 개인CSS -->
<link rel="stylesheet" href="/css/style.css">
<!-- 개인CSS -->



</head>





<body>
	<!-- 상단고정바 -->
	<div id="navi">

		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->


				<!-- 로고영역 -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- 여기에 이미지 넣으면 로고된다 -->
					<a class="navbar-brand" href="#">ERP5<!--  <img alt="Brand" src="..."> --></a>
					<!-- 여기에 이미지 넣으면 로고된다 -->
				</div>
				<!-- 로고영역 -->



				<!-- Collect the nav links, forms, and other content for toggling -->
				<!-- 줄어들명 몽땅 아이콘되는영역 -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">

					<!-- 검색창이전메뉴들 -->
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
						<li><a href="#">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<!-- 검색창이전메뉴들 -->





					<!-- 검색창과 서밋버튼 -->
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control"
								placeholder="Search for...">
						</div>
						<button type="submit" class="btn btn-default">Search</button>
					</form>
					<!-- 검색창과 서밋버튼 -->


					<!-- 오른쪽정렬메뉴들 -->
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">
								정보<span class="caret"></span>
						</a>

							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
					</ul>
					<!-- 오른쪽정렬메뉴들 -->
				</div>

				<!-- 줄어들명 몽땅 아이콘되는영역 -->
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

	</div>

	<!-- 상단고정바 -->










	<div id="container">

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
				style="display: inline-block; position: absolute; left: 100px; right: 0;">
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
			<div id="dropDown-menu">35px 카테고리드랍다운메뉴들</div>
			<div id="dropDown-img">400px 이미지버튼들</div>

		</div>


		<div class="titleBox">
			<h1>서브컨텐츠</h1>
			<hr>
		</div>

		<div class="contentLeft">
			<h4>400*580contentLeft Class</h4>
			<table>
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList}" var="member">
						<tr>
							<td>${member.id}</td>
							<td>${member.pw}</td>
							<td>${member.name}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div class="contentRight">
			<h4>400*580contentRight Class</h4>
		</div>

		<div class="contentLeft">
			<h4>400*580contentLeft Class</h4>
			<table>
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList}" var="member">
						<tr>
							<td>${member.id}</td>
							<td>${member.pw}</td>
							<td>${member.name}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div class="contentRight">
			<h4>400*580contentRight Class</h4>
		</div>
		<div class="contentLeft">
			<h4>400*580contentLeft Class</h4>
			<table>
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList}" var="member">
						<tr>
							<td>${member.id}</td>
							<td>${member.pw}</td>
							<td>${member.name}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div class="contentRight">
			<h4>400*580contentRight Class</h4>
		</div>
		<div class="contentLeft">
			<h4>400*580contentLeft Class</h4>
			<table>
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList}" var="member">
						<tr>
							<td>${member.id}</td>
							<td>${member.pw}</td>
							<td>${member.name}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div class="contentRight">
			<h4>400*580contentRight Class</h4>
		</div>


		<div class="titleBox">
			<h1>파이널컨텐츠</h1>
			<hr>
		</div>
		<div id="contentFinal">
			<h4>400*1200 content final</h4>

		</div>



	</div>




	<div id="footer">
		<div id="footerInner">
			<h1>footer</h1>
			<p>
				asdfkl wfeflekwfew fwef wefwef wef wefw ef we f we fwe fwef we fe wf
				we fwe fwe fwef wef w fwe fwe fewf<br> asdfkl wfeflekwfew fwef
				wefwef wef wefw ef we f we fwe fwef we fe wf we fwe fwe fwef wef w
				fwe fwe fewf<br>234ioewfkwejfwe fwefwefwefwef wefwe f we fwe
				fwefwefwef weg w
			</p>
			<p>
				asdfkl wfeflekwfew fwef fe wf we fwe fwe fwef wef w fwe fwe fewf<br>
				asdfkl wfeflekwfew fwef wefwef wef wefw ef we f we fwe fwef we fe wf
				we fwe fwe fwef wef w fwe fwe fewf<br>
			</p>
		</div>

	</div>




</body>
</html>