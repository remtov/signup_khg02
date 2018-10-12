
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
이름 <input type="text" id= "signupName"><br>
폰번호<input type="text" id= "signupPhone"><br>
<button type="button" onclick="findid()">아이디 찾기</button>


<script>

function findid(){
	var signupName= document.querySelector('#signupName').value
	var signupPhone= document.querySelector('#signupPhone').value
	var params = '';
	params = 'signupName=' +signupName+ '&signupPhone=' +signupPhone;

	
		var conf = {
				url : '/findId',
				param : params,
				success : function(res){
					if(res!=''){
					res = JSON.parse(res);
					alert('회원님의 아이디는'+res.signupId+' 입니다.');
					location.href="/url/SignUp:login";
				}else{
					alert('회원 이름 또는 폰 번호가 일치하지 않습니다.');
				}		
						}			  
						
			}
		var au = new AjaxUtil(conf);
		au.send();
}
</script>
</body>
</html>




