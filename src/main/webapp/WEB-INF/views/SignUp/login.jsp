
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Login</title>
</head>
<body style="background-color:white;">
	<div style="width:100%; background-color: #f6f6f6; height:500px; margin-bottom:-30px; margin-top:-30px; ">
	<div class="container" style="max-width: 800px;">
		<div style="text-align: center; margin-bottom: 50px;">
			<h1>로그인</h1>
			<p>
				아직 가입하지 않으셨습니까? <a onclick="signUp()">회원가입</a>
			</p>
			<br>
		</div>

		<form id="login" class="form-horizontal">
			<div class="form-group">
				<label for="signupId" class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-10">
					<input type="text" id="signupId" data-vali="2" class="form-control"
						placeholder="아이디를 입력하세요.">
				</div>
			</div>


			<div class="form-group">
				<label for="signupPassword" class="col-sm-2 control-label">비밀번호</label>

				<div class="col-sm-10">
					<input class="form-control" type="password" id="signupPassword"
						data-vali="2" placeholder="비밀번호를 입력하세요.">
				</div>
			</div>
			<div class="form-group" style="font-size: 0.8em">
				<div class="col-sm-offset-2 col-sm-10">
					<p>
						아이디를 잊어버리셨습니까? <a onclick="loosingId()">아이디찾기</a>
					</p>
				</div>
				<div class="col-sm-offset-2 col-sm-10">
					<p>
						비밀번호를 잊어버리셨습니까? <a onclick="forgetPass()">비밀번호 찾기</a>
					</p>
				</div>

			</div>



			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="button" class="btn btn-default btn-lg btn-block"
						onclick="loging()">로그인</button>

				</div>
			</div>
		</form>




	</div>

	</div>


	<script>
		function loging() {
			var signupId = document.querySelector('#signupId').value
			var signupPassword = document.querySelector('#signupPassword').value
			var params = {
				signupId : signupId,
				signupPassword : signupPassword
			};
			params = JSON.stringify(params);

			var conf = {
				url : '/login',
				method : 'post',
				param : params,
				success : function(res) {
					alert(res)
					if (res == '-1') {
						res = JSON.parse(res);
						alert(res);
						location.href = "/url/SignUp:login";
					} else {
						alert('아이디 또는 비밀번호가 일치하지 않습니다.');
					}
				}
			}
			var au = new AjaxUtil(conf);
			au.send();
		}
		function loosingId() {
			location.href = "/url/SignUp:find"
		}
		function signUp() {
			location.href = "/url/SignUp:SignUp"
		}
		function forgetPass() {
			location.href = "/url/SignUp:FindPass"
		}
	</script>
</body>
</html>




