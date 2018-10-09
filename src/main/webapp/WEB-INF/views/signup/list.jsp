<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<script>



var AjaxUtil = function(conf){
	var xhr = new XMLHttpRequest();
	var url = conf.url;
	var method = conf.method?conf.method:'GET';
	var param = conf.param?conf.param:'{}';
	
	var success = conf.success?conf.success:function(res){
		alert(res);
	}
	var error = conf.error?conf.error:function(res){
		alert(res);
	}
	
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4){
			if(xhr.status=="200"){
				success(xhr.responseText);
			}else{
				error(xhr.responseText);
			}
		}
	}
	xhr.open(method,url);
	if(method!='GET'){
		xhr.setRequestHeader('Content-type','application/json;charset=utf-8');
	}
	this.send = function(){
		xhr.send(param);
	}
}

window.addEventListener('load',initList);

function initList(){
	document.querySelector('#suBody').innerHTML = '';
	var conf = {
			url : '/signup',
			success : function(res){
				res = JSON.parse(res);
				var html = '';
				for(var su of res){
					html += '<tr>';
					html += '<td>' + su.signupnum + '</td>';
					html += '<td><input type="text" id="signupname' + su.signupnum +'" value="' + su.signupname + '"></td>';
					html += '<td><input type="text" id="signupid' + su.signupnum +'" value="' + su.signupid + '"></td>';
					html += '<td><input type="text" id="signuppassword' + su.signupnum +'" value="' + su.signuppassword + '"></td>';
					html += '<td><input type="text" id="signupemail' + su.signupnum +'" value="' + su.signupemail + '"></td>';
					html += '<td><input type="text" id="signupnickname' + su.signupnum +'" value="' + su.signupnickname + '"></td>';
					html += '<td><input type="text" id="signuppersonallity' + su.signupnum +'" value="' + su.signuppersonallity + '"></td>';
					html += '<td><input type="text" id="signupphone' + su.signupnum +'" value="' + su.signupphone + '"></td>';
					html += '<td><input type="text" id="signupdate' + su.signupnum +'" value="' + su.signupdate + '"></td>';
					html += '<td><input type="text" id="signupconcern' + su.signupnum +'" value="' + su.signupconcern + '"></td>';
					
					
					html += '<td><button onclick="updateSignUp(' + su.signupnum +')">수정</button>';
					html += '<button onclick="deleteSignUp(' + su.signupnum +')">삭제</button></td>';
					html += '</tr>';
				} 
				document.querySelector('#liBody').insertAdjacentHTML('beforeend',html);
	
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}
</script>
<body>
	SIGNUPNAME :
	<input type="text" name="suname">
	<button>검색</button>
	<table border="1">
		<thead>
			<tr>
				<th>SIGNUPNUM</th>
				<th>SIGNUPNAME</th>
				<th>SIGNUPID</th>
				<th>SIGNUPPASSWORD</th>
				<th>SIGNUPEMAIL</th>
				<th>SIGNUPNICKNAME</th>
				<th>SIGNUPPERSONALLITY</th>
				<th>SIGNUPPHONE</th>
				<th>SIGNUPDATE</th>
				<th>SIGNUPCONCERN</th>




				<th>수정/삭제</th>
			</tr>
		</thead>
		<tbody id="suBody">
		</tbody>
	</table>
	<button onclick="addSignUp()">레벨추가</button>
	<script>
function addSignUp(){
	var html = '<tr>';
	html += '<td>&nbsp;</td>';
	html += '<td><input type="text" id="signupname" value=""></td>';
	html += '<td><input type="text" id="signupid" value=""></td>';
	html += '<td><input type="password" id="signuppassword" value=""></td>';
	html += '<td><input type="email" id="signupemail" value=""></td>';
	html += '<td><input type="text" id="signupnickname" value=""></td>';
	html += '<td><input type="text" id="signuppersonallity" value=""></td>';
	html += '<td><input type="text" id="signupphone" value=""></td>';
	html += '<td><input type="date" id="signupdate" value=""></td>';
	html += '<td><input type="text" id="signupconcern" value=""></td>';
	
	
	
	html += '<td><button onclick="saveSignUp()">저장</button></td>';
	html += '</tr>';
	document.querySelector('#suBody').insertAdjacentHTML('beforeend',html);
}



function saveSignUp(){
	var lilevel = document.querySelector("#signupname").value;
	var liname = document.querySelector("#signupid").value;
	var lidesc = document.querySelector("#signuppassword").value;
	var lidesc = document.querySelector("#signupemail").value;
	var lidesc = document.querySelector("#signupnickname").value;
	var lidesc = document.querySelector("#signuppersonallity").value;
	var lidesc = document.querySelector("#signupphone").value;
	var lidesc = document.querySelector("#signupdate").value;
	var lidesc = document.querySelector("#signupconcern").value;
	
	var params = {signupname:signupname, signupid:signupid, signuppassword:signuppassword, signupemail:signupemail, signupnickname:signupnickname, 
			signuppersonallity:signuppersonallity, signupphone:signupphone, signupdate:signupdate, signupconcern:signupconcern};
	params = JSON.stringify(params);
	
	
	
	var conf = {
			url : '/signup',
			method : 'POST',
			param : params,
			success : function(res){
				if(res=='1'){
					alert('저장 완료!!');
					initList();
				}
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}
function updateSignUp(signupnum){
	var lilevel = document.querySelector("#signupname").value;
	var liname = document.querySelector("#signupid").value;
	var lidesc = document.querySelector("#signuppassword").value;
	var lidesc = document.querySelector("#signupemail").value;
	var lidesc = document.querySelector("#signupnickname").value;
	var lidesc = document.querySelector("#signuppersonallity").value;
	var lidesc = document.querySelector("#signupphone").value;
	var lidesc = document.querySelector("#signupdate").value;
	var lidesc = document.querySelector("#signupconcern").value;
	var params = {signupname:signupname, signupid:signupid, signuppassword:signuppassword, signupemail:signupemail, signupnickname:signupnickname, 
			signuppersonallity:signuppersonallity, signupphone:signupphone, signupdate:signupdate, signupconcern:signupconcern};
	params = JSON.stringify(params);
	
	var conf = {
			url : '/signup/' + signupnum,
			method : 'PUT',
			param : params,
			success : function(res){
				alert(res);
			}
	}
	
	var au = new AjaxUtil(conf);
	au.send();
}

function deleteSignUp(signupnum){
	var conf = {
			url : '/signup/' + signupnum,
			method : 'DELETE',
			success : function(res){
				if(res=='1'){
					alert('삭제완료');
					initList();
				}
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}
</script>
</body>
</html>