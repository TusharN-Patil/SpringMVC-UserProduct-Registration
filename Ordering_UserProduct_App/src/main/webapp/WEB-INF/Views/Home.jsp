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
	width: 60%;
	background-color: aqua;
	display: flex;
	justify-content: space-around;
	align-items: center;
	border-bottom: black;
	border-radius: 15px;
	flex-wrap: wrap;
}
</style>
</head>

<body>
	<section class="div">
		<div class="div1">
			<h2>
				<a href="load?view=RegisterU"><button
						style="background-color: blue; border-radius: 10px">Register
						User!!!!</button></a>
			</h2>
			<h2>
				<a href="load?view=Update"><button
						style="background-color: red; border-radius: 10px">Update
						User!!!!</button></a>
			</h2>
			<h2>
				<a href="load?view=Verify"><button
						style="background-color: gray; border-radius: 10px">Verify
						User!!!!</button></a>
			</h2>
			<h2>
				<a href="load?view=DeleteU"><button
						style="background-color: green; border-radius: 10px">Delete
						User!!!!</button></a>
			</h2>
		</div>
	</section>
</body>
</html>