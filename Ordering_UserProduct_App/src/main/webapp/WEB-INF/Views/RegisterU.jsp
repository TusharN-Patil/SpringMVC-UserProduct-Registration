<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.div {
	height: 450px;
	display: flex;
	justify-content: center;
	align-items: center;
	display: flex;
}

.div1 {
	height: 470px;
    width: 317px;
    margin-left: 80px;
    margin-top: 134px;
	background-color: aqua;
	display: flex;
	justify-content: space-around;
	align-items: center;
	border-bottom: black;
	border-radius: 15px;
}

.form {
	height: 60%;
	width: 65%;
	padding-top: 0px;
	margin-left: 50px;
}
input{
height: 25px;
width: 160px;
}
</style>
</head>
<body>
	<div class="div">
		<div class="div1">
			<form action="save" class="form">
				Name:-<input type="text" name="name" placeholder="Enter your name!!"><br><br>
				Phone:-<input type="number" name="phone"
					placeholder="Enter your Phone!!"><br><br> Email:-<input
					type="text" name="email" placeholder="Enter your email!!"><br><br>
				Password:-<input type="text" name="password"
					placeholder="Enter your password!!"><br><br> <input
					type="submit" value="Register"><br><br>
			</form>
		</div>
	</div>
</body>
</html>