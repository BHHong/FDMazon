<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="refresh" content="3;url=/fdmazon/signin.jsp" />
<title>FDMazon</title>
<link rel="stylesheet" type="text/css" href="/fdmazon/styles/fdmcss.css" />
</head>

<body>
	<header>
		<%@ include file="header.jsp"%>
	</header>
	<div id="container">
		<div id="sidebar"></div>

		<div id="content">
			<div id="content1">
				<h1>Sorry ...</h1>
				<h3>Incorrect username or password.</h3>
				<h3>Please try again.</h3>
			</div>

			<div id="content2"></div>
			<h4>You will be redirected to sign in page in 3 seconds...</h4>
			<div id="content3"></div>
		</div>
	</div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>