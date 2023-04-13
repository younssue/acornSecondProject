<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%
   request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${contextPath }/resources/css/mypage/modInfo_style.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="mypageBody">
		<!-- 사이드바 -->
		<div class="mypageSidebar">
			<div class="profile" >
				<c:if test="${member.profileimg == null}">
					<div class="noProfileImg">No Image</div>
					<%-- <img class="profileImg" src="${contextPath }/resources/image/noprofile.png"> --%>
				</c:if>
				<c:if test="${member.profileimg != null}">
					<img class="profileImg" src="/image/member/${member.user_id }/${member.profileimg}">
				</c:if>
				${member.user_name } 님 
			</div>
			
			<div class="mypageMenu">
			
				<a href="${contextPath }/mypage/modInfoForm.do" class="mypageMenuHref">내 정보 관리</a>
				<a href="${contextPath }/mypage/myArticles.do" class="mypageMenuHref">내 상품</a>
				<a href="${contextPath }/mypage/myChatlistForm.do" class="mypageMenuHref">1대1 채팅</a>
				<a href="${contextPath }/mypage/dropOutForm.do" class="mypageMenuHref">회원 탈퇴</a>
		
			</div>
		</div>
		<!-- 본문 -->
		<div class="mypageContent">
			<div class="menuTitle" >
				 회원 정보 수정
			</div>
			<div class="menuContent">
				<form method="post" action="${contextPath }/mypage/modInfo.do">
					<table>
						<tr>
							<td class="modTableLabel">아이디</td>
							<td class="modTableContent">
								<input type="text" placeholder="${member.user_id }" readonly="readonly">
								<input type="hidden" name="user_id" value="${member.user_id }">
							</td>
							<td class="modTableLabel">
								이름
							</td>
							<td class="modTableContent">
								<input type="text" value="${member.user_name }" name="user_name">
							</td>
						</tr>

						<tr>
							<td class="modTableLabel">
								비밀번호
							</td>
							<td class="modTableContent">
								<input type="password" value="${member.user_pw }" name="user_pw">
							</td>
							<td class="modTableLabel">
								비밀번호 확인
							</td>
							<td class="modTableContent">
								<input type="password" name="pwcheck">
							</td>
						</tr>
						<tr>
							<td class="modTableLabel">
								생년월일
							</td>
							<td class="modTableContent">
								<input type="email"  placeholder="${member.user_birth }" name="user_birth" readonly="readonly">
							</td>
							<td class="modTableLabel">
								전화번호
							</td>
							<td class="modTableContent">
								<input type="text" value="${member.user_phone }" name="user_phone">
							</td>
						</tr>
						<tr>
							<td class="modTableLabel">
								이메일
							</td>
							<td class="modTableContent">
								<input type="email" value="${member.user_email }" name="user_email">
							</td>
							<td class="modTableLabel">
								주소
							</td>
							<td class="modTableContent">
								<input type="text" value="${member.user_address }" name="user_address">
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								<div class="buttons">
									<input type="submit" value="수정하기" class="button">
									<input type="button" value="돌아가기" class="button">
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>