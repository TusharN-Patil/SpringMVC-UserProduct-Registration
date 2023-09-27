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
	height: 75%;
	width: 45%;
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
	padding-top: 90px;
	margin-left: 50px;
}
</style>
</head>
<body>
	<div class="div">
		<div class="div1">
			<form class="form" action="update">
				Id :-<input type="number" name="id"
					placeholder="Enter Your UserId!!"><br> Name :-<input
					type="text" name="name" placeholder="Enter your name!!"><br>
				Phone:-<input type="number" name="phone"
					placeholder="Enter your phone!!"><br> Email:-<input
					type="text" name="email" placeholder="Enter your email!!"><br>
				Password:-<input type="text" name="password"
					placeholder="Enter your password!!"><br> <input
					style="background-color: red; margin-left: 50px;
					 margin-left: 65px;
                      border-radius: 10px;
                       height: 27px;
                      width: 80px;" type="submit"
					value="Update"><br>
			</form>
		</div>
	</div>
</body>
</html>