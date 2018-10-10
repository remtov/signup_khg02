
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<thead>
		<tr>

			<th>회원 번호</th>
			<th>회원 이름</th>
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
window.addEventListener('load',function(){
	var conf = {
	url : '/SignUp',
	success : function(res){
		res = JSON.parse(res);
		var html = '';

		for(var su of res){
			html += '<tr>';
			html += '<td>' + su.signupNum + '</td>';
			html += '<td><input type="text" id="signupName' + su.signupNum +'"value="'+su.signupName+ '"></td>';
			html += '<td><input type="text" id="signupId' + su.signupNum +'"value="'+su.signupId+ '"></td>';
			html += '<td><input type="text" id="signupPassword' + su.signupNum +'"value="'+su.signupPassword+ '"></td>';
			html += '<td><input type="text" id="signupEmail' + su.signupNum +'"value="'+su.signupEmail+ '"></td>';
			html += '<td><input type="text" id="signupNickName' + su.signupNum +'"value="'+su.signupNickName+ '"></td>';
			html += '<td><input type="text" id="signupDate' + su.signupNum +'"value="'+su.signupDate+ '"></td>';
			html += '<td><input type="text" id="signupConcern' + su.signupNum +'"value="'+su.signupConcern+ '"></td>';
			html += '<td><input type="text" id="signupPersonallity' + su.signupNum +'"value="'+su.signupPersonallity+ '"></td>';
			html += '<td><input type="text" id="signupPhone' + su.signupNum +'"value="'+su.signupPhone+ '"></td>';
			html += '<td><button onclick="updateSu('+su.signupNum+')">수정</button><button onclick="deleteSUInfo('+su.signupNum+')">삭제</button></td>';
			html += '</tr>';
		} 
		document.querySelector('#liBody').insertAdjacentHTML('afterbegin',html);
	}
}
var au = new AjaxUtil(conf);
au.send();
});

</script>
</body>
</html>




