
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/SignUp/common.jsp" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<script type="text/javascript">
function agreeCheck(frm)
{
   if (frm.checkButton.disabled==true)
    frm.checkButton.disabled=false
   else
    frm.checkButton.disabled=true
}

</script>
</head>
<body>

<form name="form">
<h1>Sign Up for join</h1>
<div>
<textarea  cols="40" rows="5">사용하고자 하는 아이디와 이를 동의한다면 하단의 동의함을 누르신 후 사용하세요</textarea>
<div >

</div>
</div>
<input type="checkbox" name="agree" onClick="agreeCheck(this.form)">동의함<br>


이름: <input type ="text" id="name"><br>
아이디: <input type ="text" id="id"><br>
비밀번호: <input type ="password" id="password"><br>
비밀번호 확인: <input type ="password" id="conpassword"><br>
e-mail: <input type ="email" id="email"><br>
별명: <input type ="text" id="nickname"><br>
주민등록번호: <input type ="number" id="front"> - <input type ="number" id="end"><br>
폰번호: <input type ="number" id="phone"><br>


  <div class="checkboxes">
  관심사 :  <label for="beauty"><input type="checkbox" id="beauty" /> <span>미용</span></label>
    <label for="machine"><input type="checkbox" id="machine" /> <span>전자기기</span></label>
    <label for="life"><input type="checkbox" id="life" /> <span>생활</span></label>
  </div>
<input type="button" name="checkButton" value=" 확 인 " disabled onclick="saveLevel()">
</form>

<script>



function saveLevel(){
	var name = document.querySelector("#name").value;
	var id = document.querySelector("#id").value;
	var password = document.querySelector("#password").value;
	var conpassword = document.querySelector("#conpassword").value;
	var email = document.querySelector("#email").value;
	var nickname = document.querySelector("#nickname").value;
	var front = document.querySelector("#front").value;
	var end = document.querySelector("#end").value;
	var phone = document.querySelector("#phone").value;
	if(name.length==0){
		alert("이름 입력하세요");
	}else if(id.length==0){
		alert("아이디 입력하세요");
	}else if(password.length==0){
		alert("아이디 입력하세요");
	}else if(conpassword.length==0){
		alert("아이디 입력하세요");
	}else if(email.length==0){
		alert("아이디 입력하세요");
	}else if(nickname.length==0){
		alert("아이디 입력하세요");
	}else if(front.length==0){
		alert("아이디 입력하세요");
	}else if(end.length==0){
		alert("아이디 입력하세요");
	}else if(phone.length==0){
		alert("아이디 입력하세요");
	}
	
	
	
	
	
	
	
	
	
	var params={name:name,id:id,password:password,email:email,nickname:nickname,phone:phone};
	 params = JSON.stringify(params); 

		var conf = {
				url : '/SignUp',
				method :'POST',
				param : params,
				success:function(res){
					alert(res);
				}
		
		};
		var au = new AjaxUtil(conf);
		au.send();
	 
}

</script>
</body>
</html>




