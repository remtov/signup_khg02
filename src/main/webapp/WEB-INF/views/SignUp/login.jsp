
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>

<h1>Sign Up for join</h1>
<div>
<textarea rows="10" cols="">사용하고자 하는 아이디와 이를 동의한다면 하단의 동의함을 누르신 후 사용하세요</textarea>
<div >
<input type="checkbox" id="agree" value="agree" style="vertical-align: right">동의함
</div>
</div>

이름: <input type ="text" id="name"><br>
아이디: <input type ="text" id="id"><br>
비밀번호: <input type ="password" id="password"><br>
비밀번호 확인: <input type ="password" id="conpassword"><br>
e-mail: <input type ="email" id="email"><br>
별명: <input type ="text" id="nickname"><br>
주민등록번호: <input type ="number" id="front"> - <input type ="number" id="end"><br>
폰번호: <input type ="number" id="phone"><br>

관심사 :<form>
  <div class="checkboxes">
    <label for="beauty"><input type="checkbox" id="beauty" /> <span>미용</span></label>
    <label for="machine"><input type="checkbox" id="machine" /> <span>전자기기</span></label>
    <label for="life"><input type="checkbox" id="life" /> <span>생활</span></label>
  </div>
</form>

<label for="chkPassport">
    <input type="checkbox" id="chkPassport" />
    Do you have Passport?
</label>
<hr />
<div id="dvPassport" style="display: none">
    Passport Number:
    <input type="text" id="txtPassportNumber" />
</div>
<div id="AddPassport">
    Add New Password
</div>
<script>

function checked(){
	if($('input:checkbox[id="agree"]').is(":checked") == true){
		
	}

}
$(function () {
    $("#chkPassport").click(function () {
        if ($(this).is(":checked")) {
            $("#dvPassport").show();
            $("#AddPassport").hide();
        } else {
            $("#dvPassport").hide();
            $("#AddPassport").show();
        }
    });
});

</script>
</body>
</html>




