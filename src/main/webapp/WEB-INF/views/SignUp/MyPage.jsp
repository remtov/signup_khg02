
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>my페이지</title>

</head>


<body>
	<div class="container">
		<c:choose>
			<c:when test="${not empty sessionScope.userLoginInfo}">

				<!-- 두번째 검색창라인 -->
				<div id="searchLine" style="position: relative;">


					<!-- 카테고리드랍다운영역 -->
					<div class="dropdown" style="display: inline-block; width: 100px;">
						<button class="btn btn-default dropdown-toggle" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
							카테고리 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu"
							aria-labelledby="dropdownMenu1">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">Action</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">Another action</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">Something else here</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">Separated link</a></li>
						</ul>
					</div>
					<!-- 카테고리드랍다운영역 -->

					<!-- 검색창영역 -->
					<div
						style="z-index: 1; display: inline-block; position: absolute; left: 100px; right: 0;">
						<div class="input-group">

							<input type="text" class="form-control" aria-label="..."
								placeholder="Search for...">

							<div class="input-group-btn">


								<button class="btn btn-default" type="button">Search</button>

								<button type="button" class="btn btn-default dropdown-toggle"
									data-toggle="dropdown" aria-expanded="false">
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu dropdown-menu-right" role="menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<!-- /btn-group -->


						</div>
					</div>
					<!-- /input-group -->

				</div>
				<!-- 검색창영역 -->


				<div style="margin-top: 10px; position: relative;">
					<!-- 프로필판넬 -->


					<div class="row"
						style="position: absolute; top: 50px; left: 50%; text-align: right; transform: translate(-50%); width: 800px; height: 20px; z-index: 2;">
						<button class="btn btn-default"
							style="height: 100%; font-size: 0.8em; margin-top: 0px">
							<p style="margin-top: -5px">
								배경이미지 편집 <img src="/img/icon_edit.png"
									style="height: 17px; margin-top: -3px">
							</p>
							<!-- 수정버튼 -->
						</button>

					</div>
					<div class="row"
						style="position: absolute; bottom: 0px; left: 50%; transform: translate(-50%); width: 800px; background-color: #f6f6f6; height: 200px; z-index: 2;">
						<!-- 프로필판넬 -->
						<div class="col-md-3"
							style="height: 100%; z-index: 3; position: relative;">
							<img src="/img/icon_profile02.png"
								style="margin-top: 20px; width: 100%;">
							<!-- 프로필사진 -->
							<div
								style="position: absolute; width: 30px; top: 0px; right: 0px;">
								<button style="margin-top: 5px">
									<img src="/img/icon_edit.png" style="width: 100%;">
									<!-- 수정버튼 -->
								</button>

							</div>

						</div>
						<!-- 수정 인풋 -->

						<div class="col-md-4" style="height: 100%; z-index: 3;">
							<table>
								<tr>
									<td>이름</td>
									<td><input class="form-control" style="margin-top: 5px"
										type="text" id="signupId" value="${userLoginInfo.signupId}"
										data-vali="2"></td>
								</tr>
								<tr>
									<td>아이디</td>
									<td><input class="form-control" style="margin-top: 5px"
										type="text" id="signupId" value="${userLoginInfo.signupId}"
										data-vali="2"></td>
								</tr>

								<tr>
									<td>패스워드</td>
									<td><input class="form-control" style="margin-top: 5px"
										type="text" id="signupPassword"
										value="${userLoginInfo.signupPassword}" data-vali="2">
									</td>
								</tr>
								<tr>
									<td colspan="2"><div class="form-group">
											<div>
												관심사:
												<div id="myform">
													<input type="checkbox" id="beauty">미용 <input
														type="checkbox" id="machine">전자기기 <input
														type="checkbox" id="life">생활<br>
												</div>
											</div>
										</div></td>
								</tr>

							</table>

						</div>

						<div class="col-md-5" style="height: 100%; z-index: 3;">
							<table>
								<tr>
									<td>별명</td>
									<td><input class="form-control" style="margin-top: 5px"
										type="text" id="signupNickName"
										value="${userLoginInfo.signupNickName}" data-vali="2">
									</td>

								</tr>

								<tr>
									<td>이메일</td>
									<td><input class="form-control" style="margin-top: 5px"
										type="text" id="signupEmail"
										value="${userLoginInfo.signupEmail}" data-vali="2"></td>

								</tr>

								<tr>
									<td>폰번호</td>
									<td><input class="form-control" style="margin-top: 5px"
										type="text" id="signupPhone"
										value="${userLoginInfo.signupPhone}" data-vali="2"></td>

								</tr>

								<tr>
									<td colspan="2"><input style="margin-top: 5px"
										class="btn btn-default btn-lg btn-block" type="button"
										name="checkButton" value=" 수 정 " onclick="save()"></td>

								</tr>
								<tr>

									<td colspan="2">
										<p style="margin-top: 10px;">
											팔로윙 0명 | 팔로워 0명 | <img style="width: 20px;"
												src="/img/kakao.png"> <img style="width: 20px;"
												src="/img/facebook.png"> <img style="width: 20px;"
												src="/img/instagram.png">
										</p>
									</td>
								</tr>

							</table>


						</div>
						<!-- 수정 인풋 -->

						<!-- 배경 -->
					</div>


					<img src="/img/background01.jpg" style="width: 100%; z-index: 1;">
				</div>
				<!-- 배경 -->






				<h2>
					판매 품목 ( 0 ) | <small><a href="#">모든 항목보기</a></small>
				</h2>
				<p>
					오늘 bong에서 <a href="#">판매를 시작</a>하십시오.
				</p>
				<hr>

				<div style="width: 100%; margin-top: -50px; text-align: right;">
					<img src="/img/icon_setup.png" style="width: 15px;">설정
				</div>
				<h2>팔로윙</h2>
				<p>
					다른 회원, 소장품 및 관심사를 따라 가면 <a href="#">bong 피드</a>에서 더 많은 검색 결과를 얻을 수
					있습니다.
				</p>
				<hr>
				<h2>팔로워</h2>
				<p style="margin-bottom: 30px;">
					아직 팔로워가 없습니다. 프로필을 <a href="#">맞춤 설정</a>하면 다른 회원에게 좋은 인상을 남길 수
					있습니다.
				</p>



				<!-- 세션없는사람에게 보여지는 부분 -->
			</c:when>
			<c:otherwise>
				<div style="text-align: center;">
					<img src="/img/icon_login.png" style="width: 50px;">
					<h3>로그인 후 이용 부탁드립니다.</h3>
					<a href="/url/SignUp:login">여기를 클릭</a>하여 로그인하러 가기
				</div>
				<!-- 세션없는사람에게 보여지는 부분 -->

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




