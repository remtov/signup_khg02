
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div class="container">

		<h1>관리자: 나의 bong Auction</h1>
		<span>탭1 | 탭2 | 탭3 탭바)</span><span style="float: right;"><a
			href="#">고객센터</a> | <a href="#">도움말</a> |<a href="#">idabcde(15)</a></span>
		<hr style="margin-top: 20px;">
		<!-- 컨테이너 -->
		<div class="row">

			<div class="col-md-10" style="float: right;">



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



				<div>
					<table class="table table-hover" style="background-color: white;">
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
					style="background-color: white; height: 400px; margin-top: 20px;">인포1</div>


				<div
					style="background-color: white; height: 300px; margin-top: 20px;">인포2</div>


				<div
					style="background-color: white; height: 500px; margin-top: 20px;">인포3</div>


			</div>





			<div class="col-md-2" style="float: left;">
				<ul style="font-size: 1.2em">

					<li>회원정보</li>
					<li>요약</li>
					<li>최근</li>
					<li>입찰</li>
					<li>구매내역</li>
					<li>판매 드랍다운</li>



				</ul>


				<div style="background-color: white; height: 300px;">광고1</div>


				<div
					style="background-color: white; height: 500px; margin-top: 20px;">광고2</div>


				<div
					style="background-color: white; height: 200px; margin-top: 20px;">광고3</div>


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
</body>
</html>




