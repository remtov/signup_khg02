
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
<select id="serch">
  <option value="select">>선택하세요</option>
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
<input type="text" id = "serchEx"><button type="button" onclick="search()"> 검색 </button>
<table border="1">
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
<script>

	var ser =document.querySelector('#serch').value;	
	var tex = document.querySelector('#serchEx').value;
	var params = '{"'+ser + '":"' + tex+ '"}';
	params = JSON.stringify(params); 

	function search(){

		var conf = {
		param : ((tex.trim()!= '') ? params : ''), 
		url : '/SignUp',
		success : function(res){
			res = JSON.parse(res);
			var html = '';
			for(var su of res){
			 document.querySelector('#liBody').innerHTML = '';
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
	
	
	
 window.addEventListener('load',search
 );

</script>
</body>
</html>




