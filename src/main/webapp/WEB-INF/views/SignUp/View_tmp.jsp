
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>정보 수정 페이지</title>


</head>
<body>

	<div class="container" style="max-width: 800px;">
		<div style="text-align: center; margin-bottom: 50px;">
			<h1>회원정보 수정</h1>
			<p>
				이전페이지로 돌아 가시겠습니까? <a onclick="Back()">돌아가기</a>
			</p>

		</div>









		<div class="form-group">
			<label for="signupName" class="col-sm-2 control-label">회원 이름</label>

			<div class="col-sm-10">
				<input type="text" id="signupName" data-vali="2"
					class="form-control" value="${li.signupName}">
			</div>
		</div>


		<div class="form-group">
			<label for="signupId" class="col-sm-2 control-label">회원 ID</label>

			<div class="col-sm-10">
				<input type="text" id="signupId" data-vali="2" class="form-control"
					value="${li.signupId}">
			</div>
		</div>


		<div class="form-group">
			<label for="signupPassword" class="col-sm-2 control-label">비밀번호</label>

			<div class="col-sm-10">
				<input class="form-control" type="text" id="signupPassword"
					data-vali="2" value="${li.signupPassword}">
			</div>
		</div>





		<div class="form-group">
			<label for="signupNickName" class="col-sm-2 control-label">별명</label>

			<div class="col-sm-10">
				<input type="text" class="form-control" id="signupNickName"
					value="${li.signupNickName}" data-vali="2">
			</div>
		</div>

		<div class="form-group">
			<label for="signupEmail" class="col-sm-2 control-label">Email</label>

			<div class="col-sm-10">
				<input type="email" id="signupEmail" class="form-control"
					value="${li.signupEmail}">
			</div>
		</div>



		<div class="form-group">
			<label for="signupDate" class="col-sm-2 control-label">회원가입
				일자</label>

			<div class="col-sm-10">
				<input type="text" class="form-control" id="signupDate"
					value="${li.signupDate}" data-vali="2">
			</div>
		</div>




		<div class="form-group">
			<label for="signupConcern" class="col-sm-2 control-label">관심사</label>

			<div class="col-sm-10">
				<input type="text" class="form-control" id="signupConcern"
					value="${li.signupConcern}" data-vali="2">



			</div>
		</div>



		<div class="form-group">
			<label for="signupPersonallity" class="col-sm-2 control-label">주민등록번호</label>

			<div class="col-sm-10">
				<input type="number" class="form-control" id="signupPersonallity"
					value="${li.signupPersonallity}" data-vali="2">
			</div>
		</div>



		<div class="form-group" style="margin-top: -7px;">
			<label for="signupPhone" class="col-sm-2 control-label">회원폰번호</label>

			<div class="col-sm-10">
				<input type="number" class="form-control" id="signupPhone"
					value="${li.signupPhone}" data-vali="2">
			</div>
		</div>





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
		</form>
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