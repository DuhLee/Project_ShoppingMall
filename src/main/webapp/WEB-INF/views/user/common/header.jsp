<!-- 정수정, header -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/user/common/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/user/common/css/footer.css">
<link href="<%=request.getContextPath() %>/assets/common/cstm_img/logo/logo_mini.png" rel="shortcut icon" type="image/x-icon">
<c:set value="<%=request.getContextPath()%>" var="contextPath"></c:set>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	
<script>
	const contextPath = '<%=request.getContextPath()%>';
</script>

<style>
	a{text-decoration:none;}
	p { margin-top: 1rem;margin-bottom: 1rem;}
</style>

</head>

<body>
	<!-- header -->

	<div class="header_container">

		<!--회원가입, 로그인, 고객센터-->
		<div id="header_top">
			<div>
			<button class="join hidden_visibility" id="joinBtn">회원가입</button>
            <button class="login hidden_visibility" id="loginBtn">로그인</button>
            <button class="logout hidden_visibility" id="logoutBtn">로그아웃</button>
				<button onclick="location.href='<%=request.getContextPath() %>/customerservice/cate'">고객센터</button>
			</div>
		</div>


		<!--로고, 카테고리, 프로필-->
		<div class="header_container_bottom">
			<div>
				<a href="<%=request.getContextPath() %>/main">
				<img src="<%=request.getContextPath() %>/assets/common/cstm_img/logo/logo.png" alt="로고" width="170px" />
				</a>
			</div>

			<div class="header_container_bottom_contents">
				<c:forEach items="${sessionScope.mainCtgrs}" var="mainCtgr">
					<a href="<%=request.getContextPath()%>/main_category?m_ctgr_num=${mainCtgr.m_ctgr_num}">${mainCtgr.m_ctgr_name}</a>				
				</c:forEach>
			</div>
		<c:set var="member" value="${sessionScope.member }"/>
		
			<div class="header_container_bottom_contents">
				<span class="user_welcome_text hidden_visilbility" id="user_welcome_text">${member.mem_name}님, 환영합니다.</span>
				<c:choose>
					<c:when test="${not empty member}">
						<a id="myCart" href="<%=request.getContextPath()%>/cart">
							<span class="material-symbols-outlined">shopping_cart</span>
						</a>
					</c:when>
					<c:otherwise>
						<a id="myCart">
							<span class="material-symbols-outlined">shopping_cart</span>
						</a>
					</c:otherwise>
				</c:choose>
				<button id="myPage">


			            <div>
			               <span class="material-symbols-outlined">person</span>
			
			               
					<span id="drop-down_arrow" class="material-symbols-outlined">
						arrow_drop_down </span>
				</div>
				
				</button>
			</div>
		</div>
	</div>

	<!--마이페이지 드롭다운-->
	<div class="hidden myPage_container" id="myPage_drop-down">
      <button onclick="location.href='<%=request.getContextPath() %>/history'">주문 내역</button>
      <button onclick="location.href='<%=request.getContextPath() %>/review/write?page=1'">나의 리뷰</button>
      <button onclick="location.href='<%=request.getContextPath() %>/info'">나의 정보</button>
      <button onclick="location.href='<%=request.getContextPath() %>/contact'">문의 내역</button>
	</div>

	<!--로그인-->
	<!-- 로그인 팝업 -->
	<div class="login_popup hidden">
		<div class="login_container">
			<!-- 로고 & 닫기 버튼 -->
			<div class="popup_logo">
				<div> <img src="<%=request.getContextPath() %>/assets/common/cstm_img/logo/logo.png"
					width="135px" alt="로고">
				</div>
				<button type="button" class="login_closeBtn">
					<span class="material-symbols-outlined"> close </span>
				</button>
			</div>

			<div id="bar"></div>
			<div>
				<div id="text_login">로그인</div>
				<form action="<%=request.getContextPath() %>/login.do" method="POST" onsubmit="return mySubmit_login();">
					<input id="login_email" name="mem_email" class="mem_email" type="text" placeholder="이메일 주소" />
					<input id="login_pw" name="mem_pw" type="password" placeholder="비밀번호" />
					<input id="login_submit" type="submit" value="로그인"/>
				</form>
				
				<div class="login_error_wrap hidden_visibility" id="error_message_login" style="display: block;">에러 메세지</div>

				<div class="or_container">
					<div></div>
					<div>또는</div>
					<div></div>
				</div>
				
				<button id="kakao_login" onclick="kakaoLogin();">
					<img src="<%=request.getContextPath() %>/assets/common/cstm_img/logo/kakao_login.png" alt="">
				</button>
				<button id="naver_login" onclick="naverIdLogin_loginButton();">
					<img src="<%=request.getContextPath() %>/assets/common/cstm_img/logo/naver_login.png" alt="">
				</button>
         </div>
      </div>
	</div>
		<!-- 회원가입 팝업 -->
		<div class="join_popup hidden">
			<div class="join_container">
				<!-- 로고 & 닫기 버튼 -->
				<div class="popup_logo">
					<div> <img src="<%=request.getContextPath() %>/assets/common/cstm_img/logo/logo.png" width="135px" alt="로고">
					</div>
					<button type="button" class="join_closeBtn">
						<span class="material-symbols-outlined"> close </span>
					</button>
				</div>

				<div id="bar"></div>
				<div>
					<div id="text_join">회원가입</div>
					
					<form action="<%=request.getContextPath() %>/join.do" method="POST" onsubmit="return mySubmit_join();">
						<input id="mem_email" name="mem_email" class="mem_email" type="text" placeholder="이메일 주소" />
						<input id="mem_name" name="mem_name" type="text" placeholder="이름" />
						<input id="mem_pw" name="mem_pw" type="password" placeholder="비밀번호&nbsp;(영문과 특수문자를 포함한 최소 8자)" />
						<input id="mem_pw_recheck" name="mem_pw_recheck" type="password" placeholder="비밀번호 확인" />
						<div>
							<input id="join_agree" type="checkbox" name="agree" checked/><label for="join_agree">개인 정보 취급 및 이용 약관 동의</label>
						</div>
						<input id="join_submit" type="submit" onclick="join_check();"value="가입하기"/>
					</form>

					<div class="join_error_wrap hidden_visibility" id="error_message_join" style="display: block;">에러 메세지</div>
                                
					<div class="or_container">
						<div></div>
						<div>또는</div>
						<div></div>
					</div>

					<button id="kakao_login" onclick="kakaoJoin();">
						<img src="<%=request.getContextPath() %>/assets/common/cstm_img/logo/kakao_join.png" alt="카카오로 시작하기">
					</button>

					<button id="naver_login" onclick="naverIdLogin_loginButton;">
						<img src="<%=request.getContextPath() %>/assets/common/cstm_img/logo/naver_join.png" alt="네이버 간편가입">
					</button>
				</div>
			</div>
		</div>