
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>


</head>
<body>
	<div class="container">





		<table class="table table-hover">
			<c:set value="${getOne}" var="li" />
			
			<tr>
				<th class="col-md-4">회원 번호</th><td class="col-md-8" id="signupNum">${li.signupNum}</td>
			
			</tr>
			<tr>
				<th>회원 이름</th>
				<td><input class="form-control" type="text" id="signupName" value="${li.signupName}"></td>
			</tr>
			<tr>
				<th>회원id</th>
				<td><input class="form-control" type="text" id="signupId" value="${li.signupId}"></td>
			</tr>
			<tr>
				<th>회원 비밀번호</th>
				<td><input class="form-control" type="text" id="signupPassword"
					value="${li.signupPassword}"></td>
			</tr>
			<tr>
				<th>회원 별명</th>
				<td><input class="form-control" type="text" id="signupNickName"
					value="${li.signupNickName}"></td>
			</tr>
			<tr>
				<th>회원 email</th>
				<td><input class="form-control" type="text" id="signupEmail"
					value="${li.signupEmail}"></td>
			</tr>
			<tr>
				<th>회원가입 일자</th>
				<td><input class="form-control" type="text" id="signupDate" value="${li.signupDate}"></td>
			</tr>
			<tr>
				<th>회원 관심사</th>
				<td><input class="form-control" type="text" id="signupConcern"
					value="${li.signupConcern}"></td>
			</tr>
			<tr>
				<th>회원 주민등록번호</th>
				<td><input class="form-control" type="text" id="signupPersonallity"
					value="${li.signupPersonallity}"></td>
			</tr>
			<tr>
				<th>회원폰번호</th>
				<td><input class="form-control" type="text" id="signupPhone"
					value="${li.signupPhone}"></td>
			</tr>
		</table>
		<div class="btn-group btn-group-justified" role="group"
			aria-label="...">
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default" onclick="Delete()">삭제</button>
			</div>
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default" onclick="Update()">수정</button>
			</div>
			<div class="btn-group" role="group">

				<button type="button" class="btn btn-default" onclick="Back()">뒤로가기</button>


			</div>

		</div>



	</div>



	<script>
function Back(){
	location.href="/url/SignUp:Admin"
}


function Delete(){ 
			var conf = {
					url : '/Delete/' + ${li.signupNum},
					method : 'DELETE',
					success : function(res){
						if(res!==1){					  
							alert('성공');
							location.href='/url/SignUp:Admin';
					}
				}
		}
			
			var au = new AjaxUtil(conf);
			au.send();
}
function  Update(){
	var signupNum = document.querySelector('#signupNum').value;
	var signupName = document.querySelector('#signupName').value;
	var signupId = document.querySelector('#signupId').value;
	var signupPassword = document.querySelector('#signupPassword').value;
	var signupNickName = document.querySelector('#signupNickName').value;
	var signupEmail = document.querySelector('#signupEmail').value;
	var signupDate = document.querySelector('#signupDate').value;
	var signupConcern = document.querySelector('#signupConcern').value;
	var signupPersonallity = document.querySelector('#signupPersonallity').value;
	var signupPhone = document.querySelector('#signupPhone').value;
	
	var params={signupName:signupName,signupId:signupId,signupPassword:signupPassword,signupNickName:signupNickName,signupEmail:signupEmail,signupDate:signupDate,signupConcern:signupConcern,signupPersonallity:signupPersonallity,signupPhone:signupPhone};
	 params = JSON.stringify(params); 

		var conf = {
				
				url : '/update/'+ ${li.signupNum},
				method :'PUT',
				param : params,
				success:function(res){
					if(res==1){
						alert("성공하였습니다.");
						location.href="/SignUpView/"+${li.signupNum};
					}
				}
		
		};
		var au = new AjaxUtil(conf);
		au.send();
		
}

</script>
</body>
</html>