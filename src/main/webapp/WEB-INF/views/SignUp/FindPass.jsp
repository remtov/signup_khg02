
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
<head>
<title>자바스크립트</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
</head>
<body>
아이디<input type="text" id= "signupId"><br>
이름 <input type="text" id= "signupName"><br>
폰번호<input type="text" id= "signupPhone"><br>
<button type="button" onclick="findpass()">아이디 찾기</button>


<script>

function findpass(){
	var signupId= document.querySelector('#signupId').value
	var signupName= document.querySelector('#signupName').value
	var signupPhone= document.querySelector('#signupPhone').value
	var params = '';
	params = 'signupName=' + signupName + '&signupPhone=' + signupPhone + '&signupId=' + signupId  ;
alert(params);
	
		var conf = {
				url : '/findpass',
				param:params,
				success : function(res){
					if(res!=''){
					res = JSON.parse(res);
					alert('회원님의 아이디는'+res.signupPassword+' 입니다.');	
					location.href="/url/SignUp:login";
				}else{
					alert('아이디 또는 폰 번호 또는 회원 이름가 일치하지 않습니다.');
				}
					
						}			  		
			}
	
		
		var au = new AjaxUtil(conf);
		au.send();


}
</script>
</body>
</html>




