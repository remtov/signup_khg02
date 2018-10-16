<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>admin 관리자 페이지</title>
</head>
<style>
div {
	/* border: 1px solid black; */
	/* background-color: green; */
	
}
 
/* 구성테스트중이라 색상입힘 */
</style>
 
<body>



<!--<c:set var="grade" value=""></c:set>
랜덤으로 선택된 등급코드는 ${grade}이며 <br />
<c:choose>
  <c:when test="${grade=='a1'}">
     당신의 접근권한은  A1입니다!!
  </c:when>
  <c:when test="${grade=='a2'}">
     당신의 접근권한은  A2입니다!!
  </c:when>
  <c:when test="${grade=='a3'}">
     당신의 접근권한은  A3입니다!!
  </c:when>
  <c:when test="${grade=='a4'}">
     당신의 접근권한은  A4입니다!!
  </c:when>
  <c:otherwise>
     당신의 접근권한은  A5이하입니다!!
  </c:otherwise>
</c:choose>   

</body>
</html>  -->

<c:set var="userid" value="${userLoginInfo.signupId}"></c:set>
<c:choose>
<c:when test="${userid=='고영찬'}">
	<div class="container">
		<!-- 상단광고 -->
		<div class="pull-right">
			<img
				src="http://www.koitt.com/data/file/right_banner/3547767421_JgukId0s_rb04.jpg">
		</div>
		<!-- 상단광고 -->
		<!-- 상단탭 -->
		<h2 style="clear:both">관리자 <small>| 나의 bong Auction</small></h2>
		<ul class="nav nav-tabs">
			<li role="presentation" class="active"><a href="#">메뉴</a></li>
			<li role="presentation"><a href="#">메시지</a></li>
			<li role="presentation"><a href="#">계정</a></li>
		</ul>
		<!-- 상단탭 -->
 
		<!-- 오른쪽링크 -->
		<span style="float: right; margin-top: -30px;"><a href="#">고객센터</a>
			| <a href="#">도움말</a> |<a href="#">${userLoginInfo.signupName}(15)</a></span>
		<!-- 오른쪽링크 -->
 
 
 
 
		<!-- 컨테이너 -->
		<div class="row">
			<div class="col-md-2" style="float: left; background-color: white;">
 
 
 
 
				<div style="margin-top: 15px; width: 100%; font-size: 1.2em"
					class="btn-group-vertical" role="group" aria-label="...">
 
					<button type="button" class="btn btn-default btn-lg btn-block"
						style="background-color: #e6e6e6;">대시보드</button>
					<button type="button" class="btn btn-default btn-lg btn-block">최근이용내역</button>
					<button type="button" class="btn btn-default btn-lg btn-block">구매내역</button>
					<button type="button" class="btn btn-default btn-lg btn-block">저장된 컨텐츠</button>
					<button type="button" class="btn btn-default btn-lg btn-block">저장된 판매자</button>
					<button type="button" class="btn btn-default btn-lg btn-block">입찰</button>
					
 
					<div class="btn-group" role="group">
						<button type="button"
							class="btn btn-default btn-lg btn-block dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							판매 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">판매예정</a></li>
							<li><a href="#">판매중물</a></li>
							<li><a href="#">판매완료</a></li>
							<li><a href="#">배송중</a></li>
							<li><a href="#">반품</a></li>
 
						</ul>
					</div>
				</div>
				<!-- 공지사항팝업영역 -->
				<h4>
					<strong>공지사항</strong>
				</h4>
				<a data-toggle="modal" data-target="#myModal">공지사항 보기</a>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">bong 판매팀 최신 공지</h4>
							</div>
							<div class="modal-body">
								<p>2018 년 10 월 9 일 12:31:34 PM</p>
 
								<p>Summer Seller 업데이트에 발표 된 바와 같이 , 우리는 최근 markdown sale
									이벤트를 만들기 전에 판매자가 동일한 가격으로 14 일 동안 항목을 나열하도록 요구하는 변경 작업을 수행했습니다.
									이 정책은 가격 인하 기능을 악용하는 일부 판매자로부터 고객이 겪고있는 부정적인 경험을 줄이기 위해
									제정되었습니다. 이것이 판매자 커뮤니티 전체를 대표하지 않는다는 것을 알고 있습니다. 우리는 귀하의 의견을 듣고
									그리고 우리는 집행 기관이 고객에게 가치를 제공하는 판매자를위한 도전이었다 알고 있습니다. 즉시 시작하여 상장
									직후에 다시 markdown 이벤트를 작성할 수 있습니다. 우리가 휴일로 이사 할 때, 우리의 가장 큰 우선
									순위는 쉽고 성공적인 판매 시즌을 보장하는 것입니다. 우리는 2019 년에이 기능의 변경이 필요한지 계속 평가할
									것입니다. 항상 그렇듯이 bong에서 판매 해 주셔서 감사합니다. 봉 (bong) 팀</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">닫기</button>
								<button type="button" class="btn btn-primary">공지사항 페이지로</button>
							</div>
						</div>
					</div>
				</div>
 
				<!-- 공지사항팝업영역 -->
 
				<div style="margin-top: 15px; border: 1px solid gray;">
					<img
						src="https://creative.mathads.com/0001/78/d9/a7/df/53a237f3c1e60b88c5596641ba181524.jpg">
				</div>
 
 
 
				<div style="margin-top: 15px;">
 
 
 
					<button class="btn btn-default btn-lg btn-block"
						style="font-size: 1em;">
						<img src="/img/logo.png" style="width: 30px; heigth: auto;">
						&nbsp;앱 다운로드
					</button>
 
				</div>
 
 
 
 
 
 
			</div>
 
			<!-- 사이드메뉴 -->
 
 
 
 
 
			<div class="col-md-10" style="float: right; background-color: white;">
 
				<!-- 검색창영역 -->
				<h3>
					회원정보관리 <small>원하시는 회원정보를 검색하시고 클릭하여 편집하세요.</small>
				</h3>
				<hr>
 
 
				<div class="col-md-3">
					<select class="form-control input" id="serch">
						<option value="signupNum">>선택하세요</option>
						<option value="signupNum">>회원 번호</option>
						<option value="signupName">>회원 이름</option>
						<option value=signupId>>회원id</option>
						<option value="signupPassword">>회원 비밀번호</option>
						<option value="signupEmail">>회원 email</option>
						<option value="signupNickName">>회원 별명</option>
						<option value="signupDate">>회원가입 일자</option>
						<option value="signupConcern">>회원 관심사</option>
						<option value="signupPersonallity">>회원 주민등록번호</option>
						<option value="signupPhone">>회원폰번호</option>
					</select>
				</div>
 
				<div class="col-md-7">
					<input class="form-control input" type="text" id="serchEx">
				</div>
 
 
				<div class="col-md-2" style="margin-bottom: 20px;">
					<button class="btn btn-default btn btn-block" type="button"
						onclick="search()">검색</button>
				</div>
 
 
				<!-- 검색창영역 -->
 
 
 
				<div class="table-responsive"
					style="height: 400px; overflow: auto; border: 1px solid #e6e6e6;">
					<table class="table" style="background-color: white;">
						<thead>
							<tr>
 
								<th>회원 번호</th>
								<th>회원 이름</th>
								<th>회원id</th>
								<th>회원 비밀번호</th>
								<th>회원 email</th>
								<th>회원 별명</th>
								<th>회원가입 일자</th>
								<th>회원 관심사</th>
								<th>회원 주민등록번호</th>
								<th>회원폰번호</th>
							</tr>
						</thead>
						<tbody id="liBody">
						</tbody>
					</table>
				</div>
				<hr>
 
 
				<div
					style="border: 1px solid gray; height: 400px; margin-top: 20px;">인포1</div>
 
				<div
					style="border: 1px solid gray; height: 300px; margin-top: 20px;">인포2</div>
 
				<div class="pull-right" style="height: 160px; margin-top: 20px;">
 
					<img src="http://www.koitt.com/img/m11_img01.png"
						style="margin-top: -35px">
				</div>
 
 
			</div>
 
 
 
 
 
 
		</div>
	</div>
 
 
	<script>
 
 
	function search(){
 
		var ser =document.querySelector('#serch').value;	
		var tex = document.querySelector('#serchEx').value;
		var params = ser + '=' + tex;
	
		var conf = {
		param : params,
		url : '/SignUp',
		success : function(res){
			res = JSON.parse(res);
			document.querySelector('#liBody').innerHTML = '';
			var html = '';
			for(var su of res){
				html += '<tr onclick="location.href=\'/SignUpView/'+ su.signupNum +'\'">';
				html += '<td>' + su.signupNum + '</td>';
				html += '<td>' +su.signupName+ '</td>';
				html += '<td>' +su.signupId+ '</td>';
				html += '<td>' +su.signupPassword+ '</td>';
				html += '<td>' +su.signupEmail+ '</td>';
				html += '<td>' +su.signupNickName+ '</td>';
				html += '<td>' +su.signupDate+ '</td>';
				html += '<td>' +su.signupConcern+ '</td>';
				html += '<td>' +su.signupPersonallity+ '</td>';
				html += '<td>' +su.signupPhone+ '</td>';
				html += '</tr>';
 
			
			} 
			document.querySelector('#liBody').insertAdjacentHTML('afterbegin',html);
		}
	}
			
		
	var au = new AjaxUtil(conf);
	au.send();
	}
	
	
	
 window.addEventListener('load',search);
 
</script>

</c:when>

 <c:otherwise>
 권한이 없으세요 나가세요 <a href="/">홈페이지로</a>
</c:otherwise>
</c:choose>
</body>
</html>
 
 