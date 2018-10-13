
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<!-- 컨테이너 -->
	<div class="container">

		<!-- 검색창영역 -->
		<div class="row" style="margin-bottom: 30px">
			<div class="col-md-4">
				<select class="form-control input-lg" id="serch">
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

			<div class="col-md-6">
				<input class="form-control input-lg" type="text" id="serchEx">
			</div>


			<div class="col-md-2">
				<button class="btn btn-default btn-lg btn-block" type="button"
					onclick="search()">검색</button>
			</div>
		</div>


		<!-- 검색창영역 -->
		
		


		<table class="table table-hover" border="1">
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
	<!-- 컨테이너 -->

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




