
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>my페이지</title>
</head>
<body >
<div>
<c:choose>
    <c:when test="${not empty sessionScope.userLoginInfo}">
        <h2>회원정보 수정 </h2>
        
       이름	:    <input type="text" id ="signupName" value="${userLoginInfo.signupName}" data-vali="2"> <br>
       아이디 : <input type="text" id ="signupId"  value="${userLoginInfo.signupId}" data-vali="2"> <br>
 	 비밀번호 : <input type="text" id ="signupPassword"  value="${userLoginInfo.signupPassword}" data-vali="2"><br> 
 	 닉네임 : <input type="text" id ="signupNickName"  value="${userLoginInfo.signupNickName}" data-vali="2"><br>
        이메일 : <input type="text" id ="signupEmail"  value="${userLoginInfo.signupEmail}" data-vali="2"> <br>
    회원 폰번호 : <input type="text" id ="signupPhone"  value="${userLoginInfo.signupPhone}" data-vali="2"><br> 		
     		
     		<div class="form-group">
			
				<div >
					관심사:	<div id="myform">
						<input type="checkbox" id="beauty">미용 
						<input type="checkbox" id="machine">전자기기 
						<input type="checkbox" id="life">생활<br>
					</div>
					</div>
					</div>
			<input class="btn btn-default btn-lg btn-block" type="button"
				name="checkButton" value=" 확 인 " onclick="save()">
    </c:when>
    <c:otherwise>
      없다
    </c:otherwise>
</c:choose>

</div>
<script>


function save(){

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
		
	var params={signupName:signupName,signupId:signupId,signupPassword:signupPassword,signupEmail:signupEmail,
			signupNickName:signupNickName,signupPhone:signupPhone,signupConcern:setChk};
	 params = JSON.stringify(params); 
	
		var conf = {
				url : '/update/'+${userLoginInfo.signupNum},
				method :'PUT',
				param : params,
				success:function(res){
					if(res==1){
						alert('회원수정이 완료 되셨습니다.');
						location.href="//SignUp:MyPage";
					};  
				}
		
		};
		var au = new AjaxUtil(conf);
		au.send();
	
}

</script>
</body>
</html>




