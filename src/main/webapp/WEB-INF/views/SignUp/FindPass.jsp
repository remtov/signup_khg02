
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
<head>
<title>자바스크립트</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script>

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
<textarea cols="40" rows="5"> 
내용에 동의하면 체크박스를 클릭하심이
어떨지 동의를 구해보지만 동의를 하지
않을것 같구려~~~~
</textarea><br>
<input type="checkbox" name="agree" onClick="agreeCheck(this.form)">
위의 뻘글에 동의하십니까?
<input type="button" name="checkButton" value=" 확 인 " disabled>
</form>
</body>
</html>
