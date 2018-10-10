
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


이름: <input type ="text" id="name" data-vali="2"><br>
아이디: <input type ="text" id="id" data-vali="2"><br>
비밀번호: <input type ="password" id="password" data-vali="2"><br>
비밀번호 확인: <input type ="password" id="conpassword" data-vali="2"><br>
e-mail: <input type ="email" id="email" data-vali="2"><br>
별명: <input type ="text" id="nickname" data-vali="2"><br>
주민등록번호: <input type ="number" id="front" data-vali="2"> - <input type ="number" id="end" data-vali="2"><br>
폰번호: <input type ="number" id="phone" data-vali="2"><br>


  <div class="checkboxes">
  관심사 :  <label for="beauty"><input type="checkbox" id="beauty" value="1" /> <span>미용</span></label>
    <label for="machine"><input type="checkbox" id="machine" value="2"/> <span>전자기기</span></label>
    <label for="life"><input type="checkbox" id="life" value="3"/> <span>생활</span></label>
  </div>
        
  
<input type="button" name="checkButton" value=" 확 인 " disabled onclick="saveLevel()">
</form>

<script>



function saveLevel(){
	
	var valis = document.querySelectorAll('*[data-vali]');
	
	valis.forEach((e) => {
		var length = e.getAttribute('data-vali');
		
		if(e.value.trim().length < length){
			e.focus();
			alert(e.id + '는 ' + length + '이상입니다.');
			return false;
		}
	});
	
	var name = document.querySelector("#name").value;
	var id = document.querySelector("#id").value;
	var password = document.querySelector("#password").value;
	var conpassword = document.querySelector("#conpassword").value;
	var email = document.querySelector("#email").value;
	var nickname = document.querySelector("#nickname").value;
	var front = document.querySelector("#front").value;
	var end = document.querySelector("#end").value;
	var phone = document.querySelector("#phone").value;
	var phone = document.querySelector("#phone").value;
	
	var identify =front+end;
	if(password.trim()!==conpassword.trim()){
		alert("비밀번호가 다릅니다.");
		var passfocus =document.querySelector('#password');
		passfocus.focus();
	}else{
	 
		  
	var params={signupName:name,signupId:id,signupPassword:password,signupEmail:email,signupNickName:nickname,signupPhone:phone,
				  signupPersonallity:identify};
	 params = JSON.stringify(params); 

		var conf = {
				url : '/SignUp',
				method :'POST',
				param : params,
				success:function(res){
					if(res==1){
						alert('회원가입이 완료 되셨습니다.');
						location.href="/url/home";
					};
				}
		
		};
		var au = new AjaxUtil(conf);
		au.send();
		
	
		
}
	
}
</script>
</body>
</html>




