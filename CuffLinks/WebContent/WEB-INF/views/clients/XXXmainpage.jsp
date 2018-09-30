<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파트너스로 로그인 한 페이지</title>
</head>
<body>
<!----------------------------------------------------------------------- top 시작 -->
	<header class="header">
		<div class="ui">
	<!-- header 시작 -->
			<div class="ui">
				<jsp:include page="../common/menu/headerMenu.jsp"/>
			</div>
	<!-- header 종료 -->
		</div>
	</header>
<!----------------------------------------------------------------------- top 끝 -->

	<div class="ui basicspace"><!-- navigation menu와 여백 --></div>
	
<!--======================================================================================-->
<!----------------------------------------------------------------------- main content 시작 -->

	<div class="ui container contentMain">
		
	<!-- main content insert here -->
	
	</div>

<!----------------------------------------------------------------------- main content 끝 --->
<!--======================================================================================-->
	
	<div class="ui basicspace"><!-- login title와 main content 여백 -->	</div>
	
<!----------------------------------------------------------------------- footer content 시작 -->
	<!-- footer 시작-->
		<footer class="footer">
			<div class="ui inverted segment">
					<jsp:include page="../common/menu/footerMenu.jsp"/>
			</div>
		</footer>
	<!-- footer 끝-->
<!----------------------------------------------------------------------- footer content 끝 -->
</body>
</html>