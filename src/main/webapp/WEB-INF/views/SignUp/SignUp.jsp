
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<script type="text/javascript">
function agreeCheck(frm)
{
   if (frm.checkButton.disabled==true){
	   frm.checkButton.disabled=false
   } 
   else{
	   frm.checkButton.disabled=true
	    
   }
  
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


이름: <input type ="text" id="signupName" data-vali="2"><br>
아이디: <input type ="text" id="signupId" data-vali="2"><br>
비밀번호: <input type ="password" id="signupPassword" data-vali="2"><br>
비밀번호 확인: <input type ="password" id="conpassword" data-vali="2"><br>
e-mail: <input type ="email" id="signupEmail" data-vali="2"><br>
별명: <input type ="text" id="signupNickName" data-vali="2"><br>
주민등록번호: <input type ="number" id="front" data-vali="2"> - <input type ="number" id="end" data-vali="2"><br>
폰번호: <input type ="number" id="signupPhone" data-vali="2"><br>


<div id="myform">
  관심사 :  <input type="checkbox" id="beauty" >미용
   <input type="checkbox" id="machine" >전자기기
   <input type="checkbox" id="life" >생활<br>

   <input type="button" name="checkButton" value=" 확 인 " disabled onclick="saveLevel()">
</div>
</form>

<script>


function saveLevel(){

	var signupName = document.querySelector('#signupName').value;
	var signupId = document.querySelector('#signupId').value;
	var signupPassword = document.querySelector('#signupPassword').value;
	var signupNickName = document.querySelector('#signupNickName').value;
	var signupEmail = document.querySelector('#signupEmail').value;
	var signupPhone = document.querySelector('#signupPhone').value;
    var setChk = "";
    if(document.querySelector('#beauty').checked) {
     setChk += "미용,";
    }
    if(document.querySelector('#machine').checked) {
     setChk += "전자기기,";
    }
    if(document.querySelector('#life').checked) {
     setChk += "생활,";
    }
    setChk = setChk.substr(0, setChk.length-1);
  
	
	
	
	
	
	var valis = document.querySelectorAll('*[data-vali]');
	
	valis.forEach((e) => {
		var length = e.getAttribute('data-vali');
		
		if(e.value.trim().length < length){
			e.focus();
			alert(e.id + '는 ' + length + '이상입니다.');
			return false;
		}
	});


	
	var conpassword = document.querySelector("#conpassword").value;
	var front = document.querySelector("#front").value;
	var end = document.querySelector("#end").value;
	

	
	var identify =front+end;
	if(signupPassword.trim()!==conpassword.trim()){
		alert("비밀번호가 다릅니다.");
		var passfocus =document.querySelector('#password');
		passfocus.focus();
	}else{
	 
		  
		
		
	var params={signupName:signupName,signupId:signupId,signupPassword:signupPassword,signupEmail:signupEmail,signupNickName:signupNickName,signupPhone:signupPhone,
				  signupPersonallity:identify,signupConcern:setChk};
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




