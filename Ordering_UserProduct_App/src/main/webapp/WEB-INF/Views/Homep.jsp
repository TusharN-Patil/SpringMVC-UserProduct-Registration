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
			<h2>
				<a href="load?view=RegisterP"><button
						style="background-color: blue; border-radius: 10px">Register
						Product!!!!</button></a>
			</h2>
			<h2>
				<a href="load?view=UpdateP"><button
						style="background-color: red; border-radius: 10px">Update
						Product!!!!</button></a>
			</h2>
			<h2>
				<a href="load?view=VerifyP"><button
						style="background-color: gray; border-radius: 10px">Verify
						Product!!!!</button></a>
			</h2>
			<h2>
				<a href="load?view=DeleteP"><button
						style="background-color: green; border-radius: 10px">Delete
						Product!!!!</button></a>
			</h2>

		</div>
	</div>
</body>
</html>


