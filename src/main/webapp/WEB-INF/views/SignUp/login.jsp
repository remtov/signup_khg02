
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>

<form id= "login">
아이디: <input type ="text" id="signupId"> <button type="button" onclick="loging()">로그인</button>  <br> 
비밀번호: <input type ="password" id="signupPassword"> <button type="button" onclick="signUp()">회원가입</button><br>
<button type="button" onclick="loosingId()">아이디찾기</button><button type="button" onclick="forgetPass()">비밀번호 찾기</button><br>
</form>

<script>
function loging(){
	var signupId =document.querySelector('#signupId').value
	var signupPassword =document.querySelector('#signupPassword').value
	var params ={signupId:signupId,signupPassword:signupPassword} ;
	 params = JSON.stringify(params); 

	var conf = {
		url : '/login',
		method:'post',
		param:params,
		success : function(res){
			alert(res)
			if(res=='-1'){
			res = JSON.parse(res);
			alert(res);	
			location.href="/url/SignUp:login";
		}else{
			alert('아이디 또는 비밀번호가 일치하지 않습니다.');
		}
				}			  		
	}
var au = new AjaxUtil(conf);
au.send();
}
function loosingId(){
	location.href="/url/SignUp:find"
}
function signUp(){
	location.href="/url/SignUp:SignUp"
}
function forgetPass(){
	location.href="/url/SignUp:FindPass"
}



</script>
</body>
</html>




