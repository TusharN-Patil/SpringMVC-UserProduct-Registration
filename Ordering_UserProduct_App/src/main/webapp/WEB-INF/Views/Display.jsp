<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.div {
height:450px;
	display: flex;
	justify-content: center;
	align-items: center;
	
}

.div1 {
	height: 75%;
	width: 45%;
	background-color: aqua;
	display: flex;
    justify-content: space-around;
    align-items: center;
    border-bottom:  black;
    border-radius: 15px;
}
</style>
</head>
<body>
	<div class="div">
		<div class="div1">
			<form class="form" action="verify" method="get">
				<h2>User Id:-${user.getId()}</h2>
				<h2>User Name:-${user.getName()}</h2>
				<h2>User Phone:-${user.getPhone()}</h2>
				<h2>User Email:-${user.getEmail()}</h2>
				<h2>User Password:-${user.getPassword()}</h2>
			</form>
		</div>
	</div>
</body>
</html>